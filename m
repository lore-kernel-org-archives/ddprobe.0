Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49DC725DB12
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787721034; cv=none; b=luw+cr9ef0UndZL7tTwdO9P/DJKYqJm7sS1/7KgPSbzBBNiRcgyK2OKfUlSuRcBHqpawIeouYPGzOU2/SnI//GW8C1Meyo4JXGAt6Wpa7dzbw1CLErku/PuT+rqLitzaIt+DCA8tZiZ9FsK3h4WSIgc9m6GGIB/qwdaGcnqVZ80=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787721034; c=relaxed/simple;
	bh=fhW/d1k59BnHnS/CSaK2JQHOWJFta/O0FngHeZ+cluw=;
	h=To:Subject:From:Message-Id:Date; b=aa/g6T1Yel9vKeQrLIUlphB4RjcP0oWd+wNxyEbz021HQw92e3bxoLT86LJrZNl+Uq8WSF9FzAVaOzrIs4FCR/ZtiS5RhD4Rz90MElxdBrD636HHzlm1FeiSLB2H7uDN1679Jchu2sMBg3AARl1EKnB5de3vK+18vCqnumzC9Lc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XdFlbuQ6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XdFlbuQ6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D60B1C2BCF4
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787721033;
	bh=fhW/d1k59BnHnS/CSaK2JQHOWJFta/O0FngHeZ+cluw=;
	h=To:Subject:From:Date:From;
	b=XdFlbuQ6L5+00F+GSK7iO0NOtCxiklHSG/viKX2ToLyqTKCvvkS0mH7x4LdEP2/Vd
	 nT3zrvY+xjQq67SDStMb4xx87pDqLGI3qQ+6m31BRBTfouu5tSKOt/nTsTcCWtfOlB
	 OXdbCDLnPnkPYuGDZJivxb9TfDOovGzFyUbrQzDRUlqPuZ1i72BMWAMn/Ui4HBj9c+
	 V52YJmS83nHNhudAxr3rCadVvIxY5lLoHLu4R1i4RxQPJMqL90qLFNBi67xu9c9xyD
	 c96XLiCUqRSBceRnvmOsJOKcCpJMfEI9xRBPQO84++8/gfI0FQHXo5JB5L4LOhGaOe
	 4DHR3ItBnOJaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF64DC61DC6
	for <ddprobe@lists.linux.dev>; Wed, 26 Aug 2026 05:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178772103369.31104.4359447927113992882.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50eb2944110d7ba704c67ef8f6799cd68bd18a141d670ead4b077e16d5393f72
Date: Wed, 26 Aug 2026 05:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787721033
