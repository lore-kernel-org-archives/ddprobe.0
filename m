Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 285F63C0C
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743168594; cv=none; b=llLc8KGsOhke9yitL7VpIs9VqDe8fFNJuH7ZzEj/Nd5bCmLC9SUetn3n7ahJ5hOd/W4le04iQ2pzLdj5rY1CpEGhe741sbK1NlArTaZuaHAx+0Vz2f9uk2BPXEwusKxxNT7++7eUw5zZkxlhIiB4jmm80hQyKcooDvy0PkfAEPo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743168594; c=relaxed/simple;
	bh=K7MsHG1+jW0wG+lmcxXObUDa3183E0y1Zv+LZynHBBQ=;
	h=To:Subject:From:Message-Id:Date; b=VW48hUl3gJdup8G7xr48qFQVHLpBGwRcB6DtTRIBQix67InFWNsUKvgqH0enr/v9cXIwO7GCbyydNpZ2olS0+5kp9/yPOuEJ4VYkiRDTDOJyJoo6FsjsA0n7Xto7zKTiZYxbBcsXl2a0GfjipS4ewwnkF3lOMpQK94CrCbPO8OY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YyQshifc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YyQshifc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9BBCC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743168593;
	bh=K7MsHG1+jW0wG+lmcxXObUDa3183E0y1Zv+LZynHBBQ=;
	h=To:Subject:From:Date:From;
	b=YyQshifcFMiRwhZApOgtOfUu2AMWx4yOGVc3WWoQc1nXMSqMa9PS4d0xs3Q1YcC75
	 3/6hVfnvG1xtZkSYSgsUK4zMgz1G4abqyL12ImjP1T+lrAf/qzaThNrJIQZOf6/20A
	 lpo4Gn3EAzNu0zwpMocvhg45SQK+xVUFDGLcELyoF0jT92FfG5e7XYgLP8k5JAvzNt
	 8Ifp5yFxDwmVhlQ3hpfcDcKbOYMqf0KkMNml/EdK0yQlnOu945WZTz7caHxCgDA/nd
	 e4lWlaQYPEffvlch4ngJJ3/nEmI+ltZjGCA4LkoeIclLLI5ZhGZIwD2Dp3rBmZd3Y3
	 NhDvqBaBNklAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98419C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316859361.28870.1578778947329355500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4aaf77360a855c8dd85d5f73191835856aa5d03ec17a9107ad4766377b9d8687
Date: Fri, 28 Mar 2025 13:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743168593
