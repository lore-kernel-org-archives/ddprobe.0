Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 565D7143C4D
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:56:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720454183; cv=none; b=lUlmHWUNglULIJI/MI0TTst3NBzrUPX7wEJrBPOVr0kMuV//C0gN0WLhIOrMVuiHVaL98E+HEs0UHrgHEyaJkovwx/XqJD1CGezZugUccC9AWztYO0GfA5d0aOEFuvWphpGUgqj9v1Kr2qf/1+FXW5BEDVKf379+kWYeSZMbLqY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720454183; c=relaxed/simple;
	bh=+2GqPEF4SgOj8Zsrp506mPnfjD371g9rwqCL9GE08uU=;
	h=To:Subject:From:Message-Id:Date; b=bAws0AIF9nRD6pxZNwd1w/nBksRzpZwh2tjWGOmzWizqGPE4Uklg76rNzCeGohAs+vGj+a7SklSYofAH3BtfcbRHMAup+yKLtvCCTk3iy8EFsNkP693qsO/n/6jANpxM8/sns23KlTMMTlzL/hLgaFOfx6HyJ+dsi2YKMO4WKtM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X0PvW269; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X0PvW269"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CFF87C116B1
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:56:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720454182;
	bh=+2GqPEF4SgOj8Zsrp506mPnfjD371g9rwqCL9GE08uU=;
	h=To:Subject:From:Date:From;
	b=X0PvW26990PvmqbrHzRO/MHFgpZSc0aMmPY+7FKaR8IzSqgu+rXt622BF52fJWh8j
	 bC0kBNAnU8JFI+FVKpyn49OabSseiUBMDXrz81Wr0pb6/J1XKpgibQOc0AKdYcNvyA
	 6DhQ/YFpt28uqIAH9ayUybu3Ur2LxJ7qE2oYuLlOQhuFVL6B1ZvaifPa5h7TEB0QMz
	 F+SfJD8T0ymrD9hIYmf/ZG1hlkqjwQptG65uJOEbq/UtZ9901PDzcqVQR6b2MsvJpj
	 JhQaOKD6YAx/DzxcrGd/4Yy7jHmVFU29htlbmWHefMK5RWBrSbM4WEbAI5JxKulm+W
	 gw8tWIHMCpMBQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE565C3271E
	for <ddprobe@lists.linux.dev>; Mon,  8 Jul 2024 15:56:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172045418277.10347.13332051493357812725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9523997e29b965598521515fe92d94db769197d6b6e91bd2bde125871914ebd2
Date: Mon, 08 Jul 2024 15:56:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720454182
