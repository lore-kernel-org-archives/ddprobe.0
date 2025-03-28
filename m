Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402AC1A2C0E
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743171594; cv=none; b=XUNqEMuDZN5iWfo/KNHJ9GfoT71g9d5ai6I3sf/YofDVEBJMH5Rm0QEIfhFLnxP7VWh8LWdLF7KFHfwJKWCvMAYZ6ZHk1OZP05IsIbxNs0ACtW4kApWgVcIjFjzPxJzaikYMjfTfj4D6127wsSXEQSzqSbXv/A5VKY6wgYMGMxk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743171594; c=relaxed/simple;
	bh=aenn84pT1KEupeasv3Ro6w+yh+l18SNonWwN8Znwzmc=;
	h=To:Subject:From:Message-Id:Date; b=jrCFltXD6wiCLxwHUaSrr4hWEub+AwptrGvaobAuyK5GV7Dc3usRd6Njj8ghdc8IPOplpGPZciKtRr0p7NqTWEgOBwMwi6DHzx3Mo5D+h56NBPeKaUWgR7r8oYWRnOHo5zdw1yzSHIhLC8aWcVkHlVTIg7QRU3voD+g7/P15Kqw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lvylaWVy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lvylaWVy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4C6C4CEE5
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743171593;
	bh=aenn84pT1KEupeasv3Ro6w+yh+l18SNonWwN8Znwzmc=;
	h=To:Subject:From:Date:From;
	b=lvylaWVyaz/zhTxTqYltEFoMxymssVh8W/NDK417ZQVtVYfO3PN5aufhgUCzg0oxr
	 WDjW7hMGnrUwGkysxpVUjiWu1vRfMGIgmd8Gi/VhoSx+ni7boRr+eQD8XSq2j504YY
	 Ypm2CiTb6o1pYYfMOGhQHMXiFZrj33QbxNCbjq9K27Pq978AbnwCG2yoXh9GdKE4Y7
	 tqVARMr30WHFtyCwHLRs7RP9K1k6bgfQfouirRRNJVLeaGfu3+TvgyUW5WETRjDnTw
	 x+VUjfVIAzZUbsGVMUAZkZNTjnIqZXiB7Chhzo5SGQG8PP7+3pB5VGNUgIJB9XW4IS
	 k0PuyALKizjPQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFD4C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174317159362.13903.13192459167543048100.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ae8ada77dfb6b306a2becad73095c0d8652f3d6a24d32daaff9dee41c1034ff
Date: Fri, 28 Mar 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743171593
