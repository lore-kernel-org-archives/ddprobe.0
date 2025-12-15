Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2616022127A
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:32:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765801975; cv=none; b=Sh/svND9d0eq5QXBiKVOn0Uz2iOy0zuH2g0TSO8T8BHoJETpPjtETnnKlhngxhkDKxX/cmUSYbUxO5VZ4avngKxYhu9xEjqTJ0XsPAOi6e4Fad8Z2mjBqK6SgE2qOLjiLyVCgewz0Q6lrZVqfHaj+jp1svt2CLDpQepAa2cNju4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765801975; c=relaxed/simple;
	bh=qcOJll5gxGFm1CGHYqPLlXDWQpQhRG6I9B+TuW069lQ=;
	h=To:Subject:From:Message-Id:Date; b=LfNpf0NWF4wvF3pnzds6iexQm1vSN/Rl6VaDLQmvmeQX3DNZQLnUTb2Vk8LGurtclwghHTR6eqJUUYvBiSDKkaz765e58eI9tI5Ihav53Q/mT/3KekR5JUeHJv5UIf0FOu7pvyiKJaUf0c/kcDEs+6rqh4eRGd1eeFcnulfdjbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uoPhsrYe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uoPhsrYe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A518BC4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765801974;
	bh=qcOJll5gxGFm1CGHYqPLlXDWQpQhRG6I9B+TuW069lQ=;
	h=To:Subject:From:Date:From;
	b=uoPhsrYeAuL47n+a3IT7WxiAPFKT0KTkLA06hIWtTg1McGGnENcHIokkLPdMIt8QF
	 zHnonlbN6p5/UY0GF/8WOOR9WcbUqpIod4Bpu+/gyZwOnVKfHAUPJePEcHXhk+dTr9
	 xrk1C+VxEqQzi9cy5LKIWmrep4CrwO/zn0QyRTDqI5TOCniWkg1p77uuNYMQ6zBFCU
	 fd2sWF6VeLaw6vbphglCn8npjkgbB48UOE15vOPSZ4j1nIkz+Omc6Dyu217+kvpyZb
	 K1tU4kl2XRNj+VVGnnIt04ytrndJSIfEldUTuY5arehXrUasJk5NCuiIFCwpcmngBo
	 TI/T0oO6RsYYQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9281ED59D99
	for <ddprobe@lists.linux.dev>; Mon, 15 Dec 2025 12:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176580197359.19086.8292178456144934397.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2cba1ffc16eff2a9b557ea73587cd5fbc5598f32aa7476ccffdb31304ba52083
Date: Mon, 15 Dec 2025 12:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765801973
