Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A3AD1367
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737772554; cv=none; b=JfF8vfqpjQtA2cEvhYHuKZdhPCeKDRT73qcfCqekjGG/gwnNUhlyMDumrWfebBvSS7WeSGUTtiV/6tn9tvVMzqcQq1fweHccYioIv0yQX2nb+8gU5QV6bTNB3RPxrcgwANUu9LGDyXaUFQrsRaQzO+NpEPaelcGX0VjQ5opBrjI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737772554; c=relaxed/simple;
	bh=a4B55N/kCv+FYvGG0GYsiSgj3CKmuiQ4MMAheNpclYw=;
	h=To:Subject:From:Message-Id:Date; b=hYkY0h4dhAENFj3AgV7bQOrAK19PNOdD2kY8rkD5Ucp8Brp2aB+KoGAwSUEFiSICYT1DOhp0579dFphywxPOXFdJ7V7SNvzVM3Edz8T/j1Z37Jo9GdwFWJG4ZS2rtG1jV65tPyX9bKL8m/TMMHsBtK+3qY4OvpJlCpGMrsF5aCo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i//RxjE+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i//RxjE+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B150EC4CED2
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737772553;
	bh=a4B55N/kCv+FYvGG0GYsiSgj3CKmuiQ4MMAheNpclYw=;
	h=To:Subject:From:Date:From;
	b=i//RxjE+YiU7RA8JczAlVudNMoxb92kj5FZQyv2FsXNwSV5Ms+1OPuDAFrYhON/aN
	 Gwo8KIkG1tvjhL2wQteHFsAgJzn+vJubFpX2iRmACBcPM/oQ3nEQbeSBD5G+JsQGd0
	 CY+DdbZclXunwAluvba4SXJD4rCpPGNE66koXc7sJLGCzxhhukz7oMk3UpHNovZXY8
	 XmfjjYjaoUl9NZ5iUIQi8t78NOp1i8UHqTpoa9IXIbkPUOOa8oCrOao8pFlTMRw11p
	 JytHSO58hwEFRlge/r+E02zv/m3Fa/EZ8WYe+pa3gpn9CUKgwrMwDndLfSvmar0Ys5
	 M3Ssuf8tDFOAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9800AC02181
	for <ddprobe@lists.linux.dev>; Sat, 25 Jan 2025 02:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173777255359.21895.14203566253560076503.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 513e54ab1185df1356a9f8efca0f9f9b91c0ff107c965bbec4ce027a22ca20ac
Date: Sat, 25 Jan 2025 02:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737772553
