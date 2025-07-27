Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3606C136E
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753602594; cv=none; b=RjmAcS0cqxHAnYJ/JGtie57TYVVeiu/B6vYJKtbVaV66kBsfJTZlpmrnsu9s93//CFc7Scy9aORRdlWMt6hpb7JlWVvK9koHkc1hqc2cGNJibSYQPhCr7p9P4l6tGgViRP4mxPdthEW1dlMJ0t1nubn4H3vK0kY2YfaQ9vNrpc0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753602594; c=relaxed/simple;
	bh=JhBw28H1bjBpZIzvZlZhNOYby1fhfW0Va6Qq4yAadnU=;
	h=To:Subject:From:Message-Id:Date; b=IS/ShOGbA3UKx06xLHgZPQY8LfrZgTteNYDfTfPssoxTHHCkUFOK2m7exDHDTVS9+y4TIjV8Mtyi4TOA5/gslHI9PPU5x8dHc963U7sv620Ynr0PEOy3Xaj7TZi/o7Y02M45wplaZZuBNnnTLRfXJsTlsp/8y8cSjiABO6WsWuo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rIpylAsK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rIpylAsK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3277C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753602593;
	bh=JhBw28H1bjBpZIzvZlZhNOYby1fhfW0Va6Qq4yAadnU=;
	h=To:Subject:From:Date:From;
	b=rIpylAsK2mYyxWOTGPHewxvCyiwQhJuP27pll4k0ZVODzSgU81T/QX204zn+I7I5/
	 rk0rU3pmGcAX/pnmDziGTEErUeVkt9o2Hb6pHaSEgNMbn/N4MGr85GBbO12WZHK3aO
	 jHPIP5MNmqiNPmJXE2oPGV5gKdiTPGH6MB5TRTRLbYWGlkC3Z5oHEu3z63o/R6ylxB
	 yb1AE3fQq1p+ISZ9ygnvFFU7vx7ei2hDJ8fsa6zymH89inVo7gvtK/UQL4OgolKo+C
	 oVSKOkhTFfhsMoF5Az0mT7EDB+3sREb1DaHI5unoA0FFhCEdY0/AtL31lG8+qP9dnI
	 gz2MmwK8pe83g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9189DC87FCE
	for <ddprobe@lists.linux.dev>; Sun, 27 Jul 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175360259357.17006.5603106930173616587.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2791911941c844c8d459fa40bf19fedcb14febc19191ab04dde79c82f2578b48
Date: Sun, 27 Jul 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753602593
