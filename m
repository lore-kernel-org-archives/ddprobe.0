Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B77252292
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762456794; cv=none; b=k3rikE3GDN9pQbctedoD2bXb8A9n7134KLWoIwv9fgCiPGqECsO0PdiZB/hx6fWYvV0pBlnNwH8lNw52TiVaYnzzZ05q0lKJ8pqyYlJomiI0FfI6bbOFMVLOKDO0eDCVmpksEzPDYpW/syW3sT7eaWPZGHr+b3/ZbZbtKPAvYZ8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762456794; c=relaxed/simple;
	bh=Pg4gxe0/E9uUq+Ck4ZJLFqe7mMeq85u3MSAe9Ypx+5I=;
	h=To:Subject:From:Message-Id:Date; b=U5pm12C9YDIxqIUNb/y7wfIqvV5bnx1pS/WeU57uuxUkiNBk19cOem2+PMua6fjhjG96tmPrTJZEwvwQCS5O2OSHzgZ4L31vb6Zma/UiY2LT1lXyOwlOVvnWAnIBA41pglSq2uf9C/WNwNH1Y39LwvyK/tFQ4/oSqXu815o/O+w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tHJKhZ3w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tHJKhZ3w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A19C6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762456793;
	bh=Pg4gxe0/E9uUq+Ck4ZJLFqe7mMeq85u3MSAe9Ypx+5I=;
	h=To:Subject:From:Date:From;
	b=tHJKhZ3wALkSZ4f3+NPI9R/mdkIvuH0cKg7zoUWV9LYMkQCusaKABTx6PL0xCAMcI
	 1z9E+kPlmI/K/fQ6B8hi1OLfNeD3q8kT6rL7wxNz6hGJs3HHvaEiNAhaKAZ+BNrCVS
	 pEMklAeRYmW71NLHLYEFmOeGc8WbX8ldmshKccpw62R0K3TDpZlQBwUroEau1aArqh
	 HmsmMr1ALXTkU+iWVYJQW+uCws+J6QqRUrsqgiHoYaRHOoPL29uBFQQC6QONVD0iu9
	 +l33UfQ6FW41gNlMhU5VobH0TrJN776kxnI8S5OFZ4zwgYhkKrc7wbrXkb2LbDv+Tm
	 UpZvEKzQQBm+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E69CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 19:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245679358.29937.4466895328119000669.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a5dcbe962f2d2b8a3efe8267ed5faa4033074eaa3d4a5dde9c28d905974a0f4
Date: Thu, 06 Nov 2025 19:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762456793
