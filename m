Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42412125AA
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785111034; cv=none; b=YL7znjbBz5sNc2pp17O/9OfaIi1mbRuMdsrfs562oAeWLXzSLTmOFydGc3Ko13kehC84x81OIQyDg+tkLt9Cae66hgBK52pZxPkxoAG8TR6Q9fYT3sJcW7zW8Dxe3IW9o7dV1yU5M2YaY/UdKMEjoksNkpfw7QEvNnCuWHYYK7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785111034; c=relaxed/simple;
	bh=lGhWM5ZxB2Y+z/1mbQLzN4MmE/Qo2cv/cobgDEl/QB0=;
	h=To:Subject:From:Message-Id:Date; b=OuRTuE5Qs/XNO/NMt+JJcPtcG8n/rweL4tT/qrhvrMJlJUdecSBt1Dd6p66uzC7hSHlR30MiefK3Cdk4/wEuO52gNHpvMrPfpMITkFvt5fzrUX1cWLhiD/hQ/Xpcd8Ko6WwZlrV7OrU4M778/JiwlD4dG6HDDgOVdstPmLzEc34=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GDPUW1PC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GDPUW1PC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBC20C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785111033;
	bh=lGhWM5ZxB2Y+z/1mbQLzN4MmE/Qo2cv/cobgDEl/QB0=;
	h=To:Subject:From:Date:From;
	b=GDPUW1PCkHEiQNxDhRkey9CPm4V3BdwV1rgaQpsvatx2kHo4E+ocn/y6LEYje1fg/
	 nOKJEMyd9OE6jAJLYucqw8JeeV+b9gwragkpF/5pNKSGX3kYigvhPvNELCc/XJ+LTX
	 RZAC++MrCzO4BjSyD/PctaOAd1B7Qj8pIncM+BHNHNSn1wig0Jx4JjsEr1kxT0lVyx
	 06aBNnetyQXF/SPvuo6VsPesPHA1k7RqvqjwqCqv3++/txgIUhHWbybvw21PBGCnGH
	 QcsR5/bufUsaZ6M8I5Y+p3DxHYjDMkjsPwkMKsvibKIB1JNX2vQLuiof++IVyneL25
	 LeGKF5AnBYAyg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9863C53209
	for <ddprobe@lists.linux.dev>; Mon, 27 Jul 2026 00:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178511103368.9554.9497854015029308233.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 236b7b682f8eee56f9649b40de9164e68c103676454d0df66e6b05d8f45cd318
Date: Mon, 27 Jul 2026 00:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785111033
