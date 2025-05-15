Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 366A120C000
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747325395; cv=none; b=jb1PdLh4ZtqMOmDvzJxpR6wdCNv5cgummVnmVANksx2ZhF7S72sGuY8ok5xkbt6NekROEzBf7bt61NTdSGBqVlGzumFUZ7/v2hXP8x1hUhJH+MATHCE0aMV8zYY+X9p75YRFDBfokLoeSDiId+CSmgbIsK4T7g8GVGa6NGVnVu4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747325395; c=relaxed/simple;
	bh=q/6P4CORIqZUyY7Xy7rIYPPx5CvzVxfaGVDqE2d/Clo=;
	h=To:Subject:From:Message-Id:Date; b=fushjHldIF1tSX2BuC5stwTTtu2QMEdjJO2gqDWEJuVILbDq4ndZ8L/Hf0LC07yTBLuot0kAvbNGerUJbK3I2VilR5IIoAV+Q3xAw1PNP7BdXC25fP3vK9AS64vvGKAs5/7ei6kqEGLwiGgI0Io4wihFiOX8ygaBtYl0VkStD2I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VyNGUf9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VyNGUf9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A95E7C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747325393;
	bh=q/6P4CORIqZUyY7Xy7rIYPPx5CvzVxfaGVDqE2d/Clo=;
	h=To:Subject:From:Date:From;
	b=VyNGUf9nOXN7T/8f/zHdlIwbdx15kANeglOo5eJYSOliUIBq9hwu9GMAnjCrnyfRM
	 /8hgNCIaL9Okv5dynVMEKISyQbyNCHagGyAL9Z1P+lA705NOuNdc3TwdwkK6+p37pi
	 hXpfIexG8luokcZUCNfFV6Y5Nr+F5IyjUUZnN2/sI9XyO8q1DLpHlp5eCpBc/9EkE0
	 aQNHjoXAv/NtDCeeWm728CJ/XmTkMk6BMswB5XKTWDtQeAoxcqET+jh52QduRuD5mr
	 6pBjNDVP3j606czmt7BWQs2uPH2byXh74mtIVfUlwghZgTULZkkexlyzMJtns64wXc
	 lRLZ+SgOGAIvg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 953F7C54754
	for <ddprobe@lists.linux.dev>; Thu, 15 May 2025 16:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174732539360.3242.6153758622456215280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f14127c0588a1b635730ac7db44855392dbd5ca797c14e05e95f4c0547344efa
Date: Thu, 15 May 2025 16:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747325393
