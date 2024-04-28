Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60FC11BC40
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:12:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714317143; cv=none; b=bkwE+x75EyHOMF99yKA/W//1H45Fd/Ca3XCVGOKjVUEVSJDKHJgRBCduxt2KT6J+pkr0LTthohy/bK8s3ns9U/YUHdRNVATLYJf15pm8QMbAjalspjUgqaOdTVN0/4+4KuxO8g03824KegR17Loanz9tKMAuvhLsSEIZ1VcyEAU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714317143; c=relaxed/simple;
	bh=3AP885Iua8pKoQBLfreb19gqTavAlCqlkZje6k1UhJE=;
	h=To:Subject:From:Message-Id:Date; b=doZp8wSAQkWP54kB2CYe+JSjNZfMS9gQRheTtQikGL05iD1u7+aigCjUwFYd3iAB0OhXPHrxHbbHLyLfbd2wMagm4fGNcOkpdbjkrfsjd2nMtiUr2BtQuAZ/j1QN3CMfpcxmiTowqLQVFeA3U17/wAAdsQCNIZEtTJ2PiUlo7fw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D6HBTaVA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D6HBTaVA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D40EAC113CC
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714317142;
	bh=3AP885Iua8pKoQBLfreb19gqTavAlCqlkZje6k1UhJE=;
	h=To:Subject:From:Date:From;
	b=D6HBTaVADI206T2NuZqjTTf8fMSsX+CDuePqAhK184aN+I5KB4Wpwu2cRErdLdj5f
	 dVdVSC/rqaCJiSDChcf6OB1X92H7DS/NkIhHiiJ/wUqt6eBejWuLvc4LhGWmo4ZSDP
	 bJSjC34BYku1JenC12xGNI02KOsxAjRt2h3KFX32D+vDnedU1XX7jAATFbSOA9/+XL
	 USxWd47vke8Y2Q/n5Ud1YgC8ZTLOyIoSYYiDKzj0nMPVQXBqZ6MuvxZNKBPQOfOzoF
	 OEmXQ7+OpJ1b0P1q5BrGkof1EHGI2xhMmzQNJ8a/gMvYJAUmpDdk7+Mj/tJiOm/ma6
	 3xz2w8Kqkg0GA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE173C4345F
	for <ddprobe@lists.linux.dev>; Sun, 28 Apr 2024 15:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171431714277.1056.14257702286306459538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aa9bfb7a9552633c7bfcd1c2bcd80cec3d8d233ba81e3c80a8d02f23c0e5554
Date: Sun, 28 Apr 2024 15:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714317142
