Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D8628F54
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758947394; cv=none; b=ZJAidxsN3lj7WR2hulH1yUOqRsVjLb++GpgRL5SCnFXxbUsjHJ/QdJjY40HvWHZ+sn8hcq+iuBFuFeb1Uw/NtDjRgMvhdRYDh9j5ZumeN7Ng4LtXOl3DO+7EEQxrL7uWqTPX+KnJnNUmRwUAmUnL3DZS54BTnuEiT2axzJsFPBI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758947394; c=relaxed/simple;
	bh=s6kHArWSa1GRr43KaMaUHkr3SjpDIimMi6xIVUljK2c=;
	h=To:Subject:From:Message-Id:Date; b=sAXzck2CyXKffUMrd6oJkRime0bixcGD0jLL7eelenFcRL9r6wmoc2xEEK42CH1Ooe42poUTftRRNh05y0tDWHvCOoCU6t2l42jObGCTSG4GY0Td1Lt8A/WjfhvMqED4hxWB5AGFn3+EyQUpRQpFXU0RoX3jvJWCXWI5Xmp7ohg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W45LQasO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W45LQasO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8930C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758947393;
	bh=s6kHArWSa1GRr43KaMaUHkr3SjpDIimMi6xIVUljK2c=;
	h=To:Subject:From:Date:From;
	b=W45LQasO2WcVXnTqKIoGWGTjkSghQZzyTpxfsmEOKZz5bZVu9kywzdBRwCaWiRVb1
	 U52ErLtD6e0NhiohmZrZvlWxu13u+cgXdw3CVXkCN369cz0mbshNjItC5+mcQmamxD
	 KmbQS3lCH4je0Ug/M4eqADavOxBQpytc69N0caE4KKmKaO+a9mXS9rpfDWaIpJ2xGT
	 bbZ0WIyFVU1hqinfKqFYzKytN06ciGYpL0jWqZfccjtfnXxpIePjkKyBeTy9qjIvtY
	 pxhx0i+CJYV2Ko18wOPxQW0uqpyeIYXuKY+yJ9rhg+gLtdL4ZzDFCl2z6x6+wec5L9
	 HRyi/4p1SZxkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3FE7CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175894739362.24542.1411035295780327598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: efbb70effd4eb4c98e1f707378e973c53c321a65bac05e4b6f9137e6a729bc4a
Date: Sat, 27 Sep 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758947393
