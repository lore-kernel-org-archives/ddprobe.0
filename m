Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F98A1D8E01
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775796454; cv=none; b=J0MJs5kIApQYNkFw8QcjH6Y5VbOqRxGPxWbhc/plRXE4gLHqNWG/pXw8y8W1w4mnhZcEn7YMQPO3I9G3YLC9fE7B3yBZe359v/IlWtY3hxmHc7bvQolX6qi8RhlTDqAUSXt5tuL65QrqFX+JhHgnfSJtXU1oQqbSl4CynvphUCc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775796454; c=relaxed/simple;
	bh=3EHQECzljKhJs0XguvMv87q5U9fxfnH+xnE7eGkKJ0s=;
	h=To:Subject:From:Message-Id:Date; b=UB2ajgK08jsj5Cbs7kSuY0AK7OQpxSo9wToyprfBaYiAblZPWAkhbWkRx6bOgrRQNUp6W8jm7EabgMTnmMyCg5zGVJknC7CGyZ8F6XPUjJxS2CN5ZSJNiWgnPnqgkP+XLO12ZjtSf0G6oyK4ddUtwcu89DBj6YVzm0udZPwWd9o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LvG4/qfL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LvG4/qfL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BED0DC19421
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775796453;
	bh=3EHQECzljKhJs0XguvMv87q5U9fxfnH+xnE7eGkKJ0s=;
	h=To:Subject:From:Date:From;
	b=LvG4/qfL3aZ9kAPyL1DLTIOzxdzz/mmX+rD1RDQFKchrDngzeJi5DISU8CQkl3IWX
	 rE5RlEH9RK32UxPjKxvG3qdwyuwLuqxl11gsfXPEjx1DsoLZWQhN1ze+zKVKE7ARWK
	 R4iJedPvhSO2MuQ0vfXRLts4JBKFwqJPHZ16nhaUJwnZAr2pF0iMV67KQfT3R+bzZk
	 XzZ7jM3jROvV/7GlxC2PtnQMFtcH6981pLK08roTxBtHU2QgzPAe9C7z/ZYtyVeZCe
	 JIEhUMJiqCtLlCqK6YkVW4wVAEZa2m29FF/i+nmr2j/DiE5Bg7T7TvO0nKsDE7aqlu
	 VSipF94+X6IyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACBA4F36BAB
	for <ddprobe@lists.linux.dev>; Fri, 10 Apr 2026 04:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177579645368.15617.9807666616961211371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a83131ec5a66fe83fbc2d57ecf846087bcedc3a695aa580c3d83fb98da3f4aa9
Date: Fri, 10 Apr 2026 04:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775796453
