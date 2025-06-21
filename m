Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23221433C8
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750514394; cv=none; b=B+m0UUNbnFZ+10Ubkzp1QYDyi5bfvXJ9Ivqb6E7jFSzmy+p/NuX2YtSvSAV4jFHNkCZQH5I56pBgXboNT6QoAT0g6eaNk7lLmAmUnQgi6QhdIdj/G6bwumsqEONZkQvRLcqsTYZo8WPFBZfpNws+7senrrW4vCOYixd5kHrSPas=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750514394; c=relaxed/simple;
	bh=MPs6sfMwSoDm9QodOVus1lGJZmk5ni6ZEsJG2lxyJj8=;
	h=To:Subject:From:Message-Id:Date; b=eZ5uNd7IzqdBj6dNJqHey2a0WhsD6NcG77rwnvMAFqEbrDiaXGHe4AQZiPysjUztz+2gZ5U4U/yjeQJa87yisMqSwC6+RodAEbbfrrJLqLIPjMlXxOM9poB3bcS3zMwiVsx7bxgqtzwkfcWOH+a7y/8JjKfZMhh1eruUDWh2m0Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rOeT7oXD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rOeT7oXD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6134C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750514393;
	bh=MPs6sfMwSoDm9QodOVus1lGJZmk5ni6ZEsJG2lxyJj8=;
	h=To:Subject:From:Date:From;
	b=rOeT7oXDoUug3XL/3+0ULo9sY0LxzPTEPgaElRh4xRwprsRXb5h7D4CuznD9b2PFS
	 9ysvpbF3HDbV/YO0+ln0emZUR4zBhCqPkhRAvd3y/KEAPle5yJ6cTMHmqp35+g/+Se
	 3aAJdihL4phtVdlFqdFFbuwqdFtqmITP1BowzRrdIyFkUKcsxRSMsaMVsZZZ4yk0gw
	 Wyqsp5M8w1J5qHHsFP+T0iiL4aUHRgJiWVoMLtcfZBklzCcSe3gpQ4lKM4H5j2ksKC
	 pTDPHEb8MycY4C2jZHkVqkYO59zf6H5QAtvAIdl92iJyV+ji93XuW/4HpwEXf+He/O
	 gqFoWUhrteUQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D91C7115C
	for <ddprobe@lists.linux.dev>; Sat, 21 Jun 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175051439357.28652.811244122741735543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa739e2310b2248adbf57bd9402daea3f1720a739472f574a6662494086f27e4
Date: Sat, 21 Jun 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750514393
