Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60B11C8EB
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789264234; cv=none; b=U+GXZ2jTo/CR7/jgDF4T1QDxptMIw1pDlgbV6LdsAyBjTeSZ+v573yAFy/cgjFcrKcsiIwCfybowb/BX9g6fA1vWAZmP/FO3s59ceiM9ON5FF5HaA9R+iyLnu8TagGG81zEZ9j7tWyqrGX/oNtuGCxvUtYXz3hdLMAGDqos1l+k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789264234; c=relaxed/simple;
	bh=VGgUI0teml7X3Jx4/A2kJWCPO3hQCVAqs+T4kFDvgtE=;
	h=To:Subject:From:Message-Id:Date; b=UX3x9xgPfgqSqzE436PhoKKTndRLAAo7HIszJa60NajhJqYSvhpt4zN+4wRTOxIoK5Gn/qbwccwi9uWKeNcO0TRVYPOsgcaFcYrSmW86umEn6h1F2iT/I/e6zW5NReB3v/gTm2WdnEtr3zWqCHKaewZQiUhiA2peFbcUetBBHm8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H2Vynuha; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H2Vynuha"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCE7EC2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789264233;
	bh=VGgUI0teml7X3Jx4/A2kJWCPO3hQCVAqs+T4kFDvgtE=;
	h=To:Subject:From:Date:From;
	b=H2VynuhaoDl8KT4VM/xKQeT2EiX0LIjYCavSQsiEfMVj/4/caElEnjLb3dnQNU3Ed
	 Zw3nMvZfCNyE4Y+7jv16C4Gp5lQMpM/T9M9uq2AjMeHPCcd1YjJMlKVCSfUxQ6Ez7U
	 JkKQxEuj3WcnPiRCeWVYZD8cmuW2CyMr3r+kwv2iZQfOFSW1h8T25trPc3jnpz7bcf
	 A/CR4GFAcd1uGXXkP/U3m2GzA8+iB9liwbZ7qB4VZCP+3KshvHqko09ggTre3ihREp
	 GMRR80lC/H0slxh9RpRQld5hHIs6Hoa06rdw53fwyoGhRHj6u+MtBJdGsPHkghZE/f
	 QqDRbNBqBCaqg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A960AC88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178926423368.8228.7777846865999162234.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af037b97990be662045d8cf9de4752b777ce44ca9423392578aa161799bc2ad7
Date: Sun, 13 Sep 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789264233
