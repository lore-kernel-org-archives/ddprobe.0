Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6058E1F19A
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766894034; cv=none; b=BdImpLIZnISZlbU0PPfaM6nv6QJpapnVxd+B/i6Ofr0Fa7L0Beh4rrFgMofXHpu2xlIR+LDPvPO5TILYc5X6MF1qFSjiNUcvNvkLM4P/7TYGCjeQA0p5BVQ9SnggWvZ00Z9VqgG05ap+oqks2BP6kjIKUD99+MbRtzFi2jEr7PM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766894034; c=relaxed/simple;
	bh=goXkbQebwGyKyjIb7gGbAlf3AIeuzsoF8/z1drNz+Eo=;
	h=To:Subject:From:Message-Id:Date; b=GQAco1w8rpuLnu1zv+62iSSWgqXii7XZN/0fkQAzjYdegAH1o6ZCyqncSgKvlXyA9+xV4apksbxYXge6cCEaFt+B4QKXNVw//encJ7rLji8WmaOdczA5K5ExWUcfGJ4J6G2nefc6LJ6w/TGm04ItmdIFupYALKW2V/pCtRevVTk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jGnoU21E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jGnoU21E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B43F5C113D0
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766894033;
	bh=goXkbQebwGyKyjIb7gGbAlf3AIeuzsoF8/z1drNz+Eo=;
	h=To:Subject:From:Date:From;
	b=jGnoU21EA3G/VR9IlgHb3ZQEtlJaJsqegcFBh0BoVcL/6+6prp+ntWOXj6rFBrMNF
	 NBSwmQW6RmD3Pi4cyD4/XxzvLifs2Xu3yt6CD1q6XgniXt99I1OEejg3ZYc+mlI41L
	 Xqq9p9NR13i14t3GlEqN49e0oDxTJRZPFjYY4LIauAtb7si/cgM7m1W6Qvo5sfdp0s
	 VManTJary/uXLPYkHWGCYT2CiCuIB2LOciRaNfH9BGkxJOBauM/EsJmJhrYtVi9+Bd
	 irUaMOO+2G6ZUvwshq1UIasPqle8JRZS5SEboHhb/uEqfUftThgbr966SBssMfGhT8
	 bd1ypFvHnqDrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F00CE784BE
	for <ddprobe@lists.linux.dev>; Sun, 28 Dec 2025 03:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176689403358.26922.807540942623837156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1713875651c9d6c8d076e15393d8a8473e072fc2aaa9181ecfd4e906f6b16699
Date: Sun, 28 Dec 2025 03:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766894033
