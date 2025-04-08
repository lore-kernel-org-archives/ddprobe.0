Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BFF12063FA
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744156194; cv=none; b=F+T9vzALbvqEnzz8Wp1yV1oUil34bjrniD82YXxHeQrIPhNszDwvHCegoVtEAfa6UKxWtiwgHPTA+fS7VdnENnvzFJa7lHFywN2lJR7el7cpwgwQhvfTAfg25a/tlUuhaTXNGXqFOkkYHRZAZx81ChBkzaDrLLeBBJm+ya8kwjE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744156194; c=relaxed/simple;
	bh=mxv+SpGGw8DNj/gXtS4drGLk83NMp2rYkwOv7OSSeSk=;
	h=To:Subject:From:Message-Id:Date; b=pLAuUqiL1uVzbhJLRM4hRP+ZlyYkKE+coqa/1ubmV7J2CD25kPLjV6vMRhOfOrkh0hkUx65kAvLX+DNZkFHG31uA6xnXkgtdx12uAaQQJ5r4wmU/8HA7nmC6pubuSp6fGa0s1I+ifAJcxjqH1uQpmhXme0sKUYTDWkJLRte/z+s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VNQA3yno; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VNQA3yno"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0736C4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744156193;
	bh=mxv+SpGGw8DNj/gXtS4drGLk83NMp2rYkwOv7OSSeSk=;
	h=To:Subject:From:Date:From;
	b=VNQA3ynoX7/b6KPaxvkNiu4sbhzlRFVqDLP/T9Hd+b2WJU+GtoL5y72xmD15Z054Y
	 6OwA0zT6Hpif7cYvjw0UwJ8ENoiAARgU/zOUdwvQ4QOLNLs01/4vFVBzudZPqJCUWu
	 BBPLleUL+nz6+q9U527qunFzGrMT81gSxQOT+zX2UYWTORXxCH0EIBDSAJNsgd8Qqy
	 zv04rg+Yrv88g+PTKiS4mKE5mlcrAYDfEkx1HfmonIit/4MQaH6LG8fDgw3rsoZYrw
	 vB/ELuRdTDswtvXWyguKWZ/HuJ/Rs73IXtjO6kMv1P/thc+g8t8Pa+3Eu0acjRlo7K
	 pN6tZ+K7A3jVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A9F6C36010
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174415619358.5364.15603361097940216402.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df07a8ac7fc8d3b538f51785f665d6e0aa0d10a9235340827cc8f658cb1c193f
Date: Tue, 08 Apr 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744156193
