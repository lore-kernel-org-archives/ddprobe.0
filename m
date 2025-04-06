Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A6C2FC23
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743979194; cv=none; b=Tfyei3OqOzZlGPpfJBSMMOuc/mawPsdMCiG420EUuZndZqiyDyOGPuRtqWMpDXTo2KW4VMBclITcGo4LfXGk7U/MjrR5yrkAiWkSPAJOp0VExuR094nULpmBm473p/7PWBv/MRVx7Z8iZrMxOhlmu+CMH0qabe+W6L28GVWQemI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743979194; c=relaxed/simple;
	bh=//3LJITvqCf3AY3rN/nOoQddhG8ugFSGMYOIzxLealc=;
	h=To:Subject:From:Message-Id:Date; b=HbNvj8GiMmIKYerE8JpunxLWyzHVR9CXOdLdC5haRQPbS8mGRgLIbxxpwL95d2PSfoQvzlbSC6X7PJey1N7FUog/z5U/u/nALezISkjMaQwfPUY4dIEJZs10Gd+HTqKUYGNc9ARi59gntTFFtvVJLjp8NDIfEq8FLc6YMuEJrUc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o2fd9Jkl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o2fd9Jkl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2849C4CEE3
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743979193;
	bh=//3LJITvqCf3AY3rN/nOoQddhG8ugFSGMYOIzxLealc=;
	h=To:Subject:From:Date:From;
	b=o2fd9JklwYhEW1jMoZDqB6axnP+umX+6pJliuVmfHFCt97R26x9TGIOAHTG9YkcYW
	 KbHo+23JeBWaFVtesGgFiobd1o93eIM1n8mvoA46Ryvo4PtS50cU0QGghbH8JTjUD9
	 CvTpBB1H1ysCQU23QCuQydLsSFH4mhZqhHPN9Naynj/jMGVP7hSY6H4TcdRzjKOCA7
	 gKuYxY5E+ZCW9mJ6oCYU/AoyL6s7ej+chC0fctarNTv/S9ioJ1HezwrBhZWIEjb3Gx
	 +lOVA+4nl0jw8EAKOscr+Rz9vKwPYdDX65yDG5FR3p2HqrIJqksyK3ljMHfK2jSrRC
	 oQar8JBHdfpOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE73C36002
	for <ddprobe@lists.linux.dev>; Sun,  6 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174397919357.16549.7481798792913851083.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 27e0187198de0dcf47eae4c5468481f0bea45372a3affc8387561d0c2799af36
Date: Sun, 06 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743979193
