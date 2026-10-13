Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 510F525B095
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791851434; cv=none; b=iXEASIflZNR5uY/nOofEVjJ9hAaXN7gttFNV268z7NCiR8YrMXw9LsNndvM3gmQM52uMznUr4HZW+UQd9h5xVwsrOs8EFjFzmFswraQ4uIv/FncrpEzEp3f2fgmXgBi63LZl3eM/QYGstDAH3KE6cj+0jhKlpF2kTguzSbgaquk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791851434; c=relaxed/simple;
	bh=bylv9cb1UUBkjTKBqB/TT4A24bnb1t5uNEXwKuO5Lts=;
	h=To:Subject:From:Message-Id:Date; b=E1/RNbPTNof/oMN7PZFYi6lMpIZ1OUJAW0E/r17frpI7y68zaoT2dbcKWFm6P+8UaEIG/SL8EB397ZZW/ItuVri5Op089Vknlrp86z6Nr1N8PXqUXGx4dbgndG0hiCMfPcw8kFrMWYAuVSuNigQ0hpRjF3zArabDLV6bcqJ2BuY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Op3B+UF7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Op3B+UF7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1674C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791851433;
	bh=bylv9cb1UUBkjTKBqB/TT4A24bnb1t5uNEXwKuO5Lts=;
	h=To:Subject:From:Date:From;
	b=Op3B+UF7GcHl71tyWvIzpu4vr7IPqjP9xg44PsRGkXGBT8tvtRjEEgzYd1eWP6lj3
	 W+67MKWBXEQl+OuJvRo3Htk7QJ0ICetLkjXO6/XzHUw+dUnkWV6RG9h077Vv/DtcM2
	 /xV7baRo7H+OO6QYTRdPVFSkVr20WDkFjNjneMDmC1Fm4Aa9ia3G3YHKkhYLo6qULR
	 y/EtA0+GXnDJP3TDHpuXmJUQLtU49s9sY7KTXON05PW0I4LBV63meU8p20PZ20z3bm
	 3gbXoYlwsG/gm1AQ0pbQwxJW+vQ1qIqcBmLgNFhjk+wB7NC6fCQkeuA2bMIWm1IO44
	 3liTbQomosRFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE110CA9EC5
	for <ddprobe@lists.linux.dev>; Tue, 13 Oct 2026 00:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179185143370.21832.12644447648458809690.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7adda4ab1b02054b63b4ec902a6ac7300be0c1b4255eb8751012b18e97fbfa6e
Date: Tue, 13 Oct 2026 00:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791851433
