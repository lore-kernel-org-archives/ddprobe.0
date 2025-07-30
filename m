Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F1DD15AF6
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753852196; cv=none; b=ASgBCZcQSzsU7DR79ON0kKC3C02UVlmo+LpMw/HF/ZEsOehtB1PhrLc4puJAmva9ZugCHwBtscd9QBFRaCV54ZUz/AGnCExMGPcvB49iTCw5ZC8cI/L+SG3szyr4mIJtJz79Mr70NG2ZXW8M/okpd36jA0F6HxQN1gWSVjhed1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753852196; c=relaxed/simple;
	bh=EqYZ40TeImA8rdABiM1X9DiFRhgijTaYs67/QVqJxf4=;
	h=To:Subject:From:Message-Id:Date; b=atbxioWPIkRUpicSmMOPD/xGsXEPcUrTrj5QIFl/0soWzALq8kzCeve/vEeuXdPZAUI/ISxKp8M0k3UlAllpkNKRqFeV6MEkbsZQGZTQ/rpyT71UoX4FOkl3jhSCPdoDzN4zrmpx4tYRUUdQ1sdgOguws7HSAu1m93EC3ymK7DU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cOzclzby; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cOzclzby"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A50FFC4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753852193;
	bh=EqYZ40TeImA8rdABiM1X9DiFRhgijTaYs67/QVqJxf4=;
	h=To:Subject:From:Date:From;
	b=cOzclzbyA8PmSw/Mh54mh3sRqxWcka6YUqWcPf4s9g7rGuVhCzrwWlIVL/8cdNzoQ
	 EUk8ZVxWpnxM5ydKXJHFzMfIzPkCCgrsA3Z9UaO1ij+11Esb993m6eMcOcrmiLkYLQ
	 t7MxpCUrneRC/AW7ouqtNEn/u5TuRIXFQdXm/weM+pbN6Ztj6czDAJA9JTCgdM7nHQ
	 ApoEmA+8KTQEdxgx+YCeEZdwddFMTt6+mZZdm2M/ypH5AFky3oiZx4ibRvv3uQJq7u
	 Il9nTmRLNLSMWuDLQah4EsJPRHJsWD32aes3hkZpBPF7lWKpJb5SrG90K4wVJqF9zi
	 M/SzInVALV4Eg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91053C87FC9
	for <ddprobe@lists.linux.dev>; Wed, 30 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175385219358.7423.6856034562802669175.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45f88ac3ded5b4ca4328e2c7b9774e93e1984f59fa467ad4f770ad3ee5ca82fd
Date: Wed, 30 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753852193
