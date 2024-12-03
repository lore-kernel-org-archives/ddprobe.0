Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C3601D7E21
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 21:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1733262954; cv=none; b=WLZgnMBqmgWYHBNQicBqWYtaBc0NIEMijiXeAg+xdmvbIQS8dyPnMDZaU4h6oO9/NdEnKTda8sI7azNgbXNM7o60ZLzlO3sJJs2SwiH1B29MppJGkqfIPc02iD75jhzjtX19yIcF4Hn4aoFgs9XBentBe6ofhaCtydAQ391nFIg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1733262954; c=relaxed/simple;
	bh=Y8wny2kGZnVPWPI6mgw2TBiqsidmrm10BhJNfI9DiK0=;
	h=To:Subject:From:Message-Id:Date; b=vGMj94NN48DshSsBSEn8pXBgc3SepgbT5a9fRpxzKo86l16UL6hU/+E3/Osrd9jz2u+K8CxLaTHsNTeuHj18wyzl/E/LY8X9N+0LY11CV6a0MZeaaAh2YQV24agoSO6jV2XzLNiCkLXe/6g/D0VeDm8U2LzIqKKA3VPfiQ3QM1s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uY/4ND2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uY/4ND2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6A13C4CEDC
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 21:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1733262953;
	bh=Y8wny2kGZnVPWPI6mgw2TBiqsidmrm10BhJNfI9DiK0=;
	h=To:Subject:From:Date:From;
	b=uY/4ND2nuoXH23EXBJFsCcBHsx8FYkrelocoKQovtn1/cjaRuUUWWKo+3RAjRlhK8
	 oJ0f9p0A9XIzWx+bqe0en/uiTcebmf9lojAaZbZRWdYEdocZ9gD+K6roCV4DgrwwhX
	 z+Lvre4Q1Jx2I/2ULSvnG7uoUQ96rfWZPy4TRC45RDPWGm8OOvlDxPGgwSo5So7QzI
	 j0GHd2sza1cktoHSfJUE/PGqNnZYa9OcrKv4dWZ300WeQeEFs/sIfj5/DPW/VwQUIF
	 bejh5nMCfoSmiV4ODtJcldecBCL9P1RQoPf5q3pq6ToSwblAwWJMTIrPpqA2oyqvQU
	 EGI6BRuaBgggg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B5EE74ADB
	for <ddprobe@lists.linux.dev>; Tue,  3 Dec 2024 21:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173326295360.13789.15316779406071352062.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5c12369d3e8b8fceea14924ed815d27a67ebb5c987956b0a871ebda2db0fdc
Date: Tue, 03 Dec 2024 21:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1733262953
