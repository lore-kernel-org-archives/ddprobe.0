Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5DD933D3B3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787445634; cv=none; b=Ri4t0yyCR9aPnWXAowYN0oMKVyv/iAdf0ykDVv3RC7GS3fPcaydywUbhsTibq2HjVq/HaJVLgIElP/q6/YROskmZVD+jpqPp1WWfms817TDV13xjyQO7xUjfF679GxveysZS++w4CFi2J+ealsc1mNXzdf+lVRjGWrcFaGYKS6k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787445634; c=relaxed/simple;
	bh=iobzZ+YiXuYj6Pd8TZ6mETA7sqJRl/3pmtpxiYD8K7E=;
	h=To:Subject:From:Message-Id:Date; b=SitUuG2fuffZP7/pnyauk5FjVlHd8MiCHpPiXia04g4eWzdM/WwogPvS6leiB7aVXE7HCHLdIJIRx9LRpP2fOW+Pqap2jXH/CXBpX7cXVIUqXsTjbddCB2/9WE/QXJjFlDS4M2s+cI4Y43wjZhbe5R+5Lel2x/nY6D245zAXjto=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MAuTgxtC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MAuTgxtC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D88EEC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787445633;
	bh=iobzZ+YiXuYj6Pd8TZ6mETA7sqJRl/3pmtpxiYD8K7E=;
	h=To:Subject:From:Date:From;
	b=MAuTgxtCtcFmY5TGt7FB1kuHtmqS7RwvWDMxhIwn729j80tD4o+hcEgaWGJUiWZgr
	 XMeFgT9FmFQCGHox+o7uKz4UFCZw/Eg9Mgl1ef9qbvft28qrGU47lo7QCsANl/8GsF
	 u2JiNcYAHAaCKpMS5Tpre5RbsJ5zY0lGGZyfwQG3tIRcAcVkf1XJIMxbj6asHWLotx
	 dUMByKSZ8Ze6pCgIYMhZ+VpJIZ/yVi9Vqd9sLqhHzTMxiJpBqjVdnL3+VWQYvQANCg
	 4jY6SJAyxhwKbUXMOv+63Y5mUvb9/KcE1i/1cIPIpDTOgOpz7VAh7cRSXy6LRZB4Qo
	 4TrT3CqZ7RK+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B19BFC5B572
	for <ddprobe@lists.linux.dev>; Sun, 23 Aug 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178744563370.5279.11045848367843612072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4049654e8335a85970b9e51a8ff0860bbf6a0a37e7cdb325fb8245670b5509a9
Date: Sun, 23 Aug 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787445633
