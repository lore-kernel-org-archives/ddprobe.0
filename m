Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33D3C18A92D
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746204594; cv=none; b=faaNh/9OxGqHAUngRK2WeaakrX2vwxcu/UNebxqhovUPgKM+28gerhD/TyTqbCth7cNdc2tFLf9HaeC/Y6EnMvVlpDhzbaURPgCRbq99BNmMQMGvoByvJNlYzzX1K50cqDv2eOL0pjln7hCroasb9t1aqpUkcTA2p1Ahha5sBcI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746204594; c=relaxed/simple;
	bh=BIL0dbBdZ+NMAS59zbccgSabNDmQLODGVKaKcKnLnmI=;
	h=To:Subject:From:Message-Id:Date; b=T9jdaGklkYZXS73nTYn5xRoCCNhSzEd3MmjNxfS4ZO65m4TJeoWdwQCc14tgm8blyJwpXgj+6ors96ViQRu4jmneV5noETFAR/Tku7H8H1ciIqFzpVHiVKaJkwm8iXfY6wN4SeuQgc/vypIMFUHRYNwNewfYU6fifjturItDW74=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iDGhnT42; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iDGhnT42"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DAAAC4CEE4
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746204593;
	bh=BIL0dbBdZ+NMAS59zbccgSabNDmQLODGVKaKcKnLnmI=;
	h=To:Subject:From:Date:From;
	b=iDGhnT42yVEh8LLUCgwULvP+BTvFuph6AR8uAFPpn6BAJLKHYreHWdUufzP3IuMVN
	 X7DHzbqRJg6EPtzGYntZnngZBH6jP5dLuYzttLSNFJ6rK0sleJzi/HYkVYnRsrzOIP
	 ab0cKT0m+VMteFnJ+4DJVWKYLbbcxSgXV74KJPbMaua7eid9Y4iGjZTrK21DK+dJ3U
	 xZormJkAe5cBzzLv1Ovk1j9WreT8krehEMGY9j/pJPa1/OchTXaYMrAJxro0Q2mz39
	 AoGFExH6L1oOniWeKYAHUCWa6125XXxiYZm0JAiD6vLZBwZVfUOkxqMJ3KNFRvbgbM
	 YnaYnM9kThpow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F233C3ABAA
	for <ddprobe@lists.linux.dev>; Fri,  2 May 2025 16:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174620459357.25425.17592413808715782487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61f81ef8d68a918e010c8e13f2565ba2d301c954ee025fd30d9d08010456013a
Date: Fri, 02 May 2025 16:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746204593
