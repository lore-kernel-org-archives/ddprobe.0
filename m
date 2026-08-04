Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 459DA47729C
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785869434; cv=none; b=qfr+SsZ42SVSQ88hF/a472fR4XltpNO3WauXmVh9SmFoiWzIgYLcntO4S04TnKgUun6OnEgjegeqtksMu8RSs+cwF3mjHNgA4kyLwMI5br4PPNofrcubehICBHlq/53ANCvYI4E0MCDoUqi3ZBnDhfb7zpHEWdRjWnwunNeP/bM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785869434; c=relaxed/simple;
	bh=h/aWSazRAxIYG4zdBajdLh0yrCFGnFmxiZmMVXk3s6k=;
	h=To:Subject:From:Message-Id:Date; b=kMzQxtb0XgmNZ1Cowem2peczmfK9xIwqEQHAE9CLQAk2egtCdhna/tgjFv4WbrD0iczew/dncs3Y8oMDxN2G/KNVqJvKS1EPNVcSAzzKgfcj90XD6q6FPJ9bmqv95pU+jibPBFaJptkJuMI8D1dlcnOsfGtngzl5fhJaolusomY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=R7Xt/EOI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="R7Xt/EOI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2EBCC2BCF4
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785869433;
	bh=h/aWSazRAxIYG4zdBajdLh0yrCFGnFmxiZmMVXk3s6k=;
	h=To:Subject:From:Date:From;
	b=R7Xt/EOIYqFIewSpwQsLl8BdB801z2kPD9mZUD5yCNh12YfB7ul1p4jduvNianHVa
	 //yd2c1bNxBNOF72ygVTO/Lz0LV1OGvHv0Hix0Nk5XwB4Ij+ckTAWv2IiuFJXKddRl
	 HBFdNMI0xM6NVYPHKrIM4uva2aOav+lfhiSo30DVzaZguBODfydwBB1Fsq4VIW3OKJ
	 OBrS3PR+jY9sXbJmqZP5nusKELGlw+y24kkbvmhaGtWDkUIE+tHzJmetJ2oJk+jHjq
	 qQoup0IQLj9UdyChSHTXvhIlce7JlQzSxTGzQlJS1cZpjCenMKJPOqFNXg9KxMOqCZ
	 PqerOx2mruJaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED25C55822
	for <ddprobe@lists.linux.dev>; Tue,  4 Aug 2026 18:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178586943370.14303.2111932327348543320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 020c7600716b3ae3f320ad566af346c46efe786145f3d723f1353a0c54f70d9d
Date: Tue, 04 Aug 2026 18:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785869433
