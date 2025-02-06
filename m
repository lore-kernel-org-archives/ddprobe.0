Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515CC199385
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738864554; cv=none; b=KLcDBaCEUGIWvqMd/E7mH9WVnqizcg/cdqTyaL2tjiKPx8wCX34uApiMfODafjsPh+WyKsE8vtDUPfjYp4dT2jUspkuFGnGkK0GLteh5RQ0/z7FRonfd8divjlWENNr+CK9tQT5eEc8F7qVQQ7b2Xk104BonngUz9L2HihMs0p0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738864554; c=relaxed/simple;
	bh=iHIZjcMQTydanGJktON0nqpQQI1an73hagDuHijoAMQ=;
	h=To:Subject:From:Message-Id:Date; b=ZQRERBg2exqWfVluVhfG4LDYZ6lwqWru80gUnkatgFz/kFp6GbOil1FAfTbRMc1HFAHCa+tvF3W40Py4WW0tVfjhJbiBUy9CBCUfMkaIlnupI8XjxYS7f3jkVdaHPkMYafKqfY1/aEJu76VBJ+X9UBkL8vRsC2GBWvvXeZiOGHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H3TLH41x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H3TLH41x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B64EDC4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738864553;
	bh=iHIZjcMQTydanGJktON0nqpQQI1an73hagDuHijoAMQ=;
	h=To:Subject:From:Date:From;
	b=H3TLH41xDEMDwb/K3ea0FUfLWAw67Pg/CfgPMYvWevES7mxmQMZ8pHlaGEiT/ox0P
	 Y4I6EcsTp6EqBndBamss2WvD2SuxWklLWZ8+rzx+qY31Ki5X0Us6+VcfrC50csNGcr
	 x4S4km6wDNc1XYD0PijfDiAYev/ouN+6Je8M2PQ6a1ButoB2wBbqcdgbZy1W9zSdqu
	 3/NOXfbRccpABWumd5s/80poG3XXj1PtSCU2W4OG/2qP1L/cqehmEgeqMvj4PI4E7v
	 uTg0C5zC6QM5VFvi5dj+y7RYsA8ifZHs189fXY+ee9idTeQCGQW/yoC38Sja5EevlK
	 20pzg9nJAlGsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A652CC02199
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173886455366.20822.1044591974346928320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1990231fb4ab287629497f673597a29b0842f0dbf8dacbe8cc112c307e70ebb5
Date: Thu, 06 Feb 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738864553
