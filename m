Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C202339398
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787221834; cv=none; b=PjGG5IK1Jf5k89Q5oXe87b1OB658AEmzLJd8bbBWEtJj7uyuSzx8iIoi1PfMbVqVRZJb+BuDInCeVRbpnjezGS90o263kCUOg5R+bSTL5ICh2YTBe/HvfGyJhdhaPm1VjZmUXL7+k5g0P6nkIbeJ2FgMV/N3IRifX6HTf5rXRC0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787221834; c=relaxed/simple;
	bh=INwVTd+NxgRk7Pt2NN0all1bpYzzkKtkOvBFyZjgzYg=;
	h=To:Subject:From:Message-Id:Date; b=clzNrwpMJJ+WS4Td+kQJLo7T6luUsBeEF5+I2iUG7ClJ673Yp8ck2L85tFJ/X7Ig0q470V9FLF87soq0Y9fJbBtW/3EWZgoiYwHsWHUP++amfUyHf/GSPEpYjnL1JlVQDrBaNlSGol3C407+8cHprJuGxBx0M7Za4lJvK7s9GPY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0CCcDpW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0CCcDpW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFFDDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787221833;
	bh=INwVTd+NxgRk7Pt2NN0all1bpYzzkKtkOvBFyZjgzYg=;
	h=To:Subject:From:Date:From;
	b=H0CCcDpWK3k0mVVSpbUhuQHjX0wQiH+ckvZiVlRgmrPu1IRL+9FZ9bcVDdWOjZKjc
	 FlUL2IO27aTJI0Me/KdKYva/r/BSToSPlJpCaowKYp/7steBJghPlp5RjtxCOeAlje
	 NfOuH3KcVJkVnZ+37ot4EgGKIWmwTM8nDYSs5NrK0WbYVFpIoBpc26B1/OxS/FWI6W
	 w0P5gS8vd5sJMXAa7iaiPqPF8fPmxQUeY458PfrGruSTDa7Wa6JdKQApB3evDilmw6
	 llX5/X9AQyfJp7t56voaf2fW3cBdZWEFehnVjcy1KFs6CkgBqwBUFep+Sl9rsYhRvc
	 TSDcp3OHbM0Yw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B83D4C5DF82
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 10:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178722183374.14450.5397423646741828445.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 02747151747626f7965b49275f911d1f0c27735780a23e6e26688506242944ef
Date: Thu, 20 Aug 2026 10:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787221833
