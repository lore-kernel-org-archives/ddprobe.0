Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4139C238C07
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754345994; cv=none; b=Tmq2wiZ7hPaGHKA6x3L95GX4bb+CDuJVdeYB7RMgMH8OVaQf7rA2fpKJVN4SRCVEj64lwkaP4EAiRJayK8eo5fzHHmAFrNDb+HsJlRrF2xYs8cfGLNX3Q12TaYlZxQMWYpMfy2MByuD7l1CstjcZNRnpViMUyJmeb6DaL/xEqK0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754345994; c=relaxed/simple;
	bh=/bGaudu52V7ePbGXssByQGAgxb2fSQxuzmot2JBkV98=;
	h=To:Subject:From:Message-Id:Date; b=TBdjTknmaJYtXftxCABE/UVCjJJV0lzTT2q+WswKamYeAVKI1pMYfMPyScZOMw3+oyv1ilmnhdlnBK3hANSbtAtnGvN/SBO9yX/YeAqpMNtMzoE4QFcVDhISkMbM1Qc65wisROXoaIiZhuWnluhs3oDK8hAeYDVQg0v5vNVgCl4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BZwAG252; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BZwAG252"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1183C4CEF0
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754345993;
	bh=/bGaudu52V7ePbGXssByQGAgxb2fSQxuzmot2JBkV98=;
	h=To:Subject:From:Date:From;
	b=BZwAG252UTeZNOkzniRInx1ylPPXJmCczIRQJL1VXIJuXnIGfwf0llk1slvzbSfFY
	 VQZBqMT0jiyvBy3IAAsuoHY/qFQ2zQkhgaRQR5yNZwQc7iRCZO2zZ7wr+jtSEHC+0F
	 Pu8UbQlck1T3T6h0SuqkPV1LjkiJR2G3EIgJXyeLuvhxB4OeEFP1SlkZE3JsBz66hK
	 u2iQii46mX5b3qX2A2bCLZUqTRI5a+rNN414Xn8jNkxWKSoHCqdfNjKbrJpTIoQ327
	 iQGvrvlnJNxHp4y73JQoJQI+9QtRPp2qOYhw3zProk9nwRlizWAzaGL5l7bmge8imF
	 eCxBJTOjAdAZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921CAC87FCF
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434599357.25860.5483760970747523538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bf3d36c2a99292cd66a7d4724e9827a6a0afa47271e1f0f95145985426d38fa0
Date: Mon, 04 Aug 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754345993
