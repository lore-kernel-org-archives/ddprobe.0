Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55FB7DF72
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791217834; cv=none; b=Vv5snyJSlDfzxxuByLb+NmFjiLRtCC4Q1g/D5o+d6Fw28Ci7dEx6L43k4sTp+CzwTWKWJ71Sw86afcXDAhPArROw5zeUQRyXASOJk5dSEitwEHabF+p4MyfjaYD33j/IfzwCnt+vArCavfrV4d/yxxjjOeB+nZok5x2Lko3VQe0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791217834; c=relaxed/simple;
	bh=JtHxdK70bWa0q/16gTS82zR03NOSLBODXusxlC5V7ws=;
	h=To:Subject:From:Message-Id:Date; b=GceZW365XnWiT2Z/vCTghbqVrOf+KBn51A5uxk2wPQji5TsTOhGg6xsiP4qxr5eFIucSzon9XSJQoaCrTKFeZNj3vnm6HRtEQJrIYXTawyYu+xDBusfZRF2KZQzK/g0TeKnDagNmuhXjtMYlQgzvsw8bHAun1Pv4So/RoQp3bLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ukaP8Kr1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ukaP8Kr1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4A0DC2BCC7
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791217833;
	bh=JtHxdK70bWa0q/16gTS82zR03NOSLBODXusxlC5V7ws=;
	h=To:Subject:From:Date:From;
	b=ukaP8Kr1hx64by+rbuiui20OM+nGEvIawhIwPBQMEvbCX/bUlBJWSc9wK0dyKu0zm
	 Bq5+EGTHfbXHEpZS3dZGzl6Z169tlgQlb3KvWy+A6gKGCTt1AZvOPA9KxTxdWZquj/
	 AqrzX+owRqf26qfWYI2vboxInueoqSxzLaYc2H15CK2Du/re6c5a5x/OBdOlQNhwLZ
	 PiVBubdcPDIgFI4E23l4kwcvL3xvEsm+glFutVZS2+ukrlOWh9L/7r2w6uEF8Q//3i
	 zLJdR+/hTihWoz+M8Va3cAtrTOAdoHsxpRA/a5Qq7Cu5PZObSlvd0EDuAlEZ79f7qi
	 XhviA1EuzhkVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB08FCA5FF0
	for <ddprobe@lists.linux.dev>; Mon,  5 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179121783369.25481.2527717159848241914.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c60389f9f7598e1b956c8a960c0a8bdd5d0a50503217691cc6d65580d11bcd4b
Date: Mon, 05 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791217833
