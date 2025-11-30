Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B13336D50D
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764546774; cv=none; b=YOtGk0MDYOY1C9hZoJct6PD97PQ5xMqaRPMR1tirWogqTQE6ClcGoDLA2SLj4dvoacmw0BBXICeE62Ace8yGnFMS4JZUJEOYp4yGpb0SzSTnmFmmJEZLNI4Eg9kkvS7Me7Lfl5+FmsHcPsT7+L8U9B2cOcZQw07WIfFzzLFDqFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764546774; c=relaxed/simple;
	bh=hMRC6iKyWuHZvlA2nYDdFq1uCFQNgzGQHmEfbdcPR4M=;
	h=To:Subject:From:Message-Id:Date; b=jijvA1njarhJNoggxtlQytRvFAZyfBd5uYhT1mQ3VhT31jKextZdedlqczASfT4KDj5fMZjoaiivmZp89LP2RQdxQmqvqmpgyeGWlcALB27ZcDao8GMJZlsL+5qZulRKUV5BfuEsw+cwz1LvpOEEYxIoh9LpuOrv/Gcd+RAb9UU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FefpWf08; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FefpWf08"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9207C4CEF8
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764546773;
	bh=hMRC6iKyWuHZvlA2nYDdFq1uCFQNgzGQHmEfbdcPR4M=;
	h=To:Subject:From:Date:From;
	b=FefpWf08nnozK0/llXrZM8UAjPqw6DLbXK1XuNqgJAdfkHAi/QJ/sBX0xUL6riZMo
	 sp34x9Xr1TaML6c6FaZtc85aFyadU6xJvkbZcy2u3RrH93xu+kutUGCS7dQoE7lxr3
	 cmUmtFfvMswqTuZV6INQDpm7tnxR8q3fo6s4faqFXFmhguMEUOkIIll2gdsbvgsa3/
	 KIRV130mHmni+C3kJcoHQ+2vtfvuuHl/RhL11lnrkJTp+bgYHnZorHZ6E6MlhXvemz
	 +aMx5PKLzrGjC9kprN5CM5U+W/RJi7NOBNSl/tcOxICAxnAq4++KZtnmZTs2uUUyfZ
	 BVx9lGMlVCaWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C21CFD376
	for <ddprobe@lists.linux.dev>; Sun, 30 Nov 2025 23:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176454677358.24083.8107960530275442825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11722b88b339209ecd3274429d3ec4def90f2796aa852b074a32516803a64bf
Date: Sun, 30 Nov 2025 23:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764546773
