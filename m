Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0BF7115FA62
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:48:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718635703; cv=none; b=uOM0y1SEutSwW+5lkbgdZKRG7mffLBPgE1fXc7iqyqrZBi8r7APD9FkJPkB/id2Lj9eCoFzPvo96bReohG1EKQar2di7JdqvGvJMwV9wBiNaZNpWpq5PZNJSC7pKwt+fjxHIYPn0Ab759TdbqItlVkQd1T16eiUHA+MNNVItbi0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718635703; c=relaxed/simple;
	bh=NpC668YCT2KQGpb8CNvsGYLiwavq7K1s5E6hiqKOpYc=;
	h=To:Subject:From:Message-Id:Date; b=Inz/nKaD0h07f48pKlQdbS82XYLrYQn9XW4ENoICMqOF9eT19S8GSyE0Lvm/iMim9ZVhmSRgtKf9E7E7oS8rp93zKg/TUjsUWcg++LZa9TnwfpePRoucKuAK3QGmu+w5dm+upD3W/lSsaRvQQhVAsHhaUkNbZSs7SNSbPLyRTnQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OApQIcYs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OApQIcYs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA4C7C4AF1D
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:48:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718635702;
	bh=NpC668YCT2KQGpb8CNvsGYLiwavq7K1s5E6hiqKOpYc=;
	h=To:Subject:From:Date:From;
	b=OApQIcYsVsNAgrqkfjMivM5zNHblKjrC9GRGQbfvmn7rfOoHsrPNCJfw7HSifzMaA
	 WUW4NY1GIjdwTtCaTbZPaDwp+ny4DEhQ75gdA5GBJxXAtOSeL0I4a2fvHDh809tPMK
	 K73fioYwTzUONQfQT2CkMs4yJWYHZyYkeaeYyqMSpR+2Vu6yUVa0WF0r2Y1LIOTMzX
	 cqqTQMV749kCLpmV6HA2+QBYj7Qfs1J11AZC+JXs6Q2EiRELY39DhHpJ2KZu1YT8aR
	 FZygixMZObytquPra/gcFYgwAUODdHNgalJw0UyxUqwXhf8KuNgBcBTdyZM2GC8HEz
	 3hl0UdR0k6hnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7297C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 14:48:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171863570279.8277.2377986972410681411.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a393a74881f4660dff7933fc5c7d178c7737b35fd005ffb6f8e2ae8bf58bdfb9
Date: Mon, 17 Jun 2024 14:48:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718635702
