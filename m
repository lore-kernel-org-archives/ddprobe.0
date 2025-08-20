Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23E8B2D8362
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755677394; cv=none; b=YdeOi8oD6w9qILV8RvbWtvoE8bP2cJZyTzdhitrT0sZPaXlkCauSlBzU0nYxQr3J8ASJ1npuk3wP3dIXfbtAV6q/yKJbNQrdzNjmlFqgVIuOWYBW1+XoPGlIoBAfkkX7OG5Zs/MyEa3XW1GgIPPoGfeJayAo97+/VJ7WGMrvvv0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755677394; c=relaxed/simple;
	bh=mndP2rABgRZQhAnSn3ro1i+tCiiQT6HgLe6LJyUYp4w=;
	h=To:Subject:From:Message-Id:Date; b=hFKgSnEzDy48Jhk7B/+wyq0hNrT1zS29Vuh1ZUBlmgExAaDl88VbjscIyYP9gnkURyP+EpCbrdJyQBDGPCOws9svozgxxAr143gXrrRREGRfOqC+MKNbEFTDwAOmrSml5vBTgZDxHlSdmcbMoHsXeYqkyjKO+xXcSohja1hXjso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Esz7PK1y; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Esz7PK1y"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D820C4CEEB
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755677393;
	bh=mndP2rABgRZQhAnSn3ro1i+tCiiQT6HgLe6LJyUYp4w=;
	h=To:Subject:From:Date:From;
	b=Esz7PK1yeQtyI5z1AKnSZm741dda6ic4lE40YIStl8acC5XdzoB+U9GtSwzPgPD6T
	 vUyIMfCyk8SZDh+L6aGKcInqRmaqL2xX0EW6k8TM++IjeFVaa9g5QoeFG9gwkTUtFZ
	 KZ/7XQ5IgX4GPQhhvboDd0r/rffLCnTWVw/F1vRGOgqnmcZntBxMlu2TsJvfVc226q
	 6+WUL8r3pklf28Xkwsn58dE+eS67Ijy2ZyYe96psyqGkZmbzdTcEK+eMKgpZYHPXMY
	 piyMSoKGGHUuMBzrnvA84SCdzqVO9hrySTcCx30KEIzxqF2lBWyvzjY+I/IT8w63YR
	 yOSwCwxD6DEKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F014CA0EED
	for <ddprobe@lists.linux.dev>; Wed, 20 Aug 2025 08:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175567739357.25522.3706523971283313457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a68d4134c47f0dd1da360d0a6dadc3766907ee4531be0b3a9976aad33f67da1a
Date: Wed, 20 Aug 2025 08:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755677393
