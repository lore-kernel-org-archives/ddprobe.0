Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EA426C393
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745360395; cv=none; b=ObpWZ/oaM9PZTeJ7UxpAyoKXclPKtkjElCprt8XXiwLvnNYDe1SRjjVahw9ZzLdTIaa/Q6MtRuSpn2Whb+PUvH9PESAfWX40BeMAaC90Gf+Rt9d6Nar9UT48TudL/ZgGJYgX4IbWro5nFuVMQme6NayIdXnkpWdA0xejbNypDm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745360395; c=relaxed/simple;
	bh=xdMKf4fPg6bgTzoxvv4wD566r3/VXGDHl/BsX21SoMc=;
	h=To:Subject:From:Message-Id:Date; b=c8ORvEIOn9wEm2i3gLa7X8DnTQbHied4HWKiWuTSF6kijxQv76honeknoyBXZ+awBlbT18HCfZEjBoDMxmGn80KdQokNC+QVb43c7N5plAH/MBdBp8JoM3H98tYKFG1IquyutWnkSOhbmG/y0kLSApoI5RHgIHcLkwT0/S2f9vg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ea3uztel; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ea3uztel"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49A4C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745360393;
	bh=xdMKf4fPg6bgTzoxvv4wD566r3/VXGDHl/BsX21SoMc=;
	h=To:Subject:From:Date:From;
	b=Ea3uztelg6KCijk1uRskaGTHfqepLcb9CjWjuRluduGSP4vG4Ayur0kYEqSKDRrgo
	 gcq0QkTZoqTWs0pZQJmDSd66IIHWGGx6FhFqF5jirrQTHuLr0Eb4MDciks9rl+Q3Kf
	 p7UbL/TVd7VmNidkxd33hdH1K6fJ7S9042NwMUZSsk+LwpFSocAJH2Hdw4i3wesao7
	 Qj+K7mDulMqjqdARYYvJ54i4IndWEUrUqMff7rZxFDTVEhj1PcwZp+ATB6e/gxxWI+
	 b/2JKdgOGT29tl67EEtcEVrPsDKjvDJFlVnMCegCBi4nHeUgCL9SIBRcmCfphQkrZP
	 k3UJQfFeo1/MQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92316C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174536039358.25327.2987450340376741183.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ca1b584c0fa4effe78b746bc61619040f8f2468210b1318c3a9c5a84f5a453ae
Date: Tue, 22 Apr 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745360393
