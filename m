Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36C5B22B8B0
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755940194; cv=none; b=E8HhA38kCdZcCZQ2cA4YakJ+96i1KoX3WnjZDVTxpX5QNGCnoVmPTYVZZQNMxq+lJoBNOM/pAhBkM9ZBZUGwaaVVHWfXBVzKS+5pFjp4ixXNctcbNs1ZbbxX2plCFkL9utKZkotBcyLtBOpvkcl7bh46rzKg4MkpOIHlECNcYWg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755940194; c=relaxed/simple;
	bh=EhbshfUZYldDB0OdsPTbo9jfWYHPfFyyBxUCzesTgG8=;
	h=To:Subject:From:Message-Id:Date; b=lBkHiwgpuUrvs6sWj8IXOvpf6M7p5NH6gBpwWgjsWFrDLYvkw88FeDcGjiA6RUSpL4RusCsYXpK75u24KwNckb5JJdDyJwWLk1IvZdGSPe6RsA19lw0lHlPVUnPYCBdMQLHdpyN47A1kc+Obx4G/B+S8phPhegOudcArF2xuAMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MyI+AO6T; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MyI+AO6T"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A428AC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755940193;
	bh=EhbshfUZYldDB0OdsPTbo9jfWYHPfFyyBxUCzesTgG8=;
	h=To:Subject:From:Date:From;
	b=MyI+AO6T/O+CHmCPChc/IiJavFgeDpNXZgCJIZPHZNfKyHgrSfyXwk3I0MhAgcs1c
	 T0etuAkZ8ZdMMg3peK9DCzwfeO27wMQ0vx7TVF1gbxwqKGqvy0og2VFWmE+0njkYe4
	 dd4tmcxUaJMP2V+D5ZXPL1JJZf+wlJPicfpjVhEOTVsUHEpmRdA/aqVcZM9HtDKGTQ
	 +jHUE5qyhf3AMqOM4iwYJcVaQAEB7Z1S5uom5+tWykTIPFTKWdDzJx5q1uztt6hg2f
	 43vTsS8hpPcTHLXIoMWsfu+DcCWVDSq/QUf20/rQX62H8OlGdZr1C5nt3p31eTL98f
	 X4m1/xZdESH2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F1BCA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175594019358.32070.13960037958710651979.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d3e9411dd2f114ece097cdab3c6edcf6d55a1048e4fbfd6ab9b8edaccfc0de4
Date: Sat, 23 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755940193
