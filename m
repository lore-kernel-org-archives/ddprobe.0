Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470B236B939
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790829634; cv=none; b=KXLZJneweJPEL2pKkXFwtCdZVVlOIkjXPpVeXFd9z9Sx4rjLfz/EBP4HlgWB5aRgDfoOCONAbxAc0KeG0NXBtl0pTBvRG11tydjXEqS2Rk982WOGhriDCEaJ9I8dWVbm3qksc7cz7dcP5xhEQcXJsqlzkjSE1o+Z5ez4t6sbKuM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790829634; c=relaxed/simple;
	bh=LRlqrQwLeZEiaeoxCvmYrTytI8ywO0sVDgJB4opJCQs=;
	h=To:Subject:From:Message-Id:Date; b=NYiM0LysYoU9QklwWDkgusX+tzO++NRhCKai0wAmflbCuDY1Ccjdmd6v2CVRV/qur3+LvJTW544WUdJuGlPwYDbk1htUwlJK90xJ/sn5iP1e+LkXeRIdStONxW0lTV4rMO7DS9S8DVZUkbQPlTiAzUkKEoWYMVnYQH7/MoVTdKc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=G1uWUyqp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="G1uWUyqp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D42ECC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790829633;
	bh=LRlqrQwLeZEiaeoxCvmYrTytI8ywO0sVDgJB4opJCQs=;
	h=To:Subject:From:Date:From;
	b=G1uWUyqpoF3TOY/3FQRk8o3DWsABl5wsbCKevOeUo/JxJPRPZu01isXzoi9Me6J7+
	 Q4rG/eRb61LhC22C5b2DApZwfHMfHBIWmZZ1HG7NNdGouWx+ExBgUhIBznQUCOyqBr
	 sN3fyIbpEGA6aCJIHWggSh1LLZ1j50+MMz3VEzpudpN6U5f+AcsT/WqHaqvK5pSWNY
	 4Kd3TXoHymUljJpcjE0Dte+C11LThbde8/Fe54UvINz+FibwtfOMDx3n/1vXIFbC5F
	 l/3l0cs0RP1vvXjfZ8yXe0BCokbLAe7NNXwvrft89ObR+Me3gId2cvjq+b4Gyix6Ks
	 cznlj/L2P/06g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB224CA5FA5
	for <ddprobe@lists.linux.dev>; Thu,  1 Oct 2026 04:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179082963369.17802.18047461498109792926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 75e66d33e4f0f37e005cc8f4666fb7d28a0a244e4329571ea37fd3d891714019
Date: Thu, 01 Oct 2026 04:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790829633
