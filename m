Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BDDF28B406
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751888994; cv=none; b=bBzb9LRZpzIjiZ7AwKx5Xv24FvYUSUC/BTEt8O1P3tBlVKeneDuqF/mkJAZ8rQKCT+ubPk9IGakmwa2b2w+mzD2cir6RwY07UDbD96ER86fbxmxbK1d27xnF2u0Oq8w7IZpe1c3e42LBbiOyz7Ufy3ftkLcXY4ibPIQUUky15lY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751888994; c=relaxed/simple;
	bh=gpaPy7QOfU9ITDfzphQ3KP4W7OWuKDbHIu9bN3DVsyE=;
	h=To:Subject:From:Message-Id:Date; b=MOddmaRKVfGstFXMXq2Bf938daisFVp48aiUd9V2qUCRHsBGb+As96dWUJJt7JBFpxfT1HqkP+eG1BjbVRjAPthsXCpa3qfl1kgG8N4ThQD0KmJzYt1fqal78mXyGK1pSDt9hs1ZpqGdKImCcDXzUqSc8HoNA2DJLuCY9q4W2xE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N5TVh+db; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N5TVh+db"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2A62C4CEE3
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751888993;
	bh=gpaPy7QOfU9ITDfzphQ3KP4W7OWuKDbHIu9bN3DVsyE=;
	h=To:Subject:From:Date:From;
	b=N5TVh+dbFqVOcJ/B4eeAkugyniR3zsgJBJARGUjXEyDeko+nl7nXpD80OQvyx8bZ7
	 9eX+HuSHYkwKod5ZrLoUY4my+3wRFNG8Evz6T1EQiT2yxohZ0/4lf+xr4kYcVk/PTb
	 q56uoSLLybx9I7aVg2kzLbQi5qTtMEhp2IFwKGLc+n4mM/0OzabFd21cEFimBiuKfj
	 4WF7NWeQqBkyJQU1VQ57i+o2UAqijx1OeHcP1Oj9mxj3m3d2cHQ0S9WyqjH0uSg8oC
	 HyN12ArX97qsGbrGGsILvlKaZne9XDTurzmVW+VlVPxWxDgwGcux+xJsH8PRRHvEtt
	 8uRaT4BEoo5WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FD79C83F07
	for <ddprobe@lists.linux.dev>; Mon,  7 Jul 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175188899358.29773.4630127255300396075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3998f5f478115ae10f42cd0ecf36ae341b2257aed3e8e566c73eda55e9fa2229
Date: Mon, 07 Jul 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751888993
