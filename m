Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 58E9A3955CD
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781389594; cv=none; b=utr4W4QDaSBOlvQHc7v1p1aj3su1n2OdaY5vpILN6FGAILaHH/9yjG8H41crqbEfqhBOHGtxQ3L7ME7/pX/Mc0wNIRCcXiYuLiXXr510CCpWsEyMtUwDo+JYmszPqmPh1Aptig91lRcFL6oZUWFSrse6kRoPzQFS9OgMInvkq2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781389594; c=relaxed/simple;
	bh=dGtNKcJO75H7HTHveAYl6OrmRId4viwfd/bwuLiG/C8=;
	h=To:Subject:From:Message-Id:Date; b=V97abQvjAUfs4rTPCfVuGZ+LmDP866hMVSwj2vt9oOO5YJfbmfCscRMv+8paO6Rm8FIu2/nl5jbvVmsYp4h/kIk5AtvuiDEIjhcQLYD83qtzCzKLOxaOLz4dLcxQGY77FVcVUgcy2f9Zxw6C1skU3iHN/Hvkt6q4da/3jP5U2l4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSEFyvsz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSEFyvsz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2ADDC19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781389593;
	bh=dGtNKcJO75H7HTHveAYl6OrmRId4viwfd/bwuLiG/C8=;
	h=To:Subject:From:Date:From;
	b=TSEFyvszaQR2AI6oXDP04V26jRuECSsaZyz7NmheNPXBzotbFbbA9ljHUI9Lli3A7
	 pmBil+nVrq9IteBGIzkp4VgDykEzVR+xH0ShyoKZ6dh2Bp5M7sqhof8lwLVCSjcj2S
	 7sdLcacIRJw1TLhYOrOKUFuffDo6VZYTFNyAPNTnPsVhgum1B6vMzAlA9nBLUn8ack
	 buLE6e+B3TWYy2SikU8Xi+bIWZadnhabeMkcs/1Joj+hueHjMM7MdvsSAEDBEuwGV+
	 0jp6OYbBK/LWL0XRMtbq/0e+ohwJP+a7rUNlSxA08haOInmgYbOcTvMhDcC3ArtB8/
	 TcFPmDYchzMLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA664CD98C5
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 22:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178138959369.7966.8240162647663803884.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 890c9ae16f5dced51ef2623328c890d848a608d69b5ab6a5be51a2811981eb00
Date: Sat, 13 Jun 2026 22:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781389593
