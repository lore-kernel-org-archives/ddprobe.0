Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F6942F32
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 16:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744561194; cv=none; b=a+XjM8ilJn7d3OFCsAfwdE0m7UyPUttDHugD2v8tQlkdmXYmi6zY+xncqzgjBnqrSjH0pDaZf91umQhCyi2UwfPrrX0Si5lfNZL8A6B4s9KiGkJdjg44MIOGC8qOIC0GGEWBD6cTOGXX1ZYvFz4lJtD/LR8e5Yb5vSIBYju2er0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744561194; c=relaxed/simple;
	bh=f40xRlBn8B/VP1xWvwJciKYeDBn/mhWDCCutiwWRjB8=;
	h=To:Subject:From:Message-Id:Date; b=DMq7y8VNWtKeH8P1w4RcEKi63goSJDsy6cezqkrNqiljfTiSxkvql82MkCrz+Q69L1nPGDzIoKBK0kX4PHPucRC5Dw2/Gxr/E4j52hYbACAxuEdVscbkKlgTO6zDarFKo/Az0+ROjas+EuqKvCfnFyyLwQtxNm51BICpbe597QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sSSbst11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sSSbst11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1A68C4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 16:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744561193;
	bh=f40xRlBn8B/VP1xWvwJciKYeDBn/mhWDCCutiwWRjB8=;
	h=To:Subject:From:Date:From;
	b=sSSbst11IM/wUy21+p1EOzpQMwZyxkxbaR3lvqb4XUVieiepghcJs9lJ5Ez3eVQeU
	 WNnLL82poLDo7+4hPkrbuVDS8BdjLgXahptYQLHz8qKwwjAPHcl03ZAhCyyJjwielH
	 Co+VEKtdyHPlR0ELcLD3r1fvJo/1q8ZOg+DPldz1r/ZVEt5QRGjJd32nz4hGMJOTuo
	 5SAXgKxxmrWiT8nPRTUDj/duCrH2bhAlkZjr21E47K5VolaTtdBaobnwVr6WBafzK8
	 6TKmvy7iQX4k3i4KUV/Vw3e90RYdTOrExNP4hDftAsc28Y0UkITuZ0s4CPceGuutl2
	 rJogvL3keV3Gw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AACB2C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 16:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174456119362.30206.223816396972915760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43405685768ea9710995eae539189e65f4d99588cbc9f328ef1c8b2d3d6012c5
Date: Sun, 13 Apr 2025 16:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744561193
