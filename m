Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A709173
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750464595; cv=none; b=T5Xt+wEtGIXMc90PlTOK9E+dm3ofFHxlAoDexEBmJ8k799REd67T0UF95pYKDH/QEKO6nxc8aqwicOpse5SAbsLPe3ixrrrgP/89E/OljhE5R2xFaPMQYM4iSrWTElyTSMD82UepIYfTXAjaVINdck7Q0J0Re62Z9w+RcT0TCYM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750464595; c=relaxed/simple;
	bh=F6CNzV11eHVLDoHmGdhrhJzTT7RQwchPwEdSBVD2+r8=;
	h=To:Subject:From:Message-Id:Date; b=rbzgJyaBJfNmirQYrm+ySU6rjSS8NIOjX9a7oURCkqpQ1H0Fr9ZYsTbqfoRBsnXIepjOSd3DKjEKDqRYKkqijxxXhr+YBXkr2OxhnLRvkmcFdRiMiy5mKgUOpyStTBwlOQwvOoLyG/8p4cYd5iUEzDc/YQ33u6ve6XkV3/kqVOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O/a1D7n7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O/a1D7n7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B16C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750464593;
	bh=F6CNzV11eHVLDoHmGdhrhJzTT7RQwchPwEdSBVD2+r8=;
	h=To:Subject:From:Date:From;
	b=O/a1D7n7IfFvSvNdmOeeRkD8FuFZv+F8y8t6bpkJo4/TU8+W3zaCLdn8y3/zQnLg1
	 hIRgxlnVKsAkE17VK0OJCMIPiJoFCNU5UD7dJRWe3GaaVYgRxz647gR6eVIchsPWOh
	 UR67amfOLl5ae0X8Axi0rTBZAO07CaALpnd1PEh+dXkv2G2EqQnP27+PMEzmKKOg+t
	 iFOeQgY9KvBgTKzojbo2DaVTR+3ALRlYrXGiZK68f18pTSpluyYNjLblH1kQ0PG9JO
	 3SmaHRkvPPdqe2c/8fgBdCfS7vXjfa4MJwzqTeTk5wSNHch1CUUMqK04V9BNdX45xi
	 9GpM9uuxmcoJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EB64C7115B
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 00:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175046459357.18090.9916755039830468735.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4584740ce0cb5c137af9f8ce0e7f75b7bb2faa0f98d4134c17c860d6736e867
Date: Sat, 21 Jun 2025 00:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750464593
