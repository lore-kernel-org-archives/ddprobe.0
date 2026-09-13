Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D116356754
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789297834; cv=none; b=elKnRqkl/FVvUJpWg7Dib3op7jc4ySYZgruj0pjD9TyWm+a/qQP/u4x2Q0HS8QbG8Hu0ibuzlPKrsNYUW6oIiwVMwBAwt9m9ZC+o35HCurHRWE/uEqfvyJjFlDrxLz48xTVL7MJ0DrQ80ZmxQUrkFgSLuuK7d31VAsoDr1XWfvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789297834; c=relaxed/simple;
	bh=Qc0Ri5RwJTLOe8BjMh4E2x2ngemGKAK54bg9iPlGsbo=;
	h=To:Subject:From:Message-Id:Date; b=HISHphzg8EmoYAbqZt0CMKXYiqO4X0sXRhsRgyuYbKL3R5HZZN3BlkQEbCd6SLtHxjXrQV8E36DDUh7npow+Vmm8qxFQ4s267cW9FZsZEwqVT7Pb+TUNboftYZcafGeDzt4lGEW5d7QqGIZfcqgXSSz7GPtv2v49lIH6iL74puU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ODcYFUY1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ODcYFUY1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D0E77C2BCFA
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789297833;
	bh=Qc0Ri5RwJTLOe8BjMh4E2x2ngemGKAK54bg9iPlGsbo=;
	h=To:Subject:From:Date:From;
	b=ODcYFUY1eYT0ZBGD2p9j/smJa1nskNobmHtxV/QOuP2g0T/xZCpKZfqQp16XIKsE6
	 A5iy/qdqjpL/yrIisZ7ZQFgsXZ7D7CyNxNz7etrjQBWmaVdV7w8GTT8PwOCCrj8azc
	 98E9Oi1jkKxZAhaudbNtTuuJ8hpA1sp+9cSlqHb/bLu4NAq5UA4mn+cQbyoGMI4vLW
	 ExYuLyYbRhhaQUzwi4Pxi7hWZo4iiDwuw6Bnhq20bIP/nEXnMU1Jhozdu2pSoC9ZI3
	 SG/5pnBDQLu59yPZOREBAKoHlggiJtraNk3SaZ7HyNxI0BRuVpx6gZNnyTxDGRYByR
	 wR+BKbbFQadXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF110C88E56
	for <ddprobe@lists.linux.dev>; Sun, 13 Sep 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178929783368.32443.17520847318871471199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c143780e3fedf5ee93b1da5d6a70dd8f8b34e1b2ce5f8888e0a8696cbd201fd4
Date: Sun, 13 Sep 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789297833
