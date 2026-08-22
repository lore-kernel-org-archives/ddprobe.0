Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41FAA1B4257
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787358634; cv=none; b=jhjBbeEUTN88l2LKGt6jsLxili1GMn5MQTfVPyRKSQe3PgESEurJMOtU0yRxlVxz2ZTUsYVOxeHelb9fNLtL9xWKc5javFKyqFaEeGHsilDxYqvMWneA7mn16qvzz78D+1aXlQ3xWGqP+8jW1SEOYyHTkvpKaHoDyQyo4WX4jJU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787358634; c=relaxed/simple;
	bh=TR8eGuZlXkh2iS3x/pApFZBUSZKEwkG/CPDRz20SnXs=;
	h=To:Subject:From:Message-Id:Date; b=eSAiHh3vZ3IrJKJckz0mkQumYWXjiXE3Vl/Kn4vdDHTOJQSxIUrVeuRpP+fitWdMcVKUNXDwV5fgx6LBRvn3K21O5kdnK4AUO2sb05DRXslCPcoi84J90kOToEPmKaEyayYG55hK1VMUHioTddcYkTjjbloWP/iZVDbAcaCh98Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jy4tGWMQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jy4tGWMQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4808C2BCF7
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787358633;
	bh=TR8eGuZlXkh2iS3x/pApFZBUSZKEwkG/CPDRz20SnXs=;
	h=To:Subject:From:Date:From;
	b=Jy4tGWMQOiKwrUrX77EJCCQJhGEjA6heJ5j7wmkNhjPEiQ6uSVtWVaxwnKJi2yvO9
	 JtQo0Crz+TFMFL6YVjJe8Y1Sq7ng1S/Nhk0jVANsHcdDqXsHNbJlncJJjrdjeoAeqV
	 drQ0bQKyqkntPvIqzq3tVTKPOBxm4n5PS3bLzSGq+yw5e2bNe4zqCPDnLmgzp2nZm2
	 vPA44R6omT4zpASzhJUogmGOJh9LjPM2gFNTYy4WWxzeGikzUEW3h2OeZEqM/958M+
	 pGYGBGap/SI+A4XZlmYVUmrGiRfom3dqdGd/Tm3SNiCfE9bOBWs3lEkRXVgr0FVFKi
	 n2uI9/dty+i9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1120C5DF94
	for <ddprobe@lists.linux.dev>; Sat, 22 Aug 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178735863371.32616.17480935437148474960.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5179043b991b3235aaff831eb1d476dd83aacc2882bc6361874dda9612651f5c
Date: Sat, 22 Aug 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787358633
