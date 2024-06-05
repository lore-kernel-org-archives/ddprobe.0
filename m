Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9FBD3194085
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717592783; cv=none; b=LX3oxMueHQcrxiyE9zyCubwl2WD4Hl6HYlKQl3D/zr8FLiR9fS5bF/Nrov4mQ4FNCTwXJtgYfnCmmZu8e5TGAFqOLRjZZ2MllT8n2JXh17L/MgpGYKD3nkYiAq83MEw/d4CcaQ+wHZ24N1v3VLQBvVX3HtisoNCbro0oI/niFS8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717592783; c=relaxed/simple;
	bh=ItYvcsXhoYZRcLosusRqjidSnMCqjSCrgeFpPaFheBs=;
	h=To:Subject:From:Message-Id:Date; b=OwO3/Usg/EJrZ0kl17NIsq66fj6AhU3UOm3a8ptRKUJELiYyoLh+EOaUnxtomuFkRyiWYIzcBaon7Zejb6FVJQS5L4xxUU2Vemzvjb+g+6bQNBsuBll1XjAVkkZHBgxreUdUrVTh0O3ePLVyeISNCseibsonJwQtLDHR/m8sTcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CJAsrudO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CJAsrudO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 13E56C3277B
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717592783;
	bh=ItYvcsXhoYZRcLosusRqjidSnMCqjSCrgeFpPaFheBs=;
	h=To:Subject:From:Date:From;
	b=CJAsrudOD0dw3iKOj41hCLGCGKvIbNbKbTNNacQMRrEGSvG/JvOjUBISCffecw7WA
	 KaB+wpWI4PkWCuRXVHSmnqvFFPhyclSzq/LQzjTFXNQscvbfXvZ3od7kjvF4QzlQdB
	 SCdUzbsJ5kACvv7pTQrZImi7YSzUmQUKTR/WSxU61y0R5ezNwIDnA0CurW+eUUau4F
	 JN96DS7TGk514NUZ71Cct4j+pA7ro9HiNiMFY52PJNczw2AE71wQi/HrY22VqBHIUS
	 CFoRGchpadsJ5ykEpMRip7ghUJiTFtoIJ7UIfYmZYKMl7Pty5AFx4bnyBj8p8va9ZC
	 usXmUw5Y8xQYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E9E72C25B76
	for <ddprobe@lists.linux.dev>; Wed,  5 Jun 2024 13:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171759278292.14242.5077424164060872903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8631d0ca48a3d1247072160cfc31d8600b99a0b48c1bd63b4fd3650dfab7d70
Date: Wed, 05 Jun 2024 13:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717592782
