Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EA1479893
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791197434; cv=none; b=SZXhJ2Hq+XXK3hUMIRiMjhZU4riDW7Ix8ovQIoNebJ0Y0JINaaP+8IyQ4xael+mL2tbQiqR1HJA1nBFbLY26n4rVJoZPQBw4Q51EtaxLUWmQvHrjJXOIHdD/TNHTrwhE411f2P1RyEYC/QOAbLio6WbPDTcL/v6wVafMPUoQRaY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791197434; c=relaxed/simple;
	bh=LN+LoyZYRl+1P2TLJd6QJy0x/EbjqxATc+RTK6kBj3U=;
	h=To:Subject:From:Message-Id:Date; b=qJbfiC2LQ+oJ0e9ag5P8sBmIyL0o4vVYeLOPLEQCCv/0T1dXi+BUL3fcn4GffQFt8nG45/MZiBkmuURC3gTYR0y56VEanclE5bJAO9mDdzPBP6weHqqkSg5vcDkHMXB5biRPOpaLpZzbspA24cTIR1a9hekxZqOksDMRmTdrYEs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t8foClO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t8foClO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA133C2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791197433;
	bh=LN+LoyZYRl+1P2TLJd6QJy0x/EbjqxATc+RTK6kBj3U=;
	h=To:Subject:From:Date:From;
	b=t8foClO1UkastWAsulXWqCIKIW666G9wkFokLfhMbxj46k4ZGR4PmmMjKaEVIcJlv
	 9jzm/UK6Slo0qlpA+1yzDGhDej5xcJA0dtUtETJesGEa2EDrAdxL52QMm9bepuHNrN
	 SasoIljEk4lrZUrfSKhUa7qrSJCNMRQc2yUmw1YPR86yhI03ZXkF8cfZ84Cl33WZeF
	 jn2u3UPyPVItbRRdVr1A7rr4FLiia7z/qTg8ZcCe/R3i89Ejhy6iabCYORh3n0SW0Q
	 U1hyexx+mq5Nh/u5R4/3vH1zo3Iys1fDuW0Qq6IV9CR94HyvpLnJocCxPQfG5TpfmJ
	 6ifIiFzOkBHNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E8ACA5FCE
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 10:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179119743368.29974.8395503282378838692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a8f9b7a25ead96515823f8ec7bea86daa72927e8a31764b4e36a4016e93cc52f
Date: Mon, 05 Oct 2026 10:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791197433
