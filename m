Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DBF23A1E74
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767585834; cv=none; b=XTLVOQFLDObzdJNTPmEO36aB1Q+iEDW9gQ/ANfZcnxLEXwHzOxM5xuNeqjKcxackn02iYWl+bWHvXR8saBGUfrY2hXURLBTz876b/Uv834FBEVIj2X9Sl2+5Q4LLZlgz1/zQPG4yxVNqLXSoZD8gSbueDB770MFfn4GKYJD40ok=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767585834; c=relaxed/simple;
	bh=Qsy4Up2hARbvvjV3htBjpmeb1yXO0vq7iJIYpr8jQjw=;
	h=To:Subject:From:Message-Id:Date; b=ERQwwAEy71VH0A/dDEiJ7YsqEFiBU+JZw9/HYn82GR7+B7+kxBUy/AreGVQiA6RfI9RZQ4ZUIAcAwPvGNj6VpyoVJUMMVsmzwlE4uoGf7mnE79hHuh38rPq2pbqBWGQBVET6F7yFvJQfUUQCE3oHnf4h/VP3BTseb6zm+CK4yr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZM6nW+vb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZM6nW+vb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EF66C116D0
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767585833;
	bh=Qsy4Up2hARbvvjV3htBjpmeb1yXO0vq7iJIYpr8jQjw=;
	h=To:Subject:From:Date:From;
	b=ZM6nW+vbo7VEmmviOm9ie9FT/4JFJI3+5mXeO2n5/ek2cwrz+72f8X2mxVLPdEOfq
	 6ncZ1ziSuH80klayyFh4FEQ1FrT8HIPaLkV2X9waJcallnrJYhiMj6dKpY3L18zNwT
	 jS6k3UVKKGcDL34It9hXy6akB9nkX0lXagRChgsKedqt9lIYGf3DuJabBW/MNkK/bb
	 ZYIqF2eKG1PXqVsjg7iVZqppUfjQgzqi4MGM8ucU0CISv9PQurC4JcZ+c1bWYJDNaR
	 gd2h/IsJdJTGqp0+DLGCMrYp9bDgQHdqt0V+CG/VO7aftsJ2CxB7HefwC/aKjZ7fUH
	 +5YPT6RYUO+iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EAFFC2A072
	for <ddprobe@lists.linux.dev>; Mon,  5 Jan 2026 04:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176758583357.27211.5781287943417164953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d27d1ec71c0b7818266d11cabe7d2aa45dd6b8c639c94af06d60be9dfbf59278
Date: Mon, 05 Jan 2026 04:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767585833
