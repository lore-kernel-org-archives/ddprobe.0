Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CC303D6471
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:44:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780404274; cv=none; b=fTjpF/GentAAPi2t2e2ApbDfMwyY1gG7DL+LoLgFqVhisbcz71VFyyQlL5xsXowLzDL0mkoZNVw5xqBZI+UvyzVSki/dlxLj6Vbv448wLPetVPWI4uI1LpAGLANHrykw8VpKzk1bVkqs+SBGYyJ/UwMoC9fjVAx4ezs6DZqlsLs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780404274; c=relaxed/simple;
	bh=lKLqAdA8mKZ/QCWK9Vx7LPQvOcmkl7VH5CTaGclWiY8=;
	h=To:Subject:From:Message-Id:Date; b=l5UU3KdgDWY4QTPcwFfu5Gw2vk17wKgR8cBMJBs2OpEg+Was1V2Z4GHcknU85s/L8kki+hH40F5ZbTzF1JGmfX0n29MOaEKChBQHMotxFL7iTlS+phIET/imfkAtYJommr96M41YAAvegi05MsASz3jmBw1myQmIGVOx6CwHjpI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VQf2og8D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VQf2og8D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7340C2BCC7
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:44:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780404273;
	bh=lKLqAdA8mKZ/QCWK9Vx7LPQvOcmkl7VH5CTaGclWiY8=;
	h=To:Subject:From:Date:From;
	b=VQf2og8DTf3AyEHheAYRoyUmjbPSUTxdm77KlC6wm0ZGkoqGcfExVnz0khL380OU4
	 P3A6/NKimnkDDoWBcXl88nh+r+0OSoVR84cY/eLHb1WGeVn/SzbZDs0a9qaQlNMxOi
	 m9kkf6ph1aq8EORFjTYuJ6tBQRG1d8E7DLicmP3dOAB1UW4yuAIHC5SA+NR/xGFe0A
	 y27vViTA06RhPhhbvTgSJ0OFdmyIeNB7+rwbX7j07OCB2nRG1PXsYncIA5V95aXcnx
	 dDQwZd6Jsmw4MqPmM0r2PoT1W/zOpw4lD9LGfMkUH/SHAEvO9Y2BjQ9o3EMu4tGDGa
	 V/mfTrO/a066w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD7FCD6E60
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 12:44:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178040427368.12255.2424422846918932422.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f7f51d0132a2406324e11092e0f23e7a3d33c6e0371b61f71534e8b584026d3
Date: Tue, 02 Jun 2026 12:44:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780404273
