Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3973B1CEE90
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749877194; cv=none; b=hmV7mmG+m4daXSV/7Z7JXnvmVAzlIU19alGQcfWVAHxYCxkIufD2c4oxWunmyegmr0T7OL5VuEeDTUKdP1hqjJqjTxBJ0qojYGEm50ZyJYxoWzHM2MUSTEkLJfY+4C5PgZRCBqNhQeRusSBsEDoUZZojpqM3FjJ02lPM0e5+xnE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749877194; c=relaxed/simple;
	bh=EyMsKZM94Ctfu16J6J6BFuCj78zFrvESYi3XdWvG7Dg=;
	h=To:Subject:From:Message-Id:Date; b=JivPAgB8kvrkJdx0O0NKnQ6IErm3DEM/MBKB7ewUv0I5VIzh8B1XQz9MF7EtbI1MiucxyBWCFkVtFfQpHRv1cJibmnhlaLiAmsN5zrd/59XHcsb5ljZmFfm/RueE2Ihk6Su/XCPilv0hjDoeqUP4JbFeiu76jVNc57kyDYULb4Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kmLQXXuo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kmLQXXuo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4C28C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749877193;
	bh=EyMsKZM94Ctfu16J6J6BFuCj78zFrvESYi3XdWvG7Dg=;
	h=To:Subject:From:Date:From;
	b=kmLQXXuoplIuTdiekeqX4hrKwB2qerxbfTkfYLPzdmTlza+bqPNta9o7870UH6OwU
	 KZTfEFyxjueic3N+mG3HWiDVXYkgz7Q+ZvyjfNPQtB0jWuUYYKb+VQjBiKob5Yj/SH
	 AU7ebsCb7vHVciWuJ6kBdnbnMzDUuBuGieTvb4OuNSI4+deSOdO/FmOt13ajqFBFCF
	 e5qqrKn1US+qB3pzWv19HGZIyIDIW+OO9xOBahHrC1H1HVoFgvsK/24wa3kloq1Ly4
	 b2RGDsLru6ByRnmFTrBZeLyIILyHWbxxzYVbw/Nl41O2mQ/7q1pMDRqO0RBJeJcond
	 vJlbJufqbaThQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90D23C71135
	for <ddprobe@lists.linux.dev>; Sat, 14 Jun 2025 04:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174987719357.26273.3019795194129180454.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5a48cd1390fd9499685af12cbf85c46d48946596a1f3c8b5cb31c8066dc0169d
Date: Sat, 14 Jun 2025 04:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749877193
