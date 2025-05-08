Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C7FDA4A2D
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746665993; cv=none; b=gChmwchDjstFr7mLFY6HsBNuvBvF+eAHK+IoDJ6eczMnfNYtgxosJB7Jt8IPSqjZpFR9mdYOi+DcSzRISj3LqbAr0jJsEbvVFKIRI8iYHYlOLRi/iBkgVM/UTlQhJUPtXwTsKqG3IgVNg+b/d8W375zWu7Z6pcC9gE7CzvMBC3Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746665993; c=relaxed/simple;
	bh=+q3W/vJUCJ+zZP8G0ue8vGhJicbxt2driWKJTKEW9+4=;
	h=To:Subject:From:Message-Id:Date; b=u4D4rfilHVOyJBmtrNtJrPW3xR7wDRnM9A8thpzwo2ta1NWHj921IFgliHn+uUCVYwHTNKiECTzRg4X1HIe+mIhAUrtuZJMcYR2bq+yMCoWLCmgXd5VQwV5TwIOd1bafAWeMNwmXFh/y6Bw0NGvbc9eQAFXdvQxuHCDf2+XXCtk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OykiwmpL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OykiwmpL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9B49CC4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746665993;
	bh=+q3W/vJUCJ+zZP8G0ue8vGhJicbxt2driWKJTKEW9+4=;
	h=To:Subject:From:Date:From;
	b=OykiwmpLLeXYoaijae3+7q4sTAxiwwkUq2cYT2RMbkAgXFQu0ZubycMOmL+w9H68f
	 Y48p2FHDBDxMiXB58KUnIsqhUKDr3zZPrveiP3A6JvpcdSVBszgSgqofHuQMLFQG4A
	 9hpmKoqFZUM54mE4C9tM9Td0Ts5q+2wIXFU5X1A1IYLMTRJ8DsSyxfHLGRlI3fVgtG
	 YIZ8Vb9N1Qdo7htnoymX9ZtD87yeH8DUKgORpopd5zq34opVK9g9UGcn+q949phGhv
	 O5u+iLYltPAeriZuIFhApXjNXxPdGlPUlIdaqo96c2z1yQKoRXq8N8YWremrpuUQmt
	 TZAyOF3sdDgLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E200C3ABC0
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666599357.18264.11289858330381784008.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2c1f90949bb3606dbb2797f342ac5f711a8317908acefc009ad765e6d7a2803f
Date: Thu, 08 May 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746665993
