Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28F5718BC3B
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753098594; cv=none; b=B+hD8U9o/LXO2ZNsyW+m9s29qu9ei681S0+mBe2VCosdBhI92LHmTZTQ/RyEJXN137g6zb9M9ZF87vhlkRg/zErMo5zSe3R8W+53e0vlSeJ7OzhsL0NoR/jLHI8yWELtvOm64LohZS2ATkt33mV0TZdYuA7B8se+Lu+I7vnq0BE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753098594; c=relaxed/simple;
	bh=0A63p18hbKImzNstnStZ1H4GdIl6061JhW/uhFtRZlo=;
	h=To:Subject:From:Message-Id:Date; b=fx6aqFNDkywo9wVunzX2SJeHFl78ScaHW/uAihxDVgiME3bCVZ2+7OT4yTCZMztZFPBBE1rLND/33WTVeaWUnK89cC9WjHYzDkSKgeSyHrVDqahlu1h+cQHqn3/4T5bLUkNOF81ycmBwBxW38P1zra+GtgMtW49O8rWHkN+kDnE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cjpsYfoU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cjpsYfoU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A29BFC4CEED
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753098593;
	bh=0A63p18hbKImzNstnStZ1H4GdIl6061JhW/uhFtRZlo=;
	h=To:Subject:From:Date:From;
	b=cjpsYfoUTM809S4ou10KSz0JStwPsumE9Borhl9ziDHzM4Hu/GX99oHZ7PbccbjDz
	 /n0TGARXEhy+ATy6knyWrNHZXAGMghlC9CIBJ6xQUpea5/v0MnWaDaXB277jDlsPqC
	 Hmj4VwaySO4zTo+rdWJlNM3NCDDpGsWDabhIKIwOqmlFhM67EgSlDLNnCo/1toi2+c
	 c9Vrf5F37i6unE6fuXuCuYP/o/yvCctxn1gVUAsQXOkAaAGlx2HbB+Eb/fPDKziGi6
	 bsHt/i2Ty7AMLBVNzQrLjPwvtLLjI2gxGE/rmC0iPCivgjrTz4qGjPmptA1zuIfhIG
	 wUugX0SCXQjqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F76EC83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309859357.18483.8792047514476130673.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a9c3a1e8ad3b86749d9e67f838632d7f7a39d445a1ea3d9977cb420e810164ba
Date: Mon, 21 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753098593
