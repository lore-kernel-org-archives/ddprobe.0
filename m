Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34EB61F7580
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753741794; cv=none; b=E/S8lfUBxyxkWPt6EA1n50FfTDkIW//yZcjxrV9QQuD/Cn1TN9DtkKREzMY8QFfDWljXyO/wgtDAbmVgoahGQocKBLVrJ7OJ+HEwR7ehgyqdBcw7X4ESZ5Kd19BSxaYtpBt2Xi56pfDR/VZ1PMwVmSHQgUpqno8RUaK1dD1A+Vk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753741794; c=relaxed/simple;
	bh=CckIsWNhYjDZrkzUoq0KNqzd+W9WtnN9tNes49jJmeU=;
	h=To:Subject:From:Message-Id:Date; b=OqP58L3Q4+AyxL18sJVs2+OF7tltgT5Xw6TeSLM04xNP9OS5JEYneO3Ho4coCp+W8NcJrZmHMURQYgSZRA8umXNzAhf4tslJHkUxMCfBwv1ElmW0gYslgA4+gPgmJdC9MHxCqDT3Qp/e5537EW0bfoS2qPje9cDkAfzyNfGqOXo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mrDDqQCr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mrDDqQCr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2EC9C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753741793;
	bh=CckIsWNhYjDZrkzUoq0KNqzd+W9WtnN9tNes49jJmeU=;
	h=To:Subject:From:Date:From;
	b=mrDDqQCrsynlPXTOWNngXN0f9U++XOID63ezEWvnF71wCfXOquDczpDIwPdpiRtUE
	 C9eyXx64SxFYSkMIyYvmgahUUwrK9dPQ6lFX1nKNJWaNaDY8JKhy+c/oHjQeD2JjZy
	 iu9tl/ErZ4yUXKLYYw1ogl2mxNQ9j8euyc//H9Mz9L6m2lAUmr1XaDPhQb2IunN858
	 TxKtrMCW0Mwff6QCQL+tOkkwd+vT7iqrj0NR/F2HIJlH6Fm9Z2zAgGphcHAR3xpJg/
	 Sy3bHlA8s6WG+KtjkKb+NyfRVy+91CvlvygXoTX7zdiOXhEPPi3iL9btq4ZWINcz+U
	 3ayYeoM7KQmcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90B30C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 22:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175374179358.13759.7555199709775908406.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad6db013a90d4f892ea50b4be637d79d8c2c74e8ab58c68ab33398542d14bbc0
Date: Mon, 28 Jul 2025 22:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753741793
