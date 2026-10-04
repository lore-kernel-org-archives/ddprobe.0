Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C21F3655D1
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791142834; cv=none; b=u+UZql2yCbKG1UJTPrzrVkCp2VTTnwg7H4kG5FdUYvA1wMNXAgr3IABq10RQMzuXB/ildlFF4Kq/ANFX+Dk2yOIogt9M2gpLsSgciL3eZ4tEJFYtSX52wJfiKBrxrQo2ndfGU/V9cD3O1z69LvsCG5OqClXGzhMdZm5aFOAcBnc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791142834; c=relaxed/simple;
	bh=0pCGaKtemJqh2QosujcasJVYBdz5SUK+D6MXuHJ2wts=;
	h=To:Subject:From:Message-Id:Date; b=BHUXDaPDp9HoWLT9vb2o5m3FdOD/nfDut3+KH7HaCbULn+IVPoI41qasJPC7iUf217vymfBdMP2Xnkmu7GQzfqzelefiHPZN8ojomElixaZAsJoU6dAmcBUdmR5d95MO48wcPehBWA3A93xzlbdddVtCfZVTGfFENQn6Gj99rJQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OonT7AX6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OonT7AX6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8289C2BCF4
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791142833;
	bh=0pCGaKtemJqh2QosujcasJVYBdz5SUK+D6MXuHJ2wts=;
	h=To:Subject:From:Date:From;
	b=OonT7AX6ohCEtU3ltTU+icDd9Lf23+43LG+of9Hr389Wy7n1s5DnqobA11xry4+oC
	 PIRZEEEjetrgx2duuq5uk4Y+S6+pPIX9g/ebWiatpFuVn7bX9xDcSJxYkyZtaLbEPl
	 h80/dPxrqwBrVxr26qoD4E6XmvByuvlI9tvXlDG8QffQJIOBUVwmcX0Suj5YefvdlT
	 ckZBjAe41Q8RKac+rVPeElrm5pfX6h2uL4cN8jwlNJrAMk5OgVTZtXJVXtLTm2di5x
	 K3ye7m6z5O7t2njQaAyBOmotDzkpQzvaNNfCFy12GJVpqgqSAq1dNGkJReH1ovZ1BM
	 egRZugW1gHd6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B61E3CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 19:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179114283368.1037.1662507231951068565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0bdaa7bd4f3df19868ca28705ca9e57bd58119c27d0f0072d70e38fbb0267e10
Date: Sun, 04 Oct 2026 19:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791142833
