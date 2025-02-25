Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4256B19CD1E
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 17:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740504534; cv=none; b=VfLvzeGWDeavUGx9xBFd/O3+QAC5LIdF8LgxVgCg7fbyewPIaXReEDcds6DoxEFRGYm3VQnUfhm7B2fZA7orYpyjCbjxFGOeKI/MKOLZx2wrqJ5YkeXPjZ9CA9vHIx1MOTTuVSlKiPFKJLa37DjbCgipLcGNdBdsK6UorinmN8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740504534; c=relaxed/simple;
	bh=o+3qdXY3iG8fRkWBgNF3DXkl+6B66FWUFFbaRengi6E=;
	h=To:Subject:From:Message-Id:Date; b=GFrZOhIbqTA+F17Nel3tTvhO7Af8YeDlKcrLoSery79bwUFQtgp97neDH8r6xsYgY8Kj64vmdOCRJ6kOxhLQ+YlUim0ZltKODEAR4W9merP3fVpJfN1X4UgrJYfylJQTnWRJibBquAtOmVo55dJ8UYYtFs5uUPoSUXfv9kNwFsU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iqPmJnF+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iqPmJnF+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEB7BC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 17:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740504533;
	bh=o+3qdXY3iG8fRkWBgNF3DXkl+6B66FWUFFbaRengi6E=;
	h=To:Subject:From:Date:From;
	b=iqPmJnF+9Gb9LSV7GMknMST5YsjHj6d6BLWjPAKeSMISaylbT85Ep4BrypYf4hu9p
	 zY6wwKmrGFWcIydQ9dBM9jBhC/u/l119ZksrtaP8NClygOHtxRUxPjQeUFpJjA3Uqp
	 DbsLOuSoDEYvBAjFHUNGZGLCsD2eTtadvN4gcvC1E4UL8A+xn5rqayYfTGkdWrvjHZ
	 0DiBa1qC5YoR/HNGtI0qsLfkT+M6A6Tf1n7w1UTz91ajpfkHY4Yv50l0DHKOeqfN5I
	 23dtFsA9yI9UwcXwNOg435kCttylWOlZaVOgV6PWQ259qQN/JquUZtT9GdhkTvglKe
	 7ZfdCsO2MQOEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8769C021B2
	for <ddprobe@lists.linux.dev>; Tue, 25 Feb 2025 17:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174050453367.3578.5631594787128188801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d92ec77e12c4c63c3ee30cd5b38d215eb9ee08faa764aaffd8b8397d793a26bc
Date: Tue, 25 Feb 2025 17:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740504533
