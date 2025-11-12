Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1986C27146B
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762924194; cv=none; b=mjJPIX3a6wN6kusVFHpF/yKRLT5dIpPIeoiNbRzePg8sBGmGBqdSp1tSkcHRGgliSNNQqrO3TiUhBm0BWV6+kBTiExiYdk80J3bY9vOhog2oHl5rwGFvpst+SPVruzOjf/6yoC98pnCGX4JpaOOTGoHXDhWEUHblkjgQMrz/P3k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762924194; c=relaxed/simple;
	bh=aNgeo5NW64oiReTx2dsx3GRpEuA3txypAY+tw2dv/wA=;
	h=To:Subject:From:Message-Id:Date; b=DLL0d83AfBK6sgEWDYCNcDGj2zFsNbnyfZafm6sZAMN08l0mnbS5bD+GI5BQyEi6OgLVn9vyq9wzWwXk/tHfyb1yLuM5yroS+ciKLy8pbckA/AvI8D2KZSu9J/cQIF0ZS4j52KFXpG9V1syzofGbwCNo0pP2ax11SFzlNgidBJg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=c0NMeRw/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="c0NMeRw/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB259C19421
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762924193;
	bh=aNgeo5NW64oiReTx2dsx3GRpEuA3txypAY+tw2dv/wA=;
	h=To:Subject:From:Date:From;
	b=c0NMeRw/qaItgUMxHDrVVrEuMznKpqdX5VqqKK3lNbE2ws57feeuJ03FRkdW3uQxZ
	 LczpLzXO6N3C8bGkH4FEC5DVy5Zz6J3qoOCILdkgB00i+K7dy1tvcQ/RL4D0h+/KXs
	 Nr6IjQa02CiR3ILOGOembWMnEp6aDIwq0JRhXgQYSbHuDdmH+6yKVpQjnHa3nmp2Fx
	 XN2wCencT5rnP84Nbm7KYtuCOL9jzICbcfY9pRqvUOwipZVb9XBKcggIwMOgUfoLmE
	 ZuGB9SbArox45LUPKScfsstP1EEBY4p+cDusIHfYudqjqqQ46vJhs2aQa0IznGbZIw
	 CUL1zyTcpfZVg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96360CCF9F8
	for <ddprobe@lists.linux.dev>; Wed, 12 Nov 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176292419359.12064.7945570899147616968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e3c040a56e6cf321e448bcbe64aa56163a63f5a6e17acd972ba8a00389c8faa
Date: Wed, 12 Nov 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762924193
