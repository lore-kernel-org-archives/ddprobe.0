Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3685422A7F0
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:50:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778464234; cv=none; b=eIapnuMOD+dF8HyhJ5DeapIw3Y8L89K+a6WVAcW+J5C8g5TeibA91HuQ3H5DiPMSqnMx3x+wZ6y1/hShcxbDjiskxJ+un/Nyh3nTevDM1hMIHxxpp+JhAa9qKLa7aYJxAGzvruJzZ3YcIfwShsQ8gkknTJltc7GMektsyew0kOE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778464234; c=relaxed/simple;
	bh=+CRFttjRgA8l1PZrW+AZ/c7J/E2I8RU1xlmfB2PptNE=;
	h=To:Subject:From:Message-Id:Date; b=Ybvu17v0vPZrbVjPHWjPt0iv5lMSI0qaFxrsYHXfxTehc1sOg5Sp++Tc/+2fOZQTzQXNOqUFxXQ782yNEVAVI34ZtU6zW9AoYjtljPBdv4/aVWKq9TMi5ao5shVyFX4w39Nz1fXHpT8SQ2GPEW+tUrXPKM0qd6BFdNNKXPG9JfE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kPknzEhY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kPknzEhY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC154C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778464233;
	bh=+CRFttjRgA8l1PZrW+AZ/c7J/E2I8RU1xlmfB2PptNE=;
	h=To:Subject:From:Date:From;
	b=kPknzEhYjX8P8hFXEL0f9Lw6K+hf4chw2qEyFsQ/JTf1IWJ8rXEIKPwqG4UXXYXW7
	 JVVs5pkqOFT9yoGuzQrNVp7an2CtJKdYOozy+kxcP0/wi0k1bPXCMV2JWa9mTM7Mow
	 KHSxkIEdzLzW75gladfoW6TdqpUEp0zuBZZrgw/R8q5SIf2eYKECxnnL8XdsFuLCZm
	 zWVrJMWNfXwZT33XfhCZxUFzSh/FtosNsrXCM0G841y3ZG4j+57khbc1/dhVj11dyI
	 wBmTgrDfSYGtvXXwPpUeZQ5ClJs4U4gVpOWrJj42X2t8P0wTKEP9fC1lgqXTXBajSK
	 IyyQdGi4eibMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA236CD3427
	for <ddprobe@lists.linux.dev>; Mon, 11 May 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177846423368.13761.1294524710905255982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40f28e837c52a57c399b068f120f2964cb876ecda1a7ea91b74c4537a4bc542f
Date: Mon, 11 May 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778464233
