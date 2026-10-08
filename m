Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 43EF42F12A1
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791445234; cv=none; b=hSnqPvCgN28SoD1q4E6DSQy31O9pij0o8yyrOI/NIMDPUyzdenmIaAllXeGQXoJcE2Ves96VwwbJ2wUkBMDoY54hOZ2ytEoziLDjFeKjLwcyM5l29ONmS2QRu6qP5AqhzdLaGJE4WXTQodjCMjOHPb/i16gnHjyJ7vOIwZlOAKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791445234; c=relaxed/simple;
	bh=GVUukJow9ayq8c85cjXUtOeRplYX5tZ32MAy1C4n+04=;
	h=To:Subject:From:Message-Id:Date; b=rfz/w6wNUEhuxwDGSyVCwAuKrOK2OGw72ebPSkSx0QuCqxt6kmsU2BAsY58CeDGvCj0lkYt2+5uzmTDtpGsifnyypYQqbxneh4GlsWEyc3ggrG/O84mbYH9VBe4N9XbI52Tn/TW9e/YfxPgM2NPxZRyVqDLI/cA9El3BenwPorg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GlR/WEF4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GlR/WEF4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA64BC2BCC7
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791445233;
	bh=GVUukJow9ayq8c85cjXUtOeRplYX5tZ32MAy1C4n+04=;
	h=To:Subject:From:Date:From;
	b=GlR/WEF4s/aRJ1B7kM9BUkV7adeXVyrmYoP7W4yikEngUmGcu2K2/QESydJUg6fEe
	 AsUbWCOwVUNQU7FU0S3Qk0WJqJIBflCoFgIJxREpbuamYBu8qcEVJ8lXiRCCNoflUI
	 uH06A/dbYh5UjyBsDJsurdQGMOAb4GgCQ1sihALOfi1jITQ2Kndnam0QrAssqlDN/t
	 6RSk8E6dxXcBRCaW3yd7ZPveK3/zTQw4hi3jpW3Y64KmdSZlfHtv6I7aXZ7lwE6Kk8
	 wg8xTInsB9yQFkh+fn1QArQjeoU4V6jQBfQAtGnroJow2FkZIAyZbvlJqKINkFn6Aw
	 82ximCU4tz51w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98D7CA600A
	for <ddprobe@lists.linux.dev>; Thu,  8 Oct 2026 07:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179144523368.9065.6383656098501763249.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68521f8ad1477a6f02c934ddbc95d2bb85b1119001669f07a17f66582a5b9ea4
Date: Thu, 08 Oct 2026 07:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791445233
