Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 586A018E750
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742123994; cv=none; b=CIc4QfO2jNTIv0HxVYWxbl6SHP7t6HU3GlUUB80mVwV6YvRTF+XArkYYxYK564RMNonfFCFdTIXtdrgkDtyUfL2KPtzexUcmAqy8RsqFbG6RQCyPMOnLdBIfdLYxd6UrxCCLfZ7nHuoUtoCkO3a/x497bGEP+RYzt4hblTKcuAc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742123994; c=relaxed/simple;
	bh=KtSGwvP9qnHndESAednCxWnrxUuNx3+id6QBvJ2Sv+A=;
	h=To:Subject:From:Message-Id:Date; b=UbfyvVyyCl43kdiPLyOPCmzzO14xOEjSsAhjuU1+FE6ExiQ8GMjO0LT7ZYlWp2xSN9m/r+LIylqOmwBtorIHfErh6JvUa4/5pKZDGaXLAPbbq0hdWgaYTWkpIRVeDXvdNAtCxN3LTrhZ+AYdebra/9IFNKRFqTMjP77kdHPrNLQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VpewBhzs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VpewBhzs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D35A4C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742123993;
	bh=KtSGwvP9qnHndESAednCxWnrxUuNx3+id6QBvJ2Sv+A=;
	h=To:Subject:From:Date:From;
	b=VpewBhzsUpOTb2sBv2Sux+iBva76KNRuuZjoAm/Y+Cd2g7/8JUIYoAzipErE4xKoj
	 bH7EaOJ0n6gXuRNftGmkHDLudC4ZnPCea34XMCc3zrkVHjfedrfFa7y3fr4BAEeb4j
	 Vw9j+8tIxss6ugO470Vwx5qTku6z5uPJA6RBUVn08/dpYiMz7AYFCB3lLP+ZxDpnQl
	 1M2p6NsHJ7zEq337PGRVGCOFlyKcpiqYnhhI0olpbLt1DPV7H0z0dXZUrpw59LDLBe
	 QO6PVjCukEC4ECh+llqmAyqtIIng6H1DhjNawPP6+sk63UPcyukpIJK+h77xRKwlSS
	 oMaVpW4owsQgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B80FFC282DE
	for <ddprobe@lists.linux.dev>; Sun, 16 Mar 2025 11:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174212399365.2526.9791265398490029987.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc28cd2dd05eddf1d580355975bcf6db5720e5994dae2e1cf0f924db85977f30
Date: Sun, 16 Mar 2025 11:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742123993
