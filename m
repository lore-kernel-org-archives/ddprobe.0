Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213E327A103
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757953794; cv=none; b=TeR1On9utZ6LQ/6j1K5gpAWZQDY4lnKEOnwc/Vih79ru/ID+bQz+DItJyWoljWTWQSIczB/qD+5o+4V0Z08KyV9+PcsiUHwMxijhyj1Nl25iW0UwnTwNNAvjd6cvFRZIuNT8aG+3FO0wuwEEgiUwwLV3K9qN22/LbVvoU/LPIRA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757953794; c=relaxed/simple;
	bh=rT5gONkhZRpeBCM6b+hNVcdLPRxt7zxXVmHYzGFxVjY=;
	h=To:Subject:From:Message-Id:Date; b=bPTcCn1s5Z9uWrpi6oADjjrc1ZATIF+texZUPIrjh4yCgXfdCZqdQI1G223NSOjBkpVooNyeTY+wbHVXrz5+yDvfh4lbZ5szFNr+d9z48bGel5QIuuoD8EUAmdVVrCEldpQkHq+8NjA+GAq/h8WLwCsIorJ7DBwZBTbA064pL5Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o8NeIXKA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o8NeIXKA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1113C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757953793;
	bh=rT5gONkhZRpeBCM6b+hNVcdLPRxt7zxXVmHYzGFxVjY=;
	h=To:Subject:From:Date:From;
	b=o8NeIXKAJJF5Q6FR+J29TlJ079rAxWCKvBiJEgvRYr8jCkWDj5TeArWBnuh/4ka4p
	 jfAH9TiOHmkJRzx+rB2ZMc8m2CQ2BVKZ8jtLAjETHMsC5Lef3H6bkULhgOt+llyLPr
	 2kt7JAZZgcqrYZq01j5ntGrQwpAjQzsUmD3kS+R5Mr7saK2i6tlIxi8+V23++JUZN9
	 a5pLZ4AUyNz9+9PGnf3OjDR7woN1DcM/slf3YLhPfxMN5xyv5vzEGJKTosCqDg+DlU
	 Mgw19LlXazOPuLc9p4uIB0JT5bHXpB8zAADSzOg5QSIoYMMZ6M7E3far732LfgGGKK
	 SCkpWXCO5KeWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF60CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175795379358.29204.11575480142097777574.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54de1f78be678d5f6038a2088d58a09d76105add7c0809f06cb53a3d061df1da
Date: Mon, 15 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757953793
