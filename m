Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 332AC293C42
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774848294; cv=none; b=cuELVSTTdxctyeeJTwQSSnhJFUtQytcfx96hh9GDzIAhSU7aig25e3iaNAVVC+dKq+xwdV5M7THT897zXU2MCkPn9Go68cUNaD1bQlSLcLrUHd+aHF+dj2C+8b+M6KWZ8rOGA4NuCL6AcTif5pIk7vpi2vtwxjd3iRYOonws1QI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774848294; c=relaxed/simple;
	bh=45n7pgpTabH9M+nN918h8FFclEpYtUpiObN+hfOLuFw=;
	h=To:Subject:From:Message-Id:Date; b=gqBLoRsgvdUqV6CkSr8RaAm2XsBAUWZfFi1ULYDD/C93MNjRV75aA0vZU9BC8MzadhQdSxBpocZofUFmVYKzWeAhfaQRJpeOvF7vKbRuiaeWLBq9CG2VMZJUlI4LLivsT5qn/lVlD33VpzQDWq1b7GNn34IUveZbjNaAZ7JQaOw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P033KM7m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P033KM7m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4452C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774848293;
	bh=45n7pgpTabH9M+nN918h8FFclEpYtUpiObN+hfOLuFw=;
	h=To:Subject:From:Date:From;
	b=P033KM7mXisbcVP7Q6d2P6lVU9pm+EJkA+J6xQSgsw22q8gDZsu98V+jkeMoq344f
	 kGlgKEGBhuszazreZoW27d0NzfCe1v2pR4ZOAOn2NCEP+N10DWC2SfCMquParlNUjm
	 s8If13RLW82xoPTJSaLg4gf9KS8OKt3ZT+uszwT3wSqq4XgH04yAXWi5IFZcyJ6P54
	 MVsh/X/Vg+79zfOnlVeZ0Kg+Nk30hViGpH/wJn0a0fYqHUpBa9qbHMOx2jmCUmqW3w
	 Cs/HQY+PKbPEm+tqaCykqDFyfjZdjOWA4piQipo+PrOefMRJ7UV0a7TIv/WPEjSfGZ
	 47/ZQn3iFJceA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0398FF4940
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 05:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177484829363.14506.10077381324502459800.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5fec58898b076cdef041803339d7ce182a8997932b5087fd3362f7d7ed9fccb
Date: Mon, 30 Mar 2026 05:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774848293
