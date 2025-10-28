Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3140F2DF149
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761691794; cv=none; b=M4/Y6ULbzI5TukZ6vQe2hjEc1r5SASXQqebfDQ1xzYAg4RtXNL0wYuR8RBvml8Ms0HuOwZiqvGtHGJxnRHWUL/lg/YM2VOQYqB7hnQSRVYEDIbtnOPZHr+pc4gty2xoynIocRt4+pYMz4iYSezCAQn6H+kAo+6cyGO1wuolAGPA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761691794; c=relaxed/simple;
	bh=ypGEy9kW5kaBjzrHiCFCRfdD/LP8a7hz47+0DlP5nXs=;
	h=To:Subject:From:Message-Id:Date; b=rST36q9nxv4PnoSagH6ub2eK4Xst8lz6XxjDqK5/5usuFLFLJX0Kb20gt+xmEoTYdzCIlvm1GTfxUbFmbRjQ/1fSPq4MEdgoc5/YKksPWGIh/54LWK3AZVvJXQ83kZZ3ilrS/SYV47AXeppLvjxLALi53JTpYs71nl4hIfIVzHs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BoctT3VW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BoctT3VW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7A5DC4CEE7
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761691793;
	bh=ypGEy9kW5kaBjzrHiCFCRfdD/LP8a7hz47+0DlP5nXs=;
	h=To:Subject:From:Date:From;
	b=BoctT3VW/nN342Zx/La7uZJEJNFEVFkFCgikNMioqU+sd6P8kpC/f/kij/EyEKxR/
	 bbGVogsKFmY7hO4c9KV5L9+pJtQwIc+Jeu3XDYBW5cDotkJzlgUACk9RLuDhr9Ey6X
	 zIavpU/h0sMZ67EoXSwWNRJ0jGdoP2wGVmrXcDhx3pTaxh3xqng4aeawM+tY8HBLg9
	 IzMafyxQh3x8CAv4/4h+DOujYO3U+gqvohM5bWULyZ5bYTKPUSorAOyYxrKTNyeRBR
	 c1s8/iyudkkHjLqJocAuY+EjVM+DHi2x4D45p3is3EBZpuRrf9iFRTp5LkmfbjTg2I
	 kzYp9iEqkSTxA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9306DCCD1BF
	for <ddprobe@lists.linux.dev>; Tue, 28 Oct 2025 22:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176169179358.4094.2279869468496437695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dbe8a400c5870eece7b11ac471a4d368e1732c04c4906d8cd01d83052e9dffd1
Date: Tue, 28 Oct 2025 22:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761691793
