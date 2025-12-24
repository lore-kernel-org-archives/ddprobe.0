Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23F5331AAB7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766546634; cv=none; b=U8wF7cuhaiU5CrSag7epNjcSfyYIgEk81KRDcWtfWOQAyl78OQEHwHVdUQDPXeHtoABWBo+AvagQx3HMkhbuVGPNvp5IgP56C00jXuyMRbf4LihsYEC3yXg0Fpzxl5ln3X1ZjV7j8knpERTS29R1KDMxtXSC/OOee8Zd+PJrKn8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766546634; c=relaxed/simple;
	bh=lGGngtuP1QBukxR1BvXvvBmYxlCWW4mWkfSPxeTLbUg=;
	h=To:Subject:From:Message-Id:Date; b=Cc2NcJOYfn01ArnsnSYUaf8NRDOFzxhBV5CYd2/z3AEKRc40A0PIjh2HgspXdjdB762BScZOdOcZ2wlsGTwBMrnaeAUSsJgNrt6A34mf7ecmAx15L5Y4V4x+u/GuCgYIsKVFAnZm4nlj/fkX1GfsrTI1MbfWBVnsnsDPsuIbPnw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GEG0HOyd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GEG0HOyd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3291C4CEFB
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766546633;
	bh=lGGngtuP1QBukxR1BvXvvBmYxlCWW4mWkfSPxeTLbUg=;
	h=To:Subject:From:Date:From;
	b=GEG0HOydIMpQ8s8fFoqZQLi/aHpA+4B807MRgIKUL/x2zxQtpHCCQ+7KEZ2zCgv0q
	 LP5mWTwSAfJQNf8IeCHk4gq5nF7ozk9INTiVz31QHaQcxOsC0g2FgF6oLsy1AIA4xC
	 0Se13cozVnb9KsUn0lljgYCoQvi3ORPZe7jRmzhTP8oXMrt/9ie0d/IYBPS4W1SBai
	 psKZtcWFfp2EiUyxIA9pdzTg5jZx0NpXqRwhJSlGzTI9P3IfBOycfoI2gRdrRrbK3x
	 zOublG3pKFcvmpoOdi36Bc2a4NdSFTuoTf0ldAPWRAO3QjqeRFZ0qIbpws14eLbZce
	 x3Ixm4WUJ9Q4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92279E74907
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 03:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176654663357.13522.14760915815378689402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f61c0ecc7b07107179f7ff20575b4336b42a9a49027c3c267074fb94c1597b54
Date: Wed, 24 Dec 2025 03:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766546633
