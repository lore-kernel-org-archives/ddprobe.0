Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314D12571DA
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780361074; cv=none; b=egqqZ7Xnq0+ErJn0M0j4BRVK+X5SJ5zKJYfVCsDxvssBIdLBgXMCbaiFOvUNlATAF++wM48JIsIACnMLYFkjjrDVPFBHrCUFJ03omYir5HIEqBPt3JxKTFmhEv/g/rbeYVeLH7TQlEvn/6qYl4SCxGEyeTBZ8RGLLCOHSRjcnKk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780361074; c=relaxed/simple;
	bh=dw2aqSjGo+y/8kbBGzvu75RgaW6BUZRWH8aZdZ14PXA=;
	h=To:Subject:From:Message-Id:Date; b=Fv2LXnUkuc+5SYb8iHaRXfHjo/xsWptC27XX7zF8QcEFdPf8KGKTYMZX6XATCZEl3qmNaBg5q/BTiGcRfb9W/sJDRTStNzldBza8IquZ+irbxQn/a90xi8PppSE+0Y/F8yj07R4GMtoWsnQj0XgjVFkSc/HBsggG9sG3n2UD16M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pklVOiVZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pklVOiVZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C22F8C2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780361073;
	bh=dw2aqSjGo+y/8kbBGzvu75RgaW6BUZRWH8aZdZ14PXA=;
	h=To:Subject:From:Date:From;
	b=pklVOiVZACVO1iRXuT819HDhKrvDPV2B1DdSc2JY70yLab62tgyYeTyz8tbMjLsia
	 m07njEuNcrXX9NlSmPwBn8jZiMSELnE5qr2/7ibkp54xv2tZufjTJojOJDo8a5Z2+p
	 xiXC+VQE5j4ITG4pXcWSLtXkq6XPuRMgQxnaS+UHPjgq/ywvT4ngDpkK8U7Opwngfj
	 V/dZg0e1sEpIbewIdOU7zPGxpA7aXt3fCG4kmsC5FKRFHbba9kIjwchIGKgj/pc43Z
	 AmQcAfVaUasIIonuttreYJfQhA8pSck2RoJn1jNh0dB4q9Kl7cth90u0M8CDa9ETzf
	 ZvRlReOuuSRtg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8671CD6E55
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 00:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178036107368.5823.12422484046186863908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7a21364476903ee2ce20592f61a0cf33cadc77508acbd604481a4d282aa07e3
Date: Tue, 02 Jun 2026 00:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780361073
