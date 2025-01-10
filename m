Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 253A22080E3
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736544954; cv=none; b=h5oUPcOpfrL2aD1yOhmVDADIH3jTPFv9mNOPNGE5zv/lhTOFSlsLB0E7KymRQJnwVi+70c+bOZ4Dz7S2FVrafQXw0MBR4IIegw3JTEOoLWjdZMDvp9tgvqbYJLJdo8nV91iJTywM+5RhsjuCka1heBPwsMc4QbGgBpsY2J1r0NM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736544954; c=relaxed/simple;
	bh=7lJPxgtQaPRZeq8gan2osAGmHBNnTrauxlkU5bXMzvE=;
	h=To:Subject:From:Message-Id:Date; b=e6PA8PEbG8FKjPKa882+kIngnZImTxov82v1wodv56ihm2lo+y7bLtrguMQHdL4kbCn2lVGH+8oA0QybeAVSa1kL898iSrpvGa0/8IYNpFP3y/drmwaqJLNAZk9h1L4LozInKD+vJGP5Yu6n0XYZM1HtccQZYgT8MRsL8ZMC4/o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndL6vMLi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndL6vMLi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7076C4CED6
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736544953;
	bh=7lJPxgtQaPRZeq8gan2osAGmHBNnTrauxlkU5bXMzvE=;
	h=To:Subject:From:Date:From;
	b=ndL6vMLiXrO+B5FMyv2YpYc8eryHTi4CHV/e7q2c9WXqtUlpfF9vak3yfa596B9Cs
	 G34yBsSzOHxMN+xY8PLtNi7XZkTFuwZ+1vUQE7iU1BSLnJWsys93fhaNrP77JgFkk9
	 Jp/ycSGvELA9ZD0x78i/Vz3wVEiP7lgU+GwoL5YeNlPUgv4LyEZE9vT98vz5fMlbQT
	 BpqfWanTLw767lEzps8n++bz0jyEP86J163/3/36+/hqK8qnkBJISw23B6jRA1/BDs
	 2MEi0a5w1n4X2PAumeO9rN3UFxKLJ6WNvjMN6EHOA9BU6JdSFGjV/g2g3oQ2jxMe2d
	 +DZEJPrB/v8Qw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93BFBE77188
	for <ddprobe@lists.linux.dev>; Fri, 10 Jan 2025 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173654495359.3331.14381712594938823593.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b5347d8f0dda6a0b4816b69ae3f01d08e32820da875e3bbe64be0166f71a2ef6
Date: Fri, 10 Jan 2025 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736544953
