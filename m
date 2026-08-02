Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40A913168EB
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785694234; cv=none; b=XLBaiB1qh3h5fQcrZegw3CEQPhDkBZlXSKJ9nNnMXMQMPBQyHuyS3Unmqbjaz+8UK0wSNv4b9e/Dj3J3h9l9a6EgItd0ChsLIBQfUuxLl+LCxEPimoXDWj87FwKTThXDJDHQmRkdvvLACJLyhQENZwJs3pBW8rIeckcXSUVNwuA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785694234; c=relaxed/simple;
	bh=2fb5C7c/hZgDzQs0b2f1+eWfOLV8wC9jnZ769kxfPVU=;
	h=To:Subject:From:Message-Id:Date; b=OE5VHyAwucx7d1dcawnAvDx3wVzQBsQhG2u95TioxazyFWtGBlF2VbA9a4lfXklo5ybgKzlCuYXx8O0M+9T95YaOJihbKMbonMJXH9hBNrgPNGuSdtGHyJQATnwCAOJnklLwniJxriUulrcceA5TAWGf8hnEkchyMbBIlbeAGH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e57G93+P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e57G93+P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CBEE1C2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785694233;
	bh=2fb5C7c/hZgDzQs0b2f1+eWfOLV8wC9jnZ769kxfPVU=;
	h=To:Subject:From:Date:From;
	b=e57G93+PdlQBJBSUaxrTjC8KtquUQ7ENgiHijBKd2eofBUHglxw8v5JSKLaUw7RPv
	 3rYeQs+FnHUDhUIzNqs6YS1ly6BGYzIQ5tTxAfKQIztQOUadvFedQHm+uOY7gPVvSl
	 jEcxgk1KJEEp/EKatdIrfHHU2ehF0hS9DWftbjOMcUMLZHAtfGZNgktum8Pj8BUBzK
	 LG6s19D4YIL3WSd1E630ye21Lo2gHD7xTztjmsSHHemaWiLd5oAb9FvjIlwdQIaJCx
	 S7ROi0FF2fSV0EPAnlYNmxdqRyQfV7/jYcGqPD04lm+hWPJoT2cninhHHlKdbpPchw
	 w0zJTdgROFing==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9369C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 18:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178569423368.21830.15509719505705839628.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 12612bb98d80033ee6e64640903ced438e5d1fcd347ed8592fa3afd60a8e4341
Date: Sun, 02 Aug 2026 18:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785694233
