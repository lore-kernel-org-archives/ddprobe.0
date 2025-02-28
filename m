Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31AD41ABED9
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 22:28:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1740781734; cv=none; b=VQnzUqcoXJxwYAPMNi19lRZ1gX6ow3ugIfA15VFYS3jFCrf330kF37a8GRmQnz8pg/cZAzh+E2HDxSIe17xs31OXyDpwgKmJMG3Ug6hs0mZuCEuVdJIMTJk4xwBUofYFAu0IJbMSLQn+H+ljzjKoDe62mTx0GIZIGeYonasZnh0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1740781734; c=relaxed/simple;
	bh=3CxdggPfQgM3+dIe3G56MzW94OPsnt8RSEXBklsHR3c=;
	h=To:Subject:From:Message-Id:Date; b=XdRvYzy41vLea9zBnF9G94+5AMH0F0V1FIfIrHn6uBJ/0QpSfaA3cyY9AXHor4WOmaM45X08KTD0ayKrrjXOJPK1k/uOHweEd4Xub3rNC2CvVDz8gKWvBMgnaSmpRB1HZs10s5RPgtk36C4dKaq1hlN3xT74/ihyxrtQfGVHF88=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tj90RW2V; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tj90RW2V"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEC63C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 22:28:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1740781733;
	bh=3CxdggPfQgM3+dIe3G56MzW94OPsnt8RSEXBklsHR3c=;
	h=To:Subject:From:Date:From;
	b=tj90RW2Vynkpq/9SqBBD4fvgDY4q/7YtgYMRx75tTSnzv+PDxlNLl3VCoM5GnYG83
	 WaSTz76kFm1UgJpOu/AMk4n9FpmoVBEJrUQPYFEENmAHQzzQ+Gy49SXE3Q4DHtaOO5
	 uo8QugQQaP6kAsPKItuiUO9HjBa9bS617gchF2o4cKkknwojulilWkCD9xu0SAI3xP
	 T6C9/Vu3Slq/bbvuKbmq8tdYT4n9T8dvzaZqTfzSQ94UtO3eE/zADVu4ODTFG8baq4
	 D2QUUombjY2iBUvsAx3LuvkqVpmc1P52R8FzIzTg2ruVBeNKC9Th5ATjQ8QUZ01mJh
	 qL9fKS8Enl+6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FBBEC282C5
	for <ddprobe@lists.linux.dev>; Fri, 28 Feb 2025 22:28:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174078173364.29027.173351330293699975.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2068242bd257fb79f82cef9296989a581989c0243f65bfe5828c7f0415ab5ecc
Date: Fri, 28 Feb 2025 22:28:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1740781733
