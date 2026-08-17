Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 61AD03DE425
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786962034; cv=none; b=Uao0kqmn9XO8hNWTmMbYGCkp392k1U6KoAey/WJcwYgK902UD13Bh4GMXUnjMsJxZFTNaE8gKyMpOzVho70/5/+hHvJfUXqgqkdOSPnM3fGHB/Ls2tACdluF+MewmkbNB6i0y6EKfOljjBspP3o5uWvv2fRR4iy10/CkH2pD+jw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786962034; c=relaxed/simple;
	bh=qjgR+n0uBf50F4nyGNW3kL6TlJPRCTuDEx33DjrSE60=;
	h=To:Subject:From:Message-Id:Date; b=MT1Ea1aShmXdsI6T1x6FN/I6B/2dx4/Hdd7kqJhMvQfsZSpD+mJ967BQnsItCu5DMNq0g98CO65uhgsoJ9bZ8/5oO9UJ2g6Oon0IFi/hXKf1vBxhyJVe4/4bX6ul+gwOMd/5GcLZL7XpVa2dIdRxiVvRwrtxwNB+qgpme6J3XTg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XotaLVKZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XotaLVKZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5914C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786962033;
	bh=qjgR+n0uBf50F4nyGNW3kL6TlJPRCTuDEx33DjrSE60=;
	h=To:Subject:From:Date:From;
	b=XotaLVKZaWjtQULAifq3MW1qVjKY3o9B/KJGEq8sURK9yDVkk3cQ92r9XD/OHA+6c
	 1YPCRnTZzXo6Bm+EbCgxkpw/hIwwmaKP2UP1WRmMWR6LxYW014AiZ1QdrHQoLX9aER
	 AmT5n7suGDjgu9lIbBrzXW6CkVRadlHO6/llxG7oMzPD/OZWqjHs7r07queFoGTtsj
	 F+DlIKRhEkP+7AMPvaLze4GDpFfaW3o2d3I5o9QbXj5QggA3zumm9e8Vz1vB1G823t
	 Al757njpcgN3nYKwhrimXxHJqRPIUK16RO/PW63gTFrXVYbXKoV1tJA/wIJmlRDUrk
	 Hw0H8MkM7ZboA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8FCC5B572
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696203370.11708.2135486491234144870.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6706a648aaa062386a2e54418b2b92ae9a72242f6bf0cd491c70ec9da41d9fc7
Date: Mon, 17 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786962033
