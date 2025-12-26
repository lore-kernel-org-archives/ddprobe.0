Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EF13313551
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766735634; cv=none; b=PRqKh7If8M4RcQIag4Pq3GIlFUYznZtnpwVUQN3mH3isulcgYjroC6OLE8nI0/GCM1qA4kDEE/YK2NnFHMEkibgnSVT5jODKyw81Hvb4Y+uyc50NnjaF/F4Qutz+l8X/ZYDiR16YuEc0bsJ6c746lAuigtOg+QexcEl+mNJ8U0M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766735634; c=relaxed/simple;
	bh=cztYm+pmCirxQllUkTYNt9pa3rsRdmPy98ZmgJN+5BA=;
	h=To:Subject:From:Message-Id:Date; b=odQtMRJOQRklyhF/Xh+dJCIu5RQnJSF4VzkhJVgWDdPfu0layUa4zHaw001bLuIrS1Xqc6WnxGZsRDQ3nYYB9F17kGE2+kM3glJztklH6yHDy0EX3htCNKmi3S0N2tUZHT3PDQLl2G0Aq9fkTMU4FQm94t8t5MTqJ9uqTBUjsIM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e6yejUfY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e6yejUfY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD220C4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766735633;
	bh=cztYm+pmCirxQllUkTYNt9pa3rsRdmPy98ZmgJN+5BA=;
	h=To:Subject:From:Date:From;
	b=e6yejUfYLFfZUyUGiJg9+Y4dw+woPjTEXOjWtEB2j9TcYxCR0acZsw8jSbJAjm6wX
	 GqpR8v1MaBmLiB2PKbOe3QcSj2L0Jw+ZJJ4/Iip0DnuOofiMONE7wavBovgIYvnK+w
	 q4OSCvbgBDukuZGNer5RohCk4V7ZB93AQgrtmCSftbFYIX7nJZqgJoLqfjnwGS3Y+9
	 GaVvq5l5sphVf/vZxYXSONucT4Iv7gJmEZc0LyRpGe/Q+GybP/+wnaXQnflDMRyQwf
	 4K2Hr7t4lPwwpjzoqXeVPeB4hf0wQPFqNy5nlYeRCOKHNJDfiNHQ6zk/b8+V9Wfi8u
	 SiMe5w3URmYWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C331E8FDA0
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 07:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176673563360.23663.4559936070430071760.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e699a5212b95089f2ea3e019f0a3aca3a7cb07122ca9bd19ed124e0000e4bad6
Date: Fri, 26 Dec 2025 07:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766735633
