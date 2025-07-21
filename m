Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3154420E71C
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753092594; cv=none; b=rDSjr5ZAk2mVrhzVvL1WHQ0/Gij7Iv/F+4xr5Ur72rpUwBk9oaticLDPA/3VFrhFcQjB2SJro+cBNGY159ZPR8ZKEYv4Lm8BsCDweMpjADfolzAhy2zM6J24een2wwGIkXxHxhBCkk966H+ob4imn0mM2LlV+hBrllYiOkkgzW8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753092594; c=relaxed/simple;
	bh=Vs2XtRfsdyissOL3L7cnMO08x9JHTse9GCPORMz67gI=;
	h=To:Subject:From:Message-Id:Date; b=kYOFu06VO9PIjbfPATde+73eNgw2lcNp+uh4CLRTll08qp/D4EO9OZJ/HCE0hidVgIqKHRku3pO546xjpjASobVciZHmWVTjYCIxyRQ6bhsZCWQszvPodojUe2nl+hFkfrpxyr7l3gHnOgNWSxwdk6vjnSkd862X+pPkH9NDHwo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bVhFGAAp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bVhFGAAp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAF65C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753092593;
	bh=Vs2XtRfsdyissOL3L7cnMO08x9JHTse9GCPORMz67gI=;
	h=To:Subject:From:Date:From;
	b=bVhFGAApoKtvDBeJ4/MAuf3kNv7eMTl8Tw3USU1oEhPfPxw+cN9rabk4Z+nLG3wSG
	 +fetGFroVo9OCOXa3d6UtJghQqjRAIU4OK3VRNy4yL73GAvDk7S6R3SzDqloXOvv2q
	 oMsnUw/fUHCx3HJ5wDAiosyCc4uVx2YQM8uar9k3x5fU/ucCoCqcpQQATiPQQCToTq
	 VhbCyU/VnUFeH9HpLy2LAYhD2GXKDhzypBL+q2WH/z28QeXHfmaKxVZ8cmiKYkoXLp
	 7j31qPLGsH/sMJYSPRUdSyE3DBO2h0sCS19Qmgon6wyyOuZpAGBXhE9YwhsARGC8QH
	 ZuAcYj6CuASLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 991A6C83F25
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175309259359.22877.14122510436474610607.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 109eea6ba34c1a433076b51ccf1fa343c81edc8e1cf9b6fea8fa3819f912b3cc
Date: Mon, 21 Jul 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753092593
