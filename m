Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 75991369204
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:20:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791120035; cv=none; b=rEBM4nzwNdLOO3X1isT0h68h1ckj2sFuYMG2kdP6Qa7fOfLepmNGu9ChvmEVrYUKfH44Dlo7toBG++xtiUPWQ00i5r+0JBGNSOk/ne8kvV1GYgm2PZYLQRJYalkVKu1zYL37xAnFjnEWLBLnuSJOCOTm/AWsU2N7MMIMCGuP5xY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791120035; c=relaxed/simple;
	bh=OpXp+t/yL8qMZ+TuHtZcVUu4JuWED+gaWVqC7F0PZQc=;
	h=To:Subject:From:Message-Id:Date; b=f6PHYALEJvFjQc4WoHsNa1mNF04BmUuPo0jPcvsmuSAQNSyBgEBPyNw8oQAIfCXsIgsEID/eBp+HoB36pQZW896pJvvdZeuUANjQNeQ9H1mdFhaUbN+jUFm2qMwSnBvi2qRzywulsHCxLBK/FrWWfVFJ1b0D0Dd5Xcg6Dps9Rco=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qeJjeMoI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qeJjeMoI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D18C9C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791120033;
	bh=OpXp+t/yL8qMZ+TuHtZcVUu4JuWED+gaWVqC7F0PZQc=;
	h=To:Subject:From:Date:From;
	b=qeJjeMoIIzYNEdSFnabfGO10GfFu3krTscZBwsQFRbfijOsirnE/qPKWcIcNJAdD3
	 44bxAy8MTfQXo7OirGL1oZ4K1CvoHnIg1vXryhKHqnfLGGjmBrxxc5hOuMvDJj0GuP
	 4/M/dyYxsCS8QmTjcJUixpIakz/KPe34QQcKzRa7VHPbwEIToIgdAAt41ZraDKWZRt
	 c+UVVEy+9dNiHZ+gph3gbtboEhvgJPwxAQsriQ0uB++ZvLQMfcJ8uQZtpYDiaF4Iux
	 FRyUvMJ1BCTFpycTQjFKRwWc9oCCerPuwtC/L+CNYZHmCMvzbKLH+sVKyPetLBDfmh
	 cJDwmUzcpsu7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC556CA5FCE
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 13:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179112003368.22467.7734561130217211084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b04b9d428e932b5495d8531bf3bc400a894e6447bc70d7c44d15988602aa4906
Date: Sun, 04 Oct 2026 13:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791120033
