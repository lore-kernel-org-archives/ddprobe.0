Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0546DD517
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752822595; cv=none; b=BTyCX0UYJ3AMpz97oaEAMR0s6+XL5BFthUXesp+lhlC7D4QKNdaJ0Y47AlY+hG5nsFXy3GKbgIcUj3ObbJzYnujqkn04b+6V5DWpSSbNRSxNYr5V0kvvZF0/32imGtT+Pfg/a6zpktwTwjDLZJxdfxxM+oSXTJTqGMDxJ4VBhww=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752822595; c=relaxed/simple;
	bh=J6EBhyC3MF7evasAEnD71A/bqluZl16zOJghuGc3/2g=;
	h=To:Subject:From:Message-Id:Date; b=r8c9l1FO4Hf5H+VhimZF0UUOF2/TBuMn4Y3z4aVBYZzDNwFqkW1ZY0ivV2t5xb0HYiwcADfPMVClePoVrhchOdbQawvmdQ7T+7gmp9TGaDRqU5fWE1W3XvVXi1wS02k7WvrnjJOWzzBRXLF+naiZNuUsDzEop13m8XD7CTVqPpU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sy+JwxYP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sy+JwxYP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 98920C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752822593;
	bh=J6EBhyC3MF7evasAEnD71A/bqluZl16zOJghuGc3/2g=;
	h=To:Subject:From:Date:From;
	b=sy+JwxYPoGu5g6FI6ArINVa7yBwVnDPvrKuEGabD+9j0EvXMVAU+wLICaPwwwbTlK
	 SxWylnvayir49X+CafO3RyRzj/Ir7PeWlWEiS9ANZe46B6hL0xeL9jLmjjporZt6hs
	 LdCZ6RzNDHiXuTyN0VySSpBVRuNtq9b4RNa8SUt6cCJAM8qkxHPHiN2oXc3VfeqHV9
	 Y+S9XINr7PWC16stv5LVNL8L0GbSablA8oyen2gibE8Jv6XsrKz1Owgh0buM/S8v4O
	 uCHZ192aJRxu/TV/uvMqAdNuf1uLrE/c/1f8OvytBqydkzLAgMsox43a/CDqGiNv9U
	 p6RkEAyYKxVUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F470C83F34
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175282259357.32491.17312993515003244870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d2206e4478348b649f3e3769a67e9905d4924d13cf16aa6bd99970b98434fb0
Date: Fri, 18 Jul 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752822593
