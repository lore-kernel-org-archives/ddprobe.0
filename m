Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2999F2D8DB9
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761820195; cv=none; b=n2ONx9x2zDVTq368HCrI6FAQA395L+7P4O+ewL1EblRN3OUdMZszykPf3p/n3oAvmPI5FDtXXJ62FBfKrawvERnd+32zNMnRzrU69PnjVIkM0V8HJIUXsYat0akIpMEcVru29ml/4hzMLayHJ1RVvb2O1KyhLWkSt79x1g/tAYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761820195; c=relaxed/simple;
	bh=W+X1kqBf/u7DRr3pJRbZdDRvuhjOHg63UcHNjDVIWOk=;
	h=To:Subject:From:Message-Id:Date; b=jY16WdIW6FMC8VxYiw8fUUQCIxjp8E4UKWnY365g9CI0dX22N2I0+KP/XdVv6DIvs6yJw83wqjZArMx29nGCiU9mj2lqYr7+pdge6adAFCj5KVe2BTN33en0JppQ82qraYGW+aqjAxN2b+b3/wQQxVrM+WbK/a0R0oS+LlxdO10=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V5WGM+V5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V5WGM+V5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A416DC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761820193;
	bh=W+X1kqBf/u7DRr3pJRbZdDRvuhjOHg63UcHNjDVIWOk=;
	h=To:Subject:From:Date:From;
	b=V5WGM+V5c3BpnYhdq7zMgQDyN1gO0qr2PWQbus3k3KTcbr+NB16a/ZewjZfRoCJ3k
	 eFPr3tiXOp6iAx/P1rVBhIbhp8McKLY4tBZjdj8UivEqKwHMNa8VcOtmVei8efmdqG
	 UeKyEScjr3fzbCUkJwjIOZI/DpjmRoMGoVXBEKTvqTuHxTScVeZAowyFD3qf0Orhee
	 8psVoBESE9sFBr+RbfxpFm2ymdWANVzHdUoHIXkQ2LNEPl0hZdrpp2KrpyGlZLx0aR
	 pqL2BjEI+2U2xxZsRYnQhLhiTlBRkOPd4/PirE8KCqJIWIoPBxiyAZeeBI9Lb20ZFH
	 xex31g/Lt0KdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9064BCCF9F1
	for <ddprobe@lists.linux.dev>; Thu, 30 Oct 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176182019358.11425.18109730930424394828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb53c2a7f68fa8384a031cee57423e97bf1487f3928a6b7c58b762683c36239b
Date: Thu, 30 Oct 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761820193
