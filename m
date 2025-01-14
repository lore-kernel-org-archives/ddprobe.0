Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F2903596D
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736820354; cv=none; b=AWdgtYMnT6c0QX0oZMbkssLK/txMPtrqKd7Yh5yJ9FNe+EQbUrhN+LPm0Vo/+Pe+hPrgngdxBH2paZFFBsAItkKs5lq0cbp13frVaRK4+MuaGQV/3dimqFO2zr+E1uUhDKLq56rscbjEblC8M9dqQmZdfHLCAOzYUAn/9t8Fu0g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736820354; c=relaxed/simple;
	bh=aIpmiy+qHowDMqfOe9HWgi+4g7dSTPQsFCuSExCMEWk=;
	h=To:Subject:From:Message-Id:Date; b=lwxkFrHGFT4X3i+9GGLEs2I/88+EwqB2iCdahPTfNuOmuMWPZc7raPEEBfnPSnUoa4o9nTN9QaIIdCWLKKPzKvCBoCaf7YDRH6177eJLJF7uFK+9vAy17/qZbRpBzbY2OpOa1tEQZXvua7tBhYWLGklo4p92jkZObbYITUfoTsM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIjkVAo3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIjkVAo3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC65C4CED6
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736820353;
	bh=aIpmiy+qHowDMqfOe9HWgi+4g7dSTPQsFCuSExCMEWk=;
	h=To:Subject:From:Date:From;
	b=mIjkVAo34Xft34lJHc+faGduJUUp/z0ue5DVoHIlXnp4KTaNLkoyX83iO7r6UwICI
	 Y7wgHeJVeUQwClOiS746NXQfdANAjznlsm1z8SeWj8Na5+/lXZNf08zhl3x+XmmLHE
	 zs48rjnOFaclmkQ1ThJCc+s801xsJX/E04B1hFN6pp+k0DL0L4sOhrsRh1scBD4TI4
	 v8C/16UmM5+EDa/jPCoPhsp7VBQ3sfgqe2iOmtj9gTUxXDTtY8zvJpp5svx4kxP+/t
	 A16ksq6rDEwlqDQTeLtGfLocR9oMSLOCoMEDqiHke1aL3JVTWdLx+/lfB4XhoAmGHQ
	 H+vo8IGOnEfiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2C4EC02183
	for <ddprobe@lists.linux.dev>; Tue, 14 Jan 2025 02:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173682035365.32248.15287654368102057489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae2e9e30d1b4862f4ec2311e5adc203f66a0af300fbd1d3ad5fae20ded3dcde8
Date: Tue, 14 Jan 2025 02:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736820353
