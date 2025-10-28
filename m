Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 185AA2C21EB
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761694794; cv=none; b=F+jQOrtqzExSyX5n9j8AnXVkkfOLRKeLxy5ksoB6cKsvtwHzV1J6fq/IrXPEIEnti74m/+MtaBL/8aH4VYJ2cuvKjJa4+pTyi7AuDkYU59DNYwAgxfftf5rP75MWO0liS4tXh1XiUftbI2iPiSfeNI0kMmLnx4Akh5T6u1N3a+o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761694794; c=relaxed/simple;
	bh=RwjctwHJt3zSyOKEuj31EsAJTXYpDF4btrcrIQf6jyQ=;
	h=To:Subject:From:Message-Id:Date; b=ThGQi9iApibVus56GKFkGNTI6f43OzIWqKJRHkZBWTlhRzJM6bsJbwgJU20toGpQnvJFJcc5pAEZVJwaJ6jyZhE1D6yDVR7cl31HctI2K2R+mIdYaK9QsPZQ+EArv8JHBq3gZISo/O7P0co5CPlb4uLPZDXQbGtcDtXN/Pk2rtg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RjTfwfct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RjTfwfct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0CBDC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761694793;
	bh=RwjctwHJt3zSyOKEuj31EsAJTXYpDF4btrcrIQf6jyQ=;
	h=To:Subject:From:Date:From;
	b=RjTfwfctSrXTcdU9jCAvb7QPuMffyMhNUbXx5caU0CO7aryk8Y7lcTenL75w+q62N
	 cQdvF8C87+ld7y88lWpK1C0oZSG7LDZEbgkRYWEBBbjkOeo0keZ9s8rCX6BJPOS777
	 FWD50zgoiu82p/CQXVo090vEw0oI6ElZxl3w2Dr9S0og/jOIlkK+exTzWyZt1N/3qE
	 S9Csp5ZBqMNSsv0f7XkHrAF5RcfAo6DxP2wjFarBwfRifQPZevBCpUqptJqSF3fhOG
	 pSwFIcqXMNsXRWbogB9CgfbqWM6kGi1W4XZv8jxHN8CZcClhgV+7fgP6wu7Hk4b3uG
	 pcKXapFtgyuJg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90F16CCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 23:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169479358.17811.10547226948526800160.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6bf7c338f22591a7b752a5dacb32c8208e1e4e272431db8d2cc7eabdf5ac8030
Date: Tue, 28 Oct 2025 23:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761694793
