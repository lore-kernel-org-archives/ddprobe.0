Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C3276046
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726300554; cv=none; b=uNZj10KgQ3Z/qSdIHcttIRzsX06pJiQMgi10v3eYk85M3ci5lFnRkvYcjzlYFn3eeM5hoJGQHX8mKtSMWlVQXUFT5u0kilW/cFeR1HIUy2uXei6KV/i+1pYwHqfIpzzFQL0M6jnROo7hSt8N/J9hNPFZDqKjqXtV0lvkMqz7rv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726300554; c=relaxed/simple;
	bh=EOAm9vnz8xmNUdl56zQeVOkh1RcG62HyY8yi0eGlr1E=;
	h=To:Subject:From:Message-Id:Date; b=fg+PUeAmH8DcT2+DlJcByHkMBOzd2JMIUpCPpeNLtPZRO83Rm8/oftYLMwozIspXpGB5Vcy0nw3861xj9aWVDjtHNIsBYCeEtIKyZE7En/+y6q6U9m6XxX5389zDY55Wxqjd5FBqfQwvfFF1/T6ty2wfal/imU3n1wCRfbFhono=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ju0UBC5/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ju0UBC5/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAB6DC4CEC0
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726300553;
	bh=EOAm9vnz8xmNUdl56zQeVOkh1RcG62HyY8yi0eGlr1E=;
	h=To:Subject:From:Date:From;
	b=ju0UBC5/ERzQcF3GvxquPiNTePikG5HD5E3MRVQWK639xucn9RT5xL4YhmVQ7sapf
	 cscjK9c2PTL9oSjlwsiLLnVAvL9ZQMfiUPvTmQ+h691WSCy+0IuFzjwceXhCmXzCQg
	 N9ER09UvwGuCxwEfiGubj81Ys9pg+QPRIbu1lhcIzorwzoNxN8Hg6wFfOerzbFroU+
	 NXiRI8JaU3nhopy1v/HVEtqybTmwhkoRdv5W6atetWvm0n5Q737RpGGwbxYVGsm5iJ
	 anLIzqVUiQFptNSD0wdI/D2DnnGrV9NUAI/WW0H80wZxaPDWO1WLt4XwqNmRz+3vGA
	 38RAXRP0B2RZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 966A6C02180
	for <ddprobe@lists.linux.dev>; Sat, 14 Sep 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172630055360.29673.9974494123159847944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e66cab8e1ea77391d4ff278aec1d5c7abdefebfe6549b00ac8ac586cd1daec45
Date: Sat, 14 Sep 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726300553
