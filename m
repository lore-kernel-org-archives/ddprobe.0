Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3286234CF5
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754713194; cv=none; b=D8slumZeBKsv5Im3AcCaKTCn/HX9vZnqOeUwGfo1kCZP+5pgrkPyvnq/QwG2dpW8YsW2owImjtcRyiit3fd64lfQASNWasbPbBL1HcpicfRrSfysMXZ+IHbDNZigtTx7Jfyxxon1x0UbfxungTkrMHHjm/D7b0P7ogxf/bem0tE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754713194; c=relaxed/simple;
	bh=ZqZ4GP3gZwV9SUkX3eerY0j7uWEGVXOURotDMb21lvM=;
	h=To:Subject:From:Message-Id:Date; b=DJaDpzlZM21U4oninmMryf+81utK22sPjHVTgFpzrZ431B8QKw/e2OjE0DawkQ93f5GWdPwDyCp4Z6YnmmAdc0Tj+fiU//ZFXIOXBNfNtnIDvmsKo37LBFAOaI4ZMdRjry8kXrjx6YQON/pxFi5bXQCogOv3SNk2C8vpnA5juPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FliD8VMN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FliD8VMN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A822CC4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754713193;
	bh=ZqZ4GP3gZwV9SUkX3eerY0j7uWEGVXOURotDMb21lvM=;
	h=To:Subject:From:Date:From;
	b=FliD8VMNkUAICXjXuG0PAHzseDcxCLM2dKSJH3AD+giSrP4nBZj4gjTG2MUnmIf5D
	 EdH8MvYW4/A1e60s1qN8fqGD9NgXm+PeaZtFIlN9WiPaR4eJ1xoxb1r0B20sdiuFlX
	 fVbDLwWPtYDmRU4zBzD9JNuWjTWcpljsLtzwsX2evfbAltrkbgv2BaDI7Em4Wo7bS1
	 8UBx5iSmNBk9JcJSw8nBY+UiIysMln3qRCFkeQOhmvhE+lMcbWhtFpX+adyjkCVxkZ
	 hqdUtNI9eOLM4RMzw2esy2abZkanvi+RR7BY3euDLH3OBQSICDUQ/76tsnxirjEVyi
	 FBvW0motoOWvw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 984B3C87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 04:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175471319358.23786.12301898407088935341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43aafb6568ab7d5c0da3f4991c186e1f8a672d6f42b8d4df3b5b3727f7ff12b1
Date: Sat, 09 Aug 2025 04:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754713193
