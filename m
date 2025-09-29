Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B83881724
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759148394; cv=none; b=Iut7boy9jyf7jm0O+Makcwca/3S9WVSKitpJ8Dx0Dy9zhpfc+URCyBoQ6Q7uZjRFSxr9M9QtZvF4kzfAohZXeMuWa+M6HhpcWJx0ZEpZ8KLr36M3CUzz/M/FpgMfm110LRM4IOH+ZyytKOOJN6c13a4oLP8+h0h3+Ff4gug+6wc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759148394; c=relaxed/simple;
	bh=yCIB2Mn76VL5Hyc3wZAfSDt6R4sXrxA8wBqP2Y2qbbk=;
	h=To:Subject:From:Message-Id:Date; b=F8Q8yoTcYvP0haV0sixGLmHWg4sAx/lbuGzoKmItzI1rPGMWslfjUJokESDaOY7DTVaYCeTYwRYcy+azARmrUIoPM8snCS+6V8kKEA8QYY+ImoKrUOEyteU7eKYVdIe+6ZSYRGy8WQ1BzNcQHLJBvUnASzaj6zNstPdt8SZ/sH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A3l8RVFe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A3l8RVFe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B237DC4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759148393;
	bh=yCIB2Mn76VL5Hyc3wZAfSDt6R4sXrxA8wBqP2Y2qbbk=;
	h=To:Subject:From:Date:From;
	b=A3l8RVFe8fW0xK8bXq8QC9TtOdabhYkjK/mY74qTU7612AYscyQYUugBLXwSgsbn+
	 Fy+Ignbv0ZWiUsSAqOuVTjXnf4hxFsHV3E5MuHFAQ/jsyxRKQaf620Rpc29Txixt2B
	 nZjOXfQ7tsleyWddSelWbXTGmbCWdyu5aLtnco1U0WAzwrkaZKIQ8OO4TdNG2She6y
	 nSD2yqR3JHRyQ1Fs3a5XULir/RI5UktbHigZEa2La4zoQTKKg5PgYVnnmnlHPPezwW
	 EtBYQ5Wo0ryJHfWZof32CsjbyRo1uDotLUvLMaNlJqitR7K4zX2aFxOZz1TBB9O8kq
	 GskjA9xendiVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E078CAC5B5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914839363.7415.12427671328855730094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c622efa053c205b61ea2690be9ee62e956364b6195fdf34c58ce9bf5e63351c7
Date: Mon, 29 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759148393
