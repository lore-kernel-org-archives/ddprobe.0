Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DC2BF20494B
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729273554; cv=none; b=nOIwClpsEVCUjZQzHvKLERoXtw8IBcQcsGlo9L603RWNQ901wZGWQ1VWnQcUrFghL0s76cj4kCmsOoPkFqmphKxb15FBJzJlkZmw1Fk8Bnm/FwMbjjFPXrgKacoDINw/TG/pjQcDv0xCW+KQXlNCZo7+ZJkXynS5TksLih/Fn50=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729273554; c=relaxed/simple;
	bh=SbV1OwIQjNwIzyFMfxxKtzrWPhFncXrwLoF5Pndg9ng=;
	h=To:Subject:From:Message-Id:Date; b=BzyV/JInbRjkH0eweP0AQ6M3CCfX0CN3af+3vuBxkjRDw/q92WOcqs6GrM4/89frIoOQ9qyECl0hhYCGQLdcwxUsFNeIqd5bsquA1JNJwoZ3tIGCJaGklTZ4Akrr4ZJmypUtSoNiZuzilDDFw6HBqaJRO7yDUq3NrFmXtOteri0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Z1W/ZS1f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Z1W/ZS1f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD27AC4CED2
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729273553;
	bh=SbV1OwIQjNwIzyFMfxxKtzrWPhFncXrwLoF5Pndg9ng=;
	h=To:Subject:From:Date:From;
	b=Z1W/ZS1f0wyzSP52Ek7ciT5x6Soc5WS+PEi5nXS0Aku3LrMYZo0TPiAEyu8UboAlO
	 XTr77vNGUwG55R98h1jGHFkD1MBRf3akb5vjw3enPJnavdO1/eRLQK4p7LaPU3HoFR
	 9TV0o2EGUVUjbzQNNo7mqMudifi2UwWVtO9smw32qr96ujWAHStLOoNHdhTeMWIzuI
	 8zBfI4zwPprys190A+KAbQ9PIANzvytLhnBarDJbsyrzPID+t3WAJMxE0lvCsp4hKQ
	 p9ubPb4c1s/KZAoYuKKFGbe/ZHchZPNTIYw9AYioANn9TPfqBPxNP7V6dKQAeFWsBp
	 AMP9S/YJhf4qQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94FE8D3DEA3
	for <ddprobe@lists.linux.dev>; Fri, 18 Oct 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172927355360.29259.17981776918620818828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033c1108669d7cdae9c4a4cffd453d1ad80802d6425fa4a681782943b7d8d5ea
Date: Fri, 18 Oct 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729273553
