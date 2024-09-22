Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134B01A28D
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727043954; cv=none; b=VyWPIeHAZFgTSGvwCQbyZb0aQ9WNTan5kygOvg+nAbKrU2ghQIVSxg4cRtTs2XT8aAnHtasXLQHsxaG++yqMjCoYIemd6hpyRrmT/bHThWesS00YAFaUlFWMv+jw+8ZJEMRvapsq3zP24xYCcJs7DVWcANWIKpdLp8xDr6wTaRI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727043954; c=relaxed/simple;
	bh=FWB55yas+aX9Iyz0SQpHpsRwQJFZjLiHpvN6MffWdmI=;
	h=To:Subject:From:Message-Id:Date; b=K0eACtxQqsRLru4N6YOcQMox/ETAHUynYD040xcQlTl4/GAVqNOTzxBA58wyK7+DY6J/p8S0rTsqlXzEokDRiKadMECqCtuureqghVElzm+6++mEOXRTWeCOpsNFxdi+KolTrsYZrlMG1tMk8fqqy2+ygZTrd7of3Tz6kh+HfvI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EUQ+RJlt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EUQ+RJlt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD57EC4CEC3
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727043953;
	bh=FWB55yas+aX9Iyz0SQpHpsRwQJFZjLiHpvN6MffWdmI=;
	h=To:Subject:From:Date:From;
	b=EUQ+RJltP+ssSUG4440Wq0YTiy7d6kfCN5TqLZFOlhQqeRB2i6qK7jzHYTWHBgVcq
	 0WZO8prdmiOX6xItIj8vPazOc4NrHD4nju4RzQYmzU+oH9K0sciI1XS5eymD8gb4Wb
	 yQnSWiePHv3Da16RA+YAgtAVMO3dNx3N/T+gL4PCaP2ELyYx9y89VDGIwfSBTlvhpe
	 BkM+IRPSb/ezG+pcUZjgOR0o59U5TvHlzNpdxbQUeSW3a5xd1MzdlTHF4nswTfsyVD
	 blql/rlq2j8IF+Bo4BFEXTLZfLgLC800iQpOEUBmCHsLYlGGkQfFnfkQzIIQC4/WQY
	 wg5+OoV/LsE3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97651CF9C68
	for <ddprobe@lists.linux.dev>; Sun, 22 Sep 2024 22:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172704395359.9511.11832078475091510555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7fbc8d8badb5fd1f37a829016c6902b57c17b14ea88b6c5677f08a00548257be
Date: Sun, 22 Sep 2024 22:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727043953
