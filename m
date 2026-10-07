Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 610953612F8
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791345034; cv=none; b=A+uIuGMzvFSL3lelSaLzhaKRP7ueqtal/gdLc6HctFlWLW7X2wqxVBDPJ4+2e/ix5eZTlUziK5LeAgnatZsfVZuoaXX6pshdBNtKiqactDDgNgfXtRiiFsV22PXblf9z9oZOMi5BBNe8FeLFmga6CXq0O0zPnxVKMfp3gTReXEA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791345034; c=relaxed/simple;
	bh=E5VXMq/ooDmZCKOHhtJqR5doy1MGPDtvhEEaxXtsZcc=;
	h=To:Subject:From:Message-Id:Date; b=OVZBE3ysMavcU9ngZfq0Px/aVffmhEz6J4hUoLC59e4v6zVJLkGtcmZukFjXktnaaPRwPOl8RBNEgFCqPj4VMNunz83hugn1b3BBE09VAZfMenjAzyRROLeXqub6Icby9vvl19gAq5K2WZAR9G1IAefwv8DKBlAZzhMJPQIWuoU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gl0Yywlf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gl0Yywlf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1BE1C2BCB9
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791345033;
	bh=E5VXMq/ooDmZCKOHhtJqR5doy1MGPDtvhEEaxXtsZcc=;
	h=To:Subject:From:Date:From;
	b=gl0Yywlf1lcQpP/a/epsrvqTKO1V3NnyCcVhoiJNtI3fbVUm7ldLgYupP+mNXMCRx
	 DnrmlrWPWJZfJ68RbKSVM5KJJC5mgdffCEu45VkzNVvscQTJc37XBBfj4vHgUJj83E
	 Q5GlnqFk3VAm2Pt68i9VGhIfE8sVbG8ubc/Q4mX8xAXA+INn8QtL6fv/38SY5HA6nA
	 JTArJd84OfXd8I3LzKRqiT5yOCyUfXrf5huutlmfWfQSem/Q3CTs08L/Oj15w+y+x2
	 mHescQGFw3HEUe2q/2myCZwDA5+Ak5tAI+JBVCJZE1na8DSNe42mhv7/g16S2Yhly4
	 kh8v9FGsVFXrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD64ACA5FF1
	for <ddprobe@lists.linux.dev>; Wed,  7 Oct 2026 03:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179134503368.14854.2633617243925123513.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ee7b9e4b9128b442e95bd636b42c550e4dec5c0963b5d29df329bd88917d59b6
Date: Wed, 07 Oct 2026 03:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791345033
