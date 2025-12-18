Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 14D93215055
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766060034; cv=none; b=kqC955hmxSthSjvNiqoxA/Ijth5TkY/8IACKP+K24HSWRhTfAa2AhJofIqoHXtbq/PFFE5yxRdgsKFI/Fz2Wo9OAo1bXceq14Ps4Ez7Ryd9cqs7qYuLp3zD/It9RqhqyIx2mvO/uqls5KtIEyrSbIsK90QSaj/G8ph0vK2o0AUQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766060034; c=relaxed/simple;
	bh=sgAzfxZrp+fWLzuDTFaC7Zu//UEoQ3SD7+rkKMPF+iQ=;
	h=To:Subject:From:Message-Id:Date; b=H3grM76DOA35wCBofZtSIduSTJdIw157wB80tMngNJg88db1H5/IFC3CVzhlkOoOYTK6SF77sx0KUB3kdH5GQ5QF/QXaDcCh6s2KYOTyUgI38EEuGOFI/JDxeSS2qP7neX+4QtEB359LHVmyQTpIzJQAlHCLWb9PkY1Bs3gOZAc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UhgFgsdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UhgFgsdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0BF0C116B1
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766060033;
	bh=sgAzfxZrp+fWLzuDTFaC7Zu//UEoQ3SD7+rkKMPF+iQ=;
	h=To:Subject:From:Date:From;
	b=UhgFgsdryN9538UvWF8jlja5cAFJJQCidCT23Vmqr0kdbEC777K2bQ8s4ltm/SEsW
	 PkQfsNGKHiUDzQrXZbt5fK5Pj/lCu3DGFQSOqo+qpo97RJENKAyAqyC1SoOoMfzg7l
	 qACqq1lyd3RFOdI/OufM9Sunf1Y7SsBEARHjuc5eFQfxtxX64DaXTB6WKiyzSF8z8O
	 ouSUaHgSMFjok3g7qpj+wNBHaqMrPinUuf+rSdUwDrUuc3NmYgEcHM7Qy99TPKYny+
	 fHYMJ2ANabquaXGRyzO2YWzXuSEONmt9lU62M1G87JtzRHwQJ15lEnifhYR3d+6YzP
	 XuN+u6jXYVLNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91953D6ACDC
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 12:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176606003358.5977.17135549869388005815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61e92415324dad1182ef14e28da16bccb0f52c0f0e715a93679185e07bb2ddef
Date: Thu, 18 Dec 2025 12:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766060033
