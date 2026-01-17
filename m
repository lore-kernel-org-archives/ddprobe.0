Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C1982367AC
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768621434; cv=none; b=ZL7PKrQqcDBSTJ96CNsEgiMs1JxNSXLv1sCaW3NC44ldycJzRjkD/m0uxD8yRFiguErQoutW97Q6lT3UBzqpuXzaK77n4Il0Y7S90c6ecGGYQ6w649/4+FIIJmvx2/7xZvcUD5Cnn6KIKgpSvmLuxKttaZ5XmXn8R2s6n1uGUD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768621434; c=relaxed/simple;
	bh=jXjTTedqrPT2MD9KRME9oBx4mLDdjTfDjCiMMSheMwM=;
	h=To:Subject:From:Message-Id:Date; b=UVo5mvfK22dKar+XmXm9BN2VhWUvmZP+0VLs0Tp0LDuNpU/D1l+R0lIlXlHjFkK+qPZXzS5K6dUyaG2nakw4QnhAYF9IjJYJKoYvW0IZrgRQINsaWgoh3yANDAZBhba6KNHf6XT6WE7hCyhd2JIKFh+Nq4tlWdgPJDWZBhdAB4M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DokicVMh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DokicVMh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4297C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768621433;
	bh=jXjTTedqrPT2MD9KRME9oBx4mLDdjTfDjCiMMSheMwM=;
	h=To:Subject:From:Date:From;
	b=DokicVMhsiomko8sj4dNppo1G6jtZ647w47tspbrIEfF5QV+4iOMJ/7mxkaxrJDDy
	 V0GL0qddyZQRm0GCfsMVXws4wW+1WrlCVzvfV3t3dI9K80EikTtBO1/JlLGY2iAb8i
	 Zw8SAI168/k9/mu6vqx0QBhD4j37aOy49VxgfT+9vJW1h6U0jNAbcAAh4bBrxbXycK
	 /IFncS7bTaPhw6rh52SzAqOBkGYI0UOnMB9kPsJX1dfozOtdIoC6gzQKUNBmGPAeSO
	 6aPyhkeBJzr4x38sZk0rVddm1PAYdFKsUDN+7F2gQDgGeZgmIk163dFWdAmlppYGEC
	 d8GRypeq+otng==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95AC2D4A5F5
	for <ddprobe@lists.linux.dev>; Sat, 17 Jan 2026 03:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176862143358.11919.15312231396645541264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b556b22ed17e53de1833e858356240edd31a6c5cb27a2616b95a3740a1de5280
Date: Sat, 17 Jan 2026 03:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768621433
