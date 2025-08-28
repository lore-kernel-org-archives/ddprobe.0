Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D13A2264A3
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756420794; cv=none; b=l1n5Zdn5AOQU9y9ik906TjTadng4fPNzSsU4bYMtfVbWIzppJP1eW/uCUYCKLFspDR4at1jNXP40rwx8kfRb6nDXBKlZ4j0kKeIJOCzT5MO473kE3b63RzerrpCLrMu8ZU363l7amDcn8/ObQVt9Gzpx0o+RzmushieUml84pRE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756420794; c=relaxed/simple;
	bh=N2pES+iooE3kmqJ/g0yAl9omNvelBkbfrMwudaY5CPU=;
	h=To:Subject:From:Message-Id:Date; b=Dn2iDtHHuSfTYRau0MLS1ZM98pUs7Fd6U/5pQXVxh7RZh47aygWqweyvrNQWGoYYFNsZU5UB/RF5f/qyzyPrzOU7nhz/kaqJSsIM7KRI2P1YWjlqMIEDeLQf2hnLCd3Ny4F3XtNE8DNxlP2bLfVUiMQB8aTxMyTzsFxImgIFqWE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pat4V9Ps; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pat4V9Ps"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECF5C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756420793;
	bh=N2pES+iooE3kmqJ/g0yAl9omNvelBkbfrMwudaY5CPU=;
	h=To:Subject:From:Date:From;
	b=pat4V9Ps4U7VjXFm+8ATwGSqnfP9lXUyc5e28tp68c/+Ux4hoJhyBWbV/y1xEOnH0
	 GB0wFE1wvIbNJidklHw1zhu3OoV358uDAewe7tMASM/TRRVF6YT6WTnarasVKyTrYQ
	 9Rsszfe5FxzLJqwxEp7ZTCJSJUFhk4VQRrslqTlbJwjAVXkCyiwZO4Xed3C5A2yBiW
	 y2Ea0/3xlMsFQoNVyvNBiv7qmSIjVm1O0150atoYwPnl0EzISjoGfT4+EjOjQkgjG/
	 Z412Zknxk6d96XIY9rZ/RdrN2Gx4kBKQUg1UktVxRPIF/zjqcth6lCH+oNb4mYWm3T
	 0D6JNHCtyy2Rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F208CA0EED
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175642079357.10695.11316115473226267958.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 557ea7b30407531f2bd3afe03fdc81eca1f36af0ff6b3dd9bbc8513a017f5d0d
Date: Thu, 28 Aug 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756420793
