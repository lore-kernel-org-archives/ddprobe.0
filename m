Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F3CA2232A
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719177143; cv=none; b=Ftu3DOZYs9j1jTwO93QPTl8LEC39FXICi3ixt+05q2W1ldcR++N103yf8603uh93VUWljUCI6hCKrAQPEN/NM819ZI2UPaJu/KM8TLDEnOUUwFO/jvj+pi+w2PPxz6HnwAO/IvYxj884Xytyf0zv9WttmrMdxiEou4PzTT6Lccg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719177143; c=relaxed/simple;
	bh=dRZ8afY3kY5+CPipfzFjMSy7ZchroGkkYcWEwwDtNKw=;
	h=To:Subject:From:Message-Id:Date; b=Bo72tp0oF68U+wxZoYDOZCFZIUgxFHUa7EoJSpjrL4pqxGvCdN0hN/nNbY0lTd+t4qvkfDBAobqmjvMBAB6874a3F98iOWQHBqwD0XO+0IkdnxZpZ7yIHddfheb3OS07aHWUNTkDZ2kCLg/Fo46QefYFvLh5P428bR7Sc6Sb/tk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twvSc+BR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twvSc+BR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB71FC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719177142;
	bh=dRZ8afY3kY5+CPipfzFjMSy7ZchroGkkYcWEwwDtNKw=;
	h=To:Subject:From:Date:From;
	b=twvSc+BR8prrVblTs7wipdoNc1NhrMGPqFVIWLmwKHYwBj7b4g9D5IbVMJD0bf5vR
	 uOuxE0oY6yiNhYa3aWWZrlmflEXYFYI2zYPd7BO7V63jNyvwhw0ZKFsx4oyd41NPz6
	 qZlrmvWbGdzp5Yf5XLq01lAk2wHE+P2qL9dB7tCRCw3X5vItyrjNag1joaWxGDDFcI
	 gLZ6+s+PwDL/aL4oM5vQSZOBF1Zzy3UF/T3O1i5t0VfPEbMmdK7f9qZzCL8HC/8UMZ
	 +RcLuBdpuJrTPrkmLE7QpZXBF2DfILNkZmG0uvCPe/XPXTQyMZ0NYR+0TIIEyJzQrF
	 ywbGD926ZFSug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C63F3C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 21:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171917714280.30009.6807623354843111778.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 92abf996b309fce1f7b8d23a2059a7604541dafcbb8b284de68be76d2db3c9a1
Date: Sun, 23 Jun 2024 21:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719177142
