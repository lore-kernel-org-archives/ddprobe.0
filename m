Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5038D25DB12
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:48:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782665314; cv=none; b=No83JkUc35IZWGHIuKIqi0rUSDwHWBurDoEjTR3Osh1h/O0M0S4kehfByR0A4xUPaKnn/9GzohNH1PtqrjeVqyKRXomeHlRseIkuiNPiR84RdpruEmqfhJ2/veVuZYxjXN1ArW1IOREbK9exwIMyJQ3DjKX/TiCx3sHm30UFY18=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782665314; c=relaxed/simple;
	bh=jqvn6lGQIqd4Kr0EMduTLXWmwCKXDcvce6UZ8yF4Qvs=;
	h=To:Subject:From:Message-Id:Date; b=hbL11tS6diHoEtf0qXkeE0I723V8sWn978746guqYxBHBOvJGyJMAiNhnXVQjdIlqTll+GglYhsuHFAFuIaD3OzHxIUYqgN/k2vsTwQ8wfuauvs7VGBS/2COBAKGPQVuHN0oM0PDpD0k7ea6QUg2stCuxRIUr8mPL1qk5YGko04=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhqP3FLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhqP3FLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DECE1C2BCB9
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782665313;
	bh=jqvn6lGQIqd4Kr0EMduTLXWmwCKXDcvce6UZ8yF4Qvs=;
	h=To:Subject:From:Date:From;
	b=IhqP3FLIGfYiwS6NL6XlzDRk/UVnxdpduWmiC7RNAKKskHkNOyPr+LFtp1GzagJLk
	 jKVzkEqYy3R/xrkSt2OIZgE8E3LTwFD6KTBRxQrVI+RfBNTRxr7Qr9ghOIOR7xHQJM
	 FFnA8r6CAmHzqY2D9S1QyvdINNzFKMsBZ6IP7bNT/D/zTaLA/BGcixhXXK1moCu+ok
	 yi52PlbxS+KneJcsJib2fVIj6AdlwT5lqFnzS5KNU253XPyMeeK0uRYcz4GqxK37dR
	 Ju4n4zCSGCHAJgnXwGeewx35YayG8QNXpmD614y4sY+cbI6X5d/MXZL8gOmvCtO5mf
	 SDhBbm7nVqy3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C480DC43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 16:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178266531375.24025.16746327363916054115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 401fb9549467a4413a81a066669b30cb7249f7d2381261e405859b452fb010d5
Date: Sun, 28 Jun 2026 16:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782665313
