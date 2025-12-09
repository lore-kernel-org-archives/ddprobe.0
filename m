Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 254251A0BD0
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765322574; cv=none; b=fDNNNwBk5ViCcc2d6jMB72GhbhYy5n5wSaSaZh8sA5HbI0gK/co0pxCQVew+iShO0gfvqEEePGkF7wi0NZzyiUCzK1Z//mKcjL3mqxafVyDJfqfEcXMi5IcsI3m/9nrl1blykrSAkkiulyoipm3uD11jCB3leJ7UojaAcg5nmJI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765322574; c=relaxed/simple;
	bh=8RTTmHqAvPSt2zbyeMyja5noZdW63f/LqHKjT81tAC0=;
	h=To:Subject:From:Message-Id:Date; b=pxcOMQLdMUYPHxsMpOXSlPsh7ZV0sA6Dh9KwvWk1HQATtM0ZI3vu4NaSs3wWz4nBfMq317p5rw7RgEFBMnkpdLQ7O18J85cIQHjvgGfs+kCsCzhZ673murJZFTtZs9P2KYtQTylG8JIOsiWfiUlcwESbUYDUj/n68y+Jssm3iDg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AY7b2hCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AY7b2hCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8BEC113D0
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765322573;
	bh=8RTTmHqAvPSt2zbyeMyja5noZdW63f/LqHKjT81tAC0=;
	h=To:Subject:From:Date:From;
	b=AY7b2hCr638lCHxgIP6MYJ2WEVwjPd06FgSW8T+uMdzQShCNDoYGgy1TP8peWyUAq
	 Y+Hk4ySGNCV9vPGUfael+ETQTQqoTNvYAEvOLPEbjv8MFqUz+Vneq0iSymY57T5C2w
	 da6c9IJJ8Q+lE9ZfctkRYcblExqMtPeO3zsOKaLqNwYcw6IWMMx1aHigpBBljyXLaG
	 opvL5ksVgtjreEa4NW5qEDddBNI8bddQZ7u6ED6S+77FF2n+6BYzPSPdP6rSt5lrV0
	 xYLQVZqyCDP9JcEe4PKCqi5VDXA5SsMD7KrJi8MSVaFb1N9Ss3ql5Pwx3JTuBaaIPe
	 9OJ25ifSYJwwQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99088D3B9AA
	for <ddprobe@lists.linux.dev>; Tue,  9 Dec 2025 23:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176532257359.9022.17234346940644314558.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ddad530f8cdd8f1a1e0a53d761655d21feaf4062e85bc890f5850849b129ebfb
Date: Tue, 09 Dec 2025 23:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765322573
