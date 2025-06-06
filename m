Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDA4193077
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749224394; cv=none; b=n+K7R5jOzdC/92BuVj1vy9BF263/DKd6ut8JZjnnLLzPt/MHpDujtffZ+6PYIu5Ttii/W6CYPi+Py5dH5mPyFCq1gnBX4iLI4kJKdqRscQLuvfld6Asb3xCFnsfI5HmNR/ummKJ34UF11JrD9/PLTRAjjNMGQn8Sj1rxQxOVt7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749224394; c=relaxed/simple;
	bh=dbvxJ+pxpJrO3LPOyHvGK9QfgFH2W3vvsG/jB12Yx/M=;
	h=To:Subject:From:Message-Id:Date; b=V/stfvSnkBCxQGjzLgojpGYqGo9SwiIMFKxEtNlmrgNN3YmP+CGXSkWvUSLnnc54+n0k600DspYVbM4V31ONAftDMka2qICIIgV2VrnkXq7WlQCUOX9JgkPpurxCK25uSuXI027XW3P8WVSA0xFGFz9QRhYRZk6ynpXcqMOnGY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bt81VtL2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bt81VtL2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A14DFC4CEEB
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749224393;
	bh=dbvxJ+pxpJrO3LPOyHvGK9QfgFH2W3vvsG/jB12Yx/M=;
	h=To:Subject:From:Date:From;
	b=Bt81VtL2zqK3ZODMV2pi+XjMHenkGjQZV5Kn+WX721tisHd158TmQzhTuqhI6r0vX
	 N3P6QSfJ5+jRw3pEV6IJ0H+p7OvOc4neW8o9untxoz3TKfKsTlLrTHWGhBSDLT+HJf
	 38zbC6yd4dwyc0CSADA4WBG5b74PDdLTcKQbyXJuXrD2IBwgpxnzhviPaOfNeJ3shJ
	 VlrwVesY0Se9ZNWp0jj3YAMZVVyaGy+LUV5Hp3jtNTjLHf2osmLFP3bEt4co8498pX
	 y35NvbAucGgJNCwowq1c/OadCWYCUOviz36oGtYebS04XZSjvbDWi7DDALaoUkgxpe
	 qhmTNaMSJ1QxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EE9C5AD49
	for <ddprobe@lists.linux.dev>; Fri,  6 Jun 2025 15:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174922439358.30197.12467015617283896790.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5f5b29ab517fb0054e0a25e11b2b587e4056be9e60875696c94a81d6eab379a9
Date: Fri, 06 Jun 2025 15:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749224393
