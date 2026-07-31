Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53DC72F1FE4
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785500434; cv=none; b=Btp1BGia+NWyTPpkiuiIAGAKzw8hjl4c6McUoFSDcUj8A4sfSMS4lTEqDXGlrMDbXStmtskLhBU6ZR4W84xgN4DBodu0zuAhpHzy6J9IE/i7GKgL0h4kPKLlcsoZ6i3gCeBBl4uLeL2HLR57g9Q/fbADdvxJbn50PXuih1GlMkw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785500434; c=relaxed/simple;
	bh=TH4ep2EEKzj8oX3CI6OnshBGHISpZlfB6tteo/5Ox08=;
	h=To:Subject:From:Message-Id:Date; b=X9QCuPrXVfqRxnfghR18fwary6vUKEkl528AO21HbLqwA4oJ5enGrFuxkfsWPMGNjXoakvPr53tEijHgDtDyHSaipmJ7gjuiEsO9+Cm3jQxAwlo6+IgcfbY8L9la/llJ4bfJPqO7lleRfSMsuuEnoXO8sFW1RES98d1+W2inYK8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mqH1pocP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mqH1pocP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D12A5C2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785500433;
	bh=TH4ep2EEKzj8oX3CI6OnshBGHISpZlfB6tteo/5Ox08=;
	h=To:Subject:From:Date:From;
	b=mqH1pocP6SeFtz0HbGadH7I4pHeBsUebNqOqgb+VIj1puk7ZONyIIn+zRFg2lGLey
	 E3feCAc1AeY3bBQ4Zoyr/QPLiRJMi2DnGAtkgmZKnYBEgqyB0BrkNXzWcxdAxRg4t5
	 YymksxAgRUmlCoHl0zzdGpMZOv6GuZ+TskCRtfJop6q6jH0epFhDbBVRZ0NUTcj26H
	 92GbVxzTuTb86TckpUb70AlV09JwGNizHPdFVEtPJW1UHZIlrfIJe+wQ7Q5T0fEXn0
	 Cqp/CEQK+kb73aFrvd3HJ00ncJl//biz54j3sEtvIUTZ4lm+ACoFAVzLcUTpqimE+j
	 5edL7nzCVtb/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE155C54F54
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178550043370.10089.6498953626645146162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cd43c9f55475694dc03b9a0cce2eb2bca00e9fca596953cbba3421ae79b8f35
Date: Fri, 31 Jul 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785500433
