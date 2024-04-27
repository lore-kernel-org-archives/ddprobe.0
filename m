Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55B49381CC
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 04:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714190543; cv=none; b=AUfLZ6a5dRGXq6r9TCUzUiUsmJrg/vJdDrTTSZOtDxrwxJ0iiWZ4qrntOfN/JI7HiPj7l+RpPEpDF7zQ7x6PUDwdYExoQEtpl6YGsU38iYlFWChp4dypJuVPXC7ON2sVwaPotptJGdGlE7spavvgukqjELdxz6UcDQhzjb34lec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714190543; c=relaxed/simple;
	bh=vrdV1+1UCXWKjT9lu58qkdOSk3GT/46SxTM++jcaxAE=;
	h=To:Subject:From:Message-Id:Date; b=BIPezBncYHQNmzEWN5tDfIZpc8Eb09fXJLUb1kAHnVMYdd7RXXPSbhoxTm4pzYkWsN7F0zZQvVeMXLDGJcDolpnEyNMBEu9r66d/CJaUlFpP2HwKKw8uv93yd5zeLCOAheqjdaIk3i4Z3eJx7dKdrE3ygaW42/pds7C/X5QVgdc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gp6KrZXK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gp6KrZXK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7E9EC113CE
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 04:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714190542;
	bh=vrdV1+1UCXWKjT9lu58qkdOSk3GT/46SxTM++jcaxAE=;
	h=To:Subject:From:Date:From;
	b=gp6KrZXKKfpCxKWr7OXmu6m564pnqULQB/51PPs7eGGrAG/ou5WFvX6o5feh36j+3
	 1SqPT/cGBgiNlQQltB//quM5XtYOnIwppUc1FkPSPB55XMeHYvAkQFgKF6oOHiQa1f
	 0y6f9g3Yg21pOVpbXHPAwnSxQGfRaheJgnrsox3Yv9rnAk+U7iWqoftSE62dnmWwEX
	 nQWyuLCqxKQcI5dYVT5lF4n4NKtzFfyQ5sOwFuMmXh9JW8c4D1vznUQcl3C/4mMw7b
	 jC0iL8+jwgiBThWoWkgX3W77OcaW57i52mtMFOGsscgHdijGydY3V8HD8OqDTd+Fyr
	 OXVPcg7ru8Ssg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C2269C10F16
	for <ddprobe@lists.linux.dev>; Sat, 27 Apr 2024 04:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171419054277.15013.1712704387052764038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0d9a1ba2faa92a46a44f4f71fbd7840327d4dd8ccfeec7bd80138ff0fbfc3bf
Date: Sat, 27 Apr 2024 04:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714190542
