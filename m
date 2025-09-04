Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E7193064A2
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756994994; cv=none; b=Leih6toleR+ydb6XPQ3iMbIfXlzEb0jQm5dKQdbHIo6r+nvvmuAr8A2n8JSaFxmHFDbmNz3Bwiu68jzOQu2FZ+Um05/zAxwNvH2JJS+BXe75pmQN7fRY0DbhNs9zR/PessvF76YNffJBfBF+LUSicJYnThuyg9zOJEjZgx0wYmI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756994994; c=relaxed/simple;
	bh=KMwQ75+foWyMDGb1uGz69MgVzu/gkD0djkQ5RQDZVLQ=;
	h=To:Subject:From:Message-Id:Date; b=YDwY2qSOGUcaIUNFs9fLdnCzltavpzfnb74Aacn74ocwIXysjOx60DkYmBJFu2TDi2xD2fAvLt2EbvsPVDtA9MlKF7kLAyvmomAlAoBhfsFcEBrstPPmGtZThpgLaWiV0I5uQHLfv3tRqTOPtmNnnV0UapwbfpRIXj+iF6jNLqo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A++ocR4n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A++ocR4n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3CA3C4CEF0
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756994993;
	bh=KMwQ75+foWyMDGb1uGz69MgVzu/gkD0djkQ5RQDZVLQ=;
	h=To:Subject:From:Date:From;
	b=A++ocR4np+8jwI6h4qcl+MKAXPtreDVmCbeqbm/yoXTxk4wyH82UxQ1qdvc5nYfU4
	 BLFILkCgkaimFAqzxTa25fkqA7yiU7QvVfHwCr7k5vfnKzuL3pzahAk5ab4eQ4bRNa
	 TPcf8ScXa9nwTSdrOsbYgwSrkIKIhafUcqEP0z9/5ULtaOtMyEqJFdATsdyTlkw4gx
	 wHhqYZ7+R+IfH3zAjWy/7wWPjcZw0URsFPnAO9C0ahtzOpCh/38x8BT7iTeVwcEUJC
	 As5gtvNOSL2OexIajoTmITcLMqPWp/bhx3oS36zBQYYJJWNt5fwdf3IM5EwIggatkS
	 Fb0y+/atCjaFQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C91CA1002
	for <ddprobe@lists.linux.dev>; Thu,  4 Sep 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175699499358.30703.9689810981797540474.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960d9d3b9dc7605e26b5c34c4e897e2659dfd68611ba4b8da6cdb731f5016750
Date: Thu, 04 Sep 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756994993
