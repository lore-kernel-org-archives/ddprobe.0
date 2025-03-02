Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FAC4C85
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 12:58:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740920334; cv=none; b=ZqM4gkMl91aJkFtNPNOPiqbSxruLUMzJk+iPtP8uH9p9qmTTjhHkBQo121MkBm5E78i2wDp5aCXumt5B3ITwqjZNs3DLn2F9fAROXYeLUXir4W6UM/MJibo4z+ob4on4dPOIQBbdNsSmSPyAX64CDkX+VKnas6ksp81FMedkNIQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740920334; c=relaxed/simple;
	bh=lRp02WHdmMDkSzeycU8FwG9eD0s2krwLMJeL+QfQG8I=;
	h=To:Subject:From:Message-Id:Date; b=rpdRsReqXp2xvT6m9WXFymiJKYB+9iNK/R6cf/cSukqsQ9VCcSK3AoRLst0frOn2/Ll8g3sOEBX/Hw/T5VmE+lPiomOxvSM/R/UlOSm4Kl6/91FqEP4OXKQ+PMSFviP05/a3IWsbaOD+Db80W1zIgvTuGdKAP2/KfxrC34CFTLg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMDOPShl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMDOPShl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7763C4CED6
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 12:58:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740920333;
	bh=lRp02WHdmMDkSzeycU8FwG9eD0s2krwLMJeL+QfQG8I=;
	h=To:Subject:From:Date:From;
	b=YMDOPShlggPOhf6Ec9ssz5NfVVztew7iz4WicuBEg/7LgiTMBFPgLFENBRXZcVLrH
	 6Z7f6RPTv+lwo+Z/m5ow4sUccwuC2jYcUSrdAyz4QhiDoOXAL0BMHmI9r8wdF9ZDxe
	 Ct+26kM/3R3jnX1xu5Zg6hwygy1DnRRL/w8CJ+hkJu97RpMiwZnpRNG9NYZqM7i5yj
	 B68z/+G+xQeS5pufMyf4kQy6KVlsgJHBN/deTWamsV1Ae25YbOvkyO20AJHQ/S6Yz4
	 elrYCFdqVxdUYD4LdhsQDZFf+MvbnowavNYMPafNAieDmVHaX39xFnP7gDA21DDH1t
	 g5RvUSnYeYCdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96791C19F32
	for <ddprobe@lists.linux.dev>; Sun,  2 Mar 2025 12:58:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174092033360.6334.3255436701770476830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c89a0eabdc53fec8a938eaadc76d64796bbadfbb22ae3db76a10387be4e1148
Date: Sun, 02 Mar 2025 12:58:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740920333
