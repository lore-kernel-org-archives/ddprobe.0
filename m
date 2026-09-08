Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 543233EDE6E
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788855634; cv=none; b=SLfd6g2v4EVyAYMaHTnuNXevXLFxwfQyIQJ9/xAkREzA/3QarpVu+x7bzlC9AALBhbU6z0FAa0CCLDZraqLocrWnVmH+DLnXjnMPHP8cGHnqC8KKqMJ/GuFqG8EDGx2CKhvby/UIS6kKmkn3hAe7Ddw6FMfsYVkk+k1QxjGmk+I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788855634; c=relaxed/simple;
	bh=q2u2WCzVhZWRNOLaCneQADuKnBOAoRs9cqsOdt42sr8=;
	h=To:Subject:From:Message-Id:Date; b=uUmBP2gx7cVFeIZI60xisC902d3MsVkmKWl+I1bZvYIcY6kQb6hasjo03hUE+4sqBGdsGocVVuRgRDX71vGZrNr55J5pGirJnUtbG6WT5vYbPEO1Mv+gX1g8r51M/zEH2Jc2c8np8+txEln46HwMyQdwMO6ta+6ou7W8h9LIh2c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zj5P5IWO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zj5P5IWO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0B1FC2BCB8
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788855633;
	bh=q2u2WCzVhZWRNOLaCneQADuKnBOAoRs9cqsOdt42sr8=;
	h=To:Subject:From:Date:From;
	b=Zj5P5IWOYlT1gFnMhde19xx95OJe5e6SphaKmVno+T3BXH8GxC0zz7cNsE9qLk9Ve
	 qsjGfdnLv4KFs2o5nL4dwzCSKJ3OJWupVDooBKscskjxiXbwt1brMXEPQ9CyfdO15w
	 khW1emID6JtTEjPpFDJ3lxean9gcptRo9Sn0Gd0tl5BuuEz4tSdLrokDBdMJNEzrJ7
	 ldIxMjVaU8dlR9lNrRX1SBCFsr2E+qctIImgKYUH0gt/1h+LIaLUL0mH1l4W39UdLo
	 RSyKyz2IC2N54pc+jBYEpCITi8e07VdiSR0uO8CLfIqznrGyFsSc1CowFB1TB11Fil
	 yujEQZBAxfvAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA66C79FA0
	for <ddprobe@lists.linux.dev>; Tue,  8 Sep 2026 08:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178885563370.4237.14800865652532945602.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033a7a7ae717dea09cceca34874e19ce007db14231bac40554e8121c93bc13e7
Date: Tue, 08 Sep 2026 08:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788855633
