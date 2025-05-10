Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 361B2272E5E
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746901194; cv=none; b=ftpjogwGP6KOLNo3Fi/GlAPOeFVwaQLclhxuj7C9m4yxTVw+BZ5JodlEyRmLpKx5LKVbWS2rn0zRTgMsNwEbzGpd9kSOqc8SkNXkf36fWTBQEpe9K2J4kvKw2GviXswz0Pd6dCvpNRcojXw5V0JS+/XuR4nZPL5nNzat3018wUo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746901194; c=relaxed/simple;
	bh=OCqJOuO/44NKXbDKMBQ7whMwOsr930J1N5JGt+HPRGQ=;
	h=To:Subject:From:Message-Id:Date; b=OK3apX3xXOUe1/QwiBP4Beyjx43eqaEnPVHsqkJcKD8175nya5GxMleOXKUHE/6H6y+mobcAvzqb7l4Ak2VNTckPoiQU4oIrt0ngWIFF+wfsLQLT1AYT4QC+MGeTb0L4b3sy+koinl7x8cy5UQ2/6Kz+jMm1tvAjkV3ufOs8ays=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MGMAzh4P; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MGMAzh4P"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5745C4CEE2
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746901193;
	bh=OCqJOuO/44NKXbDKMBQ7whMwOsr930J1N5JGt+HPRGQ=;
	h=To:Subject:From:Date:From;
	b=MGMAzh4PMYWcZbS6uU1VZ/gzqSOZyEh+/NUwecptb300Z3+XFnm0ahVBocJUKzG+p
	 a8+dsfOL23mjwqE0XhsNl7DG/Q5MWI94bfFjtviAuKHisWFkQX9vpjIbfPJyLwUfIN
	 39NS9Eoghm+B0geW0FQjQUTqKZ8H4l0KkGVBv/kzV16nI693zeaGuNncZqh4h8xSYX
	 t2bYW2Y+V2szY6vBkLNY/TYqFOl/s+H6RZIbRvv4ddcQzq9EtmaNBGrsBpiK+Swuwc
	 XDljC7ap0zrLyjSBIvjc/bH1FHxqy6DM0MWz4IyUXid87x62GmGOd7PWOeblfSXHqS
	 jOYSutFStbKQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B14C3ABC9
	for <ddprobe@lists.linux.dev>; Sat, 10 May 2025 18:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174690119358.21693.15351144119533985392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d7f68d1a6f8316a8f7271a1a673a0b72dcde311f550e6f8bf37d5b214313171f
Date: Sat, 10 May 2025 18:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746901193
