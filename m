Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23C502556E
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741546134; cv=none; b=rOLXevhgWvMcSJyBTZQ7fNiGCl0OJ/AG2xH4j97RpmMfmoOzZakWgLawVhzfHV1mwpL6OpTwyBtSyskFhv+gqw6MqnU5RAjN1nEQDHSRXehndrCWdRWD2wR0lJbKh9xrXg4TLSQYS/OSpX771L1Ntmv/fmDuRmybvkP8vRNb4Xc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741546134; c=relaxed/simple;
	bh=IZphXGMMHXRdwzr3ge9eY3Ou/ZN6zNAehxsyvDRjiH8=;
	h=To:Subject:From:Message-Id:Date; b=DBWgzSKciGWQWiFWXLa9FAiwlGnavMiCe2C93zYJEa7J3cghDb109W+SdUYKfNk0a0/P6Eo9NxkV8YZP4ULAgLXcpaylv68VuzGaWsVmIbqir26S88EcDM0fye0FVsFu5DD5sCqlY/zDVaJKlbKL3m6gk45XZ5TYJnYJq5Gb884=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+8v6uhN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+8v6uhN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A15E2C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741546133;
	bh=IZphXGMMHXRdwzr3ge9eY3Ou/ZN6zNAehxsyvDRjiH8=;
	h=To:Subject:From:Date:From;
	b=r+8v6uhNndpH0QGcqpkiklAcvozrUV96wESH7dXvXJfHcZpcVSRkbTZzYS5r1Ad2j
	 kc3avAt/ZQrY/FqMIDTOeJTY2olwo/Bo5S6gtSrFMguUHH4yD5022gTgiCplKcUmoy
	 vFfOKma/zVzM0XiFTcJNg+AIqOkQR06ciCqsCOGjxwFA87/Ry4hkDhdAMuFey2xtzq
	 MnbzkVI2gsqjWwCmEEeBV4RW6BPK6ulT2u4sJcARCZXFs+1Ojxh2AaWyoQVzYk7NPo
	 sJgdq5viy3bQ3RugJDvLOw48ACiPpqTymPToxkM5GA59ywy6cq3hThrNBZwd1Bx6uw
	 Wv9gTNG8AtXgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9439EC28B2E
	for <ddprobe@lists.linux.dev>; Sun,  9 Mar 2025 18:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174154613359.7114.10519867380130733775.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43a9a18e918fa11637e5a0975a2e9368629b446e5c424e09609e9ca1d9ca3174
Date: Sun, 09 Mar 2025 18:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741546133
