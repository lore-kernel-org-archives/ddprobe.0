Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B5B524BBFD
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781745994; cv=none; b=loDVx+EyVVw/vU4zAqoQLMApAyUyNrtRiS25XNlRgjKDj2N420AJFXZd8xi7i6Y7cMndLsJ7tTHa/agaDjtHgqJ/uPTeK+cUbujz3NIYBZVu4n+vKJLh9Z3d19zDamKwa/NV0Z3nutz/oxIHktXs7Yp3jkmgy+lVz3p+J6DJMwU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781745994; c=relaxed/simple;
	bh=h8GzCE6o+cb43rEaUbNf3tT5MVqciPsP2SSfarSn1rQ=;
	h=To:Subject:From:Message-Id:Date; b=Mt95xp+3yr9SLd3EifWtzaao9Fq5Ej1ouxwIfY1hFxdSP4bzfhjsaMMmL2o8rVb8+8WW7ZPPy4Kmmhp4g+F+q2Zy3DF+YEUiqFAIbEZfHKq0fDNjZ1RLZ+5EaTF10hXytXBjil567C8F5rL3foMmPCw7EXXJ+gV0U6CPdQOWh6g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WW/A/qcL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WW/A/qcL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA793C2BCB0
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781745993;
	bh=h8GzCE6o+cb43rEaUbNf3tT5MVqciPsP2SSfarSn1rQ=;
	h=To:Subject:From:Date:From;
	b=WW/A/qcLXA21mOMjMMRMLeaPWpbxbeyP67y2RjJxxBIXEt2kRg/rLuZ8ftOun9W/L
	 CvXZasUvVnlrCg0D7IWtmpU/4Ms2mX3p/HMeLqa5qAskXJAKm/IFJdtm+YuLvkCDV/
	 Zwi6U1Skt81PsInsDRfZY0ndhY62BYA/vZ2kQX+ChG1Cw+lR5BYmCWJPjz+EcDjP7a
	 fVvsD3hqaZtGVcT9x8Lw0IjRLvKsmOqhhhMfLcjPdygu8kpo3vORdo9A4EMvtKOXrw
	 IsXb99nyVN+tObngtRcXn/2OUljHrdBSEkYLyBzlHmS9ejXEhbznJ8B3sctRhDhyLG
	 BPYO9WeEUb6Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6A38CD98E4
	for <ddprobe@lists.linux.dev>; Thu, 18 Jun 2026 01:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178174599371.10347.14054342120901420321.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ae4fad4ed92148b2fd4c8bc2d04c9dde0ea02d148d961c44067407f90d497b8b
Date: Thu, 18 Jun 2026 01:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781745993
