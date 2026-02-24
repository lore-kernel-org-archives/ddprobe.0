Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C9D84369990
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771930493; cv=none; b=UBSdC/hMik6ghbjPM2+zCwhl30Z8vSvIcO0eAsTosvXcGUwnjdZ9GNp3QvcneQMKXnQ2wFiCVD0wQkOIlTekzA4KeqM7jNxB2MfAH4SXTJO7XYmC9vm/Wn2Rn/BYPCKw8iqZIXYp7KQK+z9kI06igjf6eBgXZ9+ra7EJz71rpw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771930493; c=relaxed/simple;
	bh=wuUAlopQxV5SGPWUYhTaDfNPdIFjrDLXW06lorjPYdc=;
	h=To:Subject:From:Message-Id:Date; b=akUOlZ6yWrFnfaGqvyL7vIKXlS34JN+rWdlJETJecWkgdbYfD9pHGqiZoUoT7HcVWEXNR/9yAH3QKPCFSyMoziijeKAO3yx2WkkkY/GbGRSOzO0+KA6xUwm+LVtziFnUyWYgK8F8KFYkCAniVjis3M6L0tmBffACZuYJqyAL1S4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TiIYQNyp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TiIYQNyp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD11AC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771930493;
	bh=wuUAlopQxV5SGPWUYhTaDfNPdIFjrDLXW06lorjPYdc=;
	h=To:Subject:From:Date:From;
	b=TiIYQNypNuB8iFqcAjAh3p2K1eRLuNJB6V930kybDCmJG7uNrm+XmHSOfAFQvL6w2
	 sN9I6pYSltnbms0RvFYq7Be3EZVzSw86Ig6VQBEgO0C51jl7dGRyiLjmHuNNKHUikD
	 tH8nJ4+OzgjbxtcijV4wfmcQ0Ek+yMcEt6Y+VBrMKLOF/LBY3L57zXXvYAghUihZ5v
	 7Bx+UxaeilhRPojN+hR40ppaEseRn9v3bskiacI7aa8RmFNldUqgZuZYBigrgx8eNU
	 +7ChxGq/lsRNJmmu9ahvnCnsAydkSbhhJpymFjBTQLE5UmQDUQM+6VWtnaP8OBv8px
	 dkipkCvK+AV+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A5E0E9B24E
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 10:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177193049360.21747.3013016015250982226.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d56d1d8101d6365ce736a95d9e8e2f847de11a260aaa1ee8b452262d3ead20b5
Date: Tue, 24 Feb 2026 10:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771930493
