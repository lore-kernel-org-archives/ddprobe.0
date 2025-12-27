Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 218681A285
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766873634; cv=none; b=bbSrtEiDzcyZd0DQLFR/o1i8OfEb16nqagOASL7CYS/I/xs7oaucrM92FqMzPyqvOurto9PRiuGIRYUg2JbTL/FQ5HOOOhL771XhuldZUB5m3MTPCkzUbrUW8tihNhqr9X3EN7agUX7Z9rLiy4LRizwKxjbJ3RgvTeSEGLiW6Qo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766873634; c=relaxed/simple;
	bh=IJzAGSJBRP6dG4S3qEnnBFwxzwf54juMZ62ZVKMPyjo=;
	h=To:Subject:From:Message-Id:Date; b=CU2l4WnZsRXJsgTbMvwU35t4tC6LIE74pGQhQtrcSG1rLJbzrZBehgOwGXchZCu/tc1sfaZyHi9pLIZhG08pZudwyjdj0ZrWdHV++GZ+3Wmpjx1whWoFygIhsSVjplRvaUAhJqkAQZIKrMsgSmWR1A71jZvicde8MfjFDjGliJw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ovI+DIj1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ovI+DIj1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4675C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766873633;
	bh=IJzAGSJBRP6dG4S3qEnnBFwxzwf54juMZ62ZVKMPyjo=;
	h=To:Subject:From:Date:From;
	b=ovI+DIj1na2I+F4oHSTacyxsmqYDD43KrPm+yVOCXZhQcuR5dCyE632NMnOjCUgQC
	 sGkQOOCXmqJewhzE6uNm7czaE5VR3ViADF2J/TI2Hl/EW2ayC0Xf8t+cOQzHDAjwJx
	 bxyU0TDa7MDez+l+axgb5BRFPEzFBrYUi3Ec0OY3DJINqc+YURADqfHi5hbCsvH3rZ
	 BqorFZEmc/g1PdHFi1tEWHvZExBxO9iN0M6YtiaHPj7CezRdYiilsx7PMJzIP01aTv
	 mKC24VLJI/JseWKcAmPVqEyC70zL5u2O0bXX0tjAqkPUJFcqwz4KgiV/wiW39QeLCx
	 A6axBTV2pfchw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91736E9270E
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 22:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176687363358.9217.7596764619808088477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f07deb715f46f67cb201cba30ab41fe30b1210f6569c756a9d00bfabfb28ee04
Date: Sat, 27 Dec 2025 22:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766873633
