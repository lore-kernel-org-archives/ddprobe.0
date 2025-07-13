Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 278864690
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752366595; cv=none; b=W+gzkJehsQDrjC4gvjkm8jcXjKBBDU9EEBGJ8gd5pyVvhivzr0OVy7jO2suLK4A963oLqpAxYiBSwKFwiHQm+cbxy+AO7cH3doKbb/yHT08OWjOlhrrmF6Td5qmDqKF4j16wRPhqBIXLNckWClQgmNju1QcsAudNVqL4yxbrWoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752366595; c=relaxed/simple;
	bh=WFZQiGGq+bn/+2PUBV6wZDXKsk5tlnvXwFq/rfA4xEA=;
	h=To:Subject:From:Message-Id:Date; b=hsbRhRAVGd2D/F5/dGS8MLCtg31OimKxOa3X6G83t3Fi43CI6/QLzEfip4VPSekDpWk0SRV6Ozlru9/fVE6992coxhjVSxGaBTZyADWtn3AG31CC/MZGJY+mrnEkNAiOpi6rfersbU9514c6gWQ78540hIYUGDiaznOmFJro1JE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N9GWyPjf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N9GWyPjf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2E72C4CEEF
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752366593;
	bh=WFZQiGGq+bn/+2PUBV6wZDXKsk5tlnvXwFq/rfA4xEA=;
	h=To:Subject:From:Date:From;
	b=N9GWyPjfHIl6FLqxk//OMtRagoYgdbjOxmN2GgBjasNg+PAMEkKFHTVsVhJ0VCsPS
	 g++jj+6qzHhdK94+A2R7/z5lf3jw070yhgGLUWPRyXsx7DlBTWA4pG8PYehav9UGYi
	 ZeqHMp5ZB93pY1cuvuGH4QgH3J//zzS9VNwQnMVbfKiPkN9fMdsiHXzlujNH/wtgAa
	 jySPtYV1vA61BWENS3zTanTLssj6y+vXpbdMOV1O1djZWJmBbNDyVV9kuZ8J00+PD4
	 KT4JJ+rSGn/sbOC6wnFfZjcj4EmxkVR42w6GFG47kGr3XUOovjnK5Ubxdn1JhL8uFv
	 i549JKEly6EhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC56C83F1D
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175236659358.26358.5012831947766432744.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57be292a49187fc6bf8c8f41126f53f278cfd602131da7c925e8c61abdd6960e
Date: Sun, 13 Jul 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752366593
