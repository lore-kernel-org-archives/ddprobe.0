Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F9734430
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745402994; cv=none; b=hB9YXDcUCNZXK0FJZ92f340mkbFYeVxVEKmS5Nq7Fgqbfg/ioLggTshsvQ+ghkFScbNO6FEymmSewzUBsdJXB4b9Cffepetr3JXZMr/SlNY20oSSg0/mTGwzrcLG90Fved0xg9InNeM9ANAcRiuubGMiYfbM1MlCLRImcvu3BFI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745402994; c=relaxed/simple;
	bh=X1G1YnIqowc/b1N3jbDSnq/XKZ3Pvq7BAf61fW32blE=;
	h=To:Subject:From:Message-Id:Date; b=UgE8weKYM6U/rQ5YEQ4zeSQc1M+THOR1avh3bMbPVPHkopjwJzpRSuYydYPX79da0WU9VmPf73LQGU0mpdeRIv6P/PKxkTX3sDXHa/lfWhVRS5yLKe000qC66nwrHTnTO+2z72FTN0BfMWQyOOFvqZANyAtjzvHqxe/BKTDOtqk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r0+L/cEf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r0+L/cEf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F24C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745402993;
	bh=X1G1YnIqowc/b1N3jbDSnq/XKZ3Pvq7BAf61fW32blE=;
	h=To:Subject:From:Date:From;
	b=r0+L/cEf/Rht2lutykyKO2A/f4e1SBYNDPUs9aTJ2YaQo3kaoY2ahQ7f56Cl4NpGm
	 s8pCH2t1AgZsCxLFjcxvsTj/wuGkBwsIOyyW/us8wqGuE5nNl+H7SvJ3oSSOkJWTjQ
	 0YUWrfmAHD7JcDXmkWvg/6QjnBshSF/tQRlNafDcIyQdjruMtoaMw2brK+7z6LeB3H
	 0eD/c5da/x2wyoZEw2ErlavN5L/JGee7NDAnyfXelUKSfT3ccX1X4x/PuYgHK84xMj
	 78IXHXUDykDY9ibLc42X/X7z7QuMMwKMP6SMpF3IdvLur45KqWO1IlVYYad98e120J
	 fG6EJcs66ueuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F9CEC369D7
	for <ddprobe@lists.linux.dev>; Wed, 23 Apr 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174540299358.12352.2071687939063182419.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d1c126dacc94ba581c140d0e5d7cf6764cbc0a1d25dc0ac66cd7def161faaf4
Date: Wed, 23 Apr 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745402993
