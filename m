Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0713D313E38
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765785774; cv=none; b=bDSoa5x1+OtXdt7ipJsTC+f8PQEv54sGEOg6eUaqJpFgKUgvuob8RQlXcB6qwHvollDFj9bf0lSu8UC9WRGC2JlULgyVctMOiIC95FynMNKEa1PkxjUKPHP63urckaZFzEmwIXlIhbrIefltBaJiCOMSaKIosPqTZYQxYqBaJNU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765785774; c=relaxed/simple;
	bh=QCgGhSm04++rHRKQMUNTxZohZvfrqB/21x8wy+dVTps=;
	h=To:Subject:From:Message-Id:Date; b=hvwT76rFYk64ObtzU6ZEId3fMyW7+s/Ti5xd5GDuTKCp5A7Ok2/NaMXSMmzJ3yZ+DT9J861CTdBCIs2XAjXdBornVwiC8jvHUIIlQWJJctxoQfz9frcwXOlomTUhwieBZmdTCIWDjSmylU47v5RUzuADPnHBGCOLhiUl/jgvxeY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iAjkw1J4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iAjkw1J4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EC4C19421
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765785773;
	bh=QCgGhSm04++rHRKQMUNTxZohZvfrqB/21x8wy+dVTps=;
	h=To:Subject:From:Date:From;
	b=iAjkw1J4ZGWD2qERdh6wUqOT7cTKCTS6qnOtVtkNIAx8ftlBgPvvbPUUwWKQp9GaN
	 loAL+FFpOcFkDcwQxlXD0aHuZfxqsMe+8euLP4Tq7K70ooChjmGiz5rc0tJ+c8pnj/
	 nN8MTHUwfq+bTeYLfRW8Ms6UG3P2gRVJ1LgUUJ1Hr3nZgpWSrwq5RkEORe5ZD0oGwO
	 IZe0qfpZCJV+Ug4W3C1pSiDyG0GhzYp4tBXUs/xBPqLojuAvBPn39/Vcb8VoI2NR6l
	 IzJ3t3H++qqPUZ4ppV2CAwKdQ/GHS8eP3zgKS1oq5skKuTXckZALPBwsbjuZFXZEwO
	 H5x/r0EFZXvfw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9199ED41D74
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 08:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176578577358.7831.1339963112708715815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e515b13fd758a764876ddd0b42871270122e001428dd5bd2d114a6d413c650e9
Date: Mon, 15 Dec 2025 08:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765785773
