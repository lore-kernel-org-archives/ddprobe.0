Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D4244279EA
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783960714; cv=none; b=J7jF1dX6SflnIAU2hG6riGbuODhEGugGjC0Qihqn8s6+h1Bbebsw8NVmMm6PsYPeKC+LyO2JEZHdAaPugAzLKUg0uJZqslxH3iKqKW/mMu9Lqr1+KwXK5oehEXs6NrJXsbzOibt9xMZq3VK3RwnTfr5P601tyaj0Ij63V/emEX0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783960714; c=relaxed/simple;
	bh=7DGsLUWU4aZ0zUV+XPR9Pz3TsH/cKfhTqHpotQ4oGPE=;
	h=To:Subject:From:Message-Id:Date; b=GmK1pdgOw2W/M1x9K39x3M/Fi53ua1vpxPO/kkWv5EaiYsQ1mX5flDYQFAu1KEpoI7f1SdkYDQoXAesWVU3AvONkfJqVv2Xy52Ues6qa0gFKitV/9cfgpmrhRzSPC3NJ8iqllLAnigDkoBkMdpI19ts3xhtS2ZHuCN7AdVHgkf4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKkNxZTq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKkNxZTq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CAE87C2BCB9
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783960713;
	bh=7DGsLUWU4aZ0zUV+XPR9Pz3TsH/cKfhTqHpotQ4oGPE=;
	h=To:Subject:From:Date:From;
	b=tKkNxZTqtqejSLHXIumPP8F/30W2aNw7i7HPCHoKwDQ8ewfESj7ite/yXZIDXZ6N8
	 1VGp4/slE7ZUHW3ykca0qeUw9jJCQZtd1dRg/cemIl1cDc6bZtXVlrpo9OS7QOWCFX
	 iDRmZ3PUbKsE+xAdJ2yuF4GlCZY9/RKEWPqT8asulqDaT+mFmG1lXxzPiaf1IvkCdG
	 6FYAeLinksWku7vL6V3p+NwHKCU66tSBX3UpwrRbxArdMcuKshJYxDMRa/P4WOUghZ
	 iXofYA2vAG3FdIOdvIFI3Zkuzo8xKYQ+gegd8onEX2H90Rwk/H1oby2toiw8I9EVJB
	 e/lW0OzI8M4jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9E8DC44501
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 16:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178396071368.21709.16654241521950733516.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c1e34a8c7fa5c82b06b78c775f366005f561eef9ebfc2c653f2573265908cbe
Date: Mon, 13 Jul 2026 16:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783960713
