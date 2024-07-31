Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AFF14A1A
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 18:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722449754; cv=none; b=FH7R3qFD5SuUzuge8hBTZmaMFSEvQqQTs2Bn+JIVGRLFgQbo2jTdmMwmZAatpPyVkYYs/vml60KcVYIKsZ1jP+dKPX/dWBYaGjFyi62fTmXWF3IWMia42AfpNmiIeQf7CeaWkKHJX7jxvRAhZf9DPa9k7C3KJs2WfXbdRJcBErw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722449754; c=relaxed/simple;
	bh=H/5EjGdYjB1Q/gx3ovic57zNYQvw3ajUNpWLJMKb2Sw=;
	h=To:Subject:From:Message-Id:Date; b=Nd2TyJDAXowfcrjYutgcE5hOL4DEzUaRgBkaD2Qtof7HqIo9r1haW3Hr6Y28lJGaM6vPzYHTPL5aRCE7XrHlbGyb+R5/gOucD/7v2LYIzd6el7aeJEsOB+hXtmzAzoizLy8h3dxc7NneW6JGkOK1AzgpKgbK3dEnS8/PjoN+DVE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xi6dx5ct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xi6dx5ct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A60E2C116B1
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 18:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722449753;
	bh=H/5EjGdYjB1Q/gx3ovic57zNYQvw3ajUNpWLJMKb2Sw=;
	h=To:Subject:From:Date:From;
	b=Xi6dx5ctZ6PWhz378BrgG9S2uL2yJywo3pEMRjYs5JLI1Adyj3Fq2gwhFsGC53kpB
	 05vTJXBn52KoR4HYug0fyiQW+RbKhgZyW3gpTRC4gDOiXspC2GK9TUVcGeHatWZu5l
	 NiCakS7Hfg6o7MvWYdhP8Hi+MJq/ty5RmE+xpmOQPC2kWutcirWFcoj9gfIbfdNgq9
	 QBkYptL6x3PIO1XUvPq25mTxk8Rk4/w8dxmciIuUugCOmB61TOOIF6AFkp8nSYpnCb
	 D0xFipL9blHacxIjFqhB63SUQSvj5K6UgkX8LcK0j7Di7SJmc9WivAx2aF+ucZQpCb
	 FZFCx9uxGIIWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97CD0C3DA64
	for <ddprobe@lists.linux.dev>; Wed, 31 Jul 2024 18:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172244975361.686.13438649419553816367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0d1764e1aee08e548e6fe04245de1695fc8a21edd4848853f52781bb462cb17
Date: Wed, 31 Jul 2024 18:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722449753
