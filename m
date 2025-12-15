Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0161E23D7C4
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:12:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765757575; cv=none; b=MXxteHjeYZaOZNydDVEhz7u+oEgnsVG1bRQfO+ks9xDG90V0HL6Ny/sHF+RTtr/SiJRQF9vUyragTwpMxovu9/MwigMVnEAc3jcZWwdlaNr+Pp8CKSe+Nb0YUIvEniOLjXyKH0WSA3NwHcjuJu9dROjaIBq2mqOYTzMBkKafH5A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765757575; c=relaxed/simple;
	bh=+mIKYdVLlHZuNmQwxyhRNXTP6JkveHVjdqGN5naBZOM=;
	h=To:Subject:From:Message-Id:Date; b=jcAmXgHJ8AwG9uF1946aOPAUnnkAI7dkOilap4s0rOvoOsFfznccWxca3k9ylkBdOZG6V+eJkEeh3X9NQOXm5pnEDO9YK++bJqXJl9E+g4Znv2yJ2oYuIE9O88a3CZMGsX2MyhvSvgTamavx44LdY6omxOaehcOJCQscgKGCOy8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZxAUEaiG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZxAUEaiG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3DB3C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765757573;
	bh=+mIKYdVLlHZuNmQwxyhRNXTP6JkveHVjdqGN5naBZOM=;
	h=To:Subject:From:Date:From;
	b=ZxAUEaiGkG3iwaBZAUyuP0v/KDrZjfq5i0dn8Pq06KeG+jo/JESygrW425QS2D4Kn
	 hLHDDVm2tk2iV37PYgualf5sTp5SWspYULCGbKT+wXvPdt1rBxUfqjUYN5hEBuKUGo
	 wagKNqVFYMbTWGUbtPv+/1BC2J3ecJ+HJvE7URFomDu0m3W8hXNDAH9GrC1XCKsFzS
	 kWvu/upcG4XtQrc9XWlAXsUBBXtegwezHORZ8EFS25bM5Yfd4H/7Y2WMVUHsWXJfnK
	 9muIDrPcmGja7589Cq4don0GeOuuc789xF8DnnD8ri93HKmNpIZ+YQrsXkvVqsZZDG
	 QP2wKgcaTTJmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92747D59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176575757358.11987.7677561200447218114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6d5f5feb353d113e4c588ee8b816665db376901a56b7a57973b47bf89c5f9a4
Date: Mon, 15 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765757573
