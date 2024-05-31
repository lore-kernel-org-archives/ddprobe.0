Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50A50155A53
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 08:54:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717145663; cv=none; b=mnot3lOLKIYI9tAdaY82L7P3j26o6zOzTc3ATXKTLrp/v6W1I7kYBEa6lDbGVXlihFwu92SjstBtvz1RLaiL0G70+PQbf2lH/T+5e7HAsDVhXqRAMLou/mC3cqLVc0KuujrvGPUQ+X64H8rOjPOQQ8ubWGiMJaYPxP4ObjGTaC8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717145663; c=relaxed/simple;
	bh=EdKmndgh6Zzx1KvqujENt5HDfRYdmKUIK6AJky0PqaI=;
	h=To:Subject:From:Message-Id:Date; b=K9sFh5AYN3h0ssC2KqDFMbrS9qn/wbthYWKkzI/fr0tFKk1oXkMKSxEYHo7PsOgDQNUSpyuguaD5lWOH1hBm7V4B83iZy4ipFxSaVAXoNn3HRDsdt4MH2Th2FfueQb9UQAlcqIZe4WxGK9dWeiMiYWHrqpUB5LRthMRgEykPR28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PdP38865; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PdP38865"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB4F7C4AF0C
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 08:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717145662;
	bh=EdKmndgh6Zzx1KvqujENt5HDfRYdmKUIK6AJky0PqaI=;
	h=To:Subject:From:Date:From;
	b=PdP38865bj0LSOn5fGOylUrHZjinXxYzF8MpHMTa3my5+/s4+BwzT0GN6xHGpsxvb
	 6BYjFBV4FkzpOo1YkV/I1hL+N/iGoYXfa22m2P0310tEh06KLHWjZmJ7zSYxZ/uruI
	 6G7aL2rxEAFhx7I8m9jY1USWtKm7VS9HX9ANfxbQG54IiH0OO5ctyqX2/Op423lqRg
	 h+uahV2fhmgLcPtn/7/qGOvlYetT3/XbgJ8JrJDW0bcw1rEKXNfbU+oHYji806qKjg
	 M2HpEfp4Y/dwpxCGj02gprAI1j//28FYB9GmMPO/UrNXhltKpl6yXfVTcgzf7gc0bo
	 gRE2ButCCHZSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB45DC25B75
	for <ddprobe@lists.linux.dev>; Fri, 31 May 2024 08:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171714566275.22471.2114448000892431284.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b361829c517d6f45560363bc3c18ce00f21711fd4a016c5ad63cf810713a7bad
Date: Fri, 31 May 2024 08:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717145662
