Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C337233935
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781569594; cv=none; b=JUJVsoHW/DG5SqVa7s5ExxisT/3fFXByq0lLP7nV+yDLxCi08kN17saeoNg1BBAjn1qiLCz+GJIRL+A53gWaMJV84mrn8upXoHNZea2yen05vwWv3l+0kcRU+voSpLtm3Hxa3gVLmHF9FvuNkgqVFCn6QofAfgsHA+BFOtCkUrI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781569594; c=relaxed/simple;
	bh=ri5FHcfIux3JMAzDSdW9sqP2irQ7uDnAr66Mj5m8dQQ=;
	h=To:Subject:From:Message-Id:Date; b=K1bSQgUiGHjcr/ioaL63DANP6N59ASxI7k2XBB0ByKL+36Tt7FDLVxq5vkxbGr19i70Od97ybNWd7Z3/MuHoUPlhtZbzxd8UfPfxcjbBxpO+oOUz+y4oAMQOviLyWsnDFbPWllWrtxtq35BiTz4OHaIAIXRtotG8t5LYsgZ0bg0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LqSvvUbN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LqSvvUbN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5903C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781569593;
	bh=ri5FHcfIux3JMAzDSdW9sqP2irQ7uDnAr66Mj5m8dQQ=;
	h=To:Subject:From:Date:From;
	b=LqSvvUbNw9rhRsEBC1GfYDmdQwS3l1sWyWHB5Erd+nRNQoavUHjrvKsKiRrB7BiAG
	 sZ9N8cMmQd52A+qgGUKSK+Wp58hovT6LgxGCZr3NP59CiWeZ7Z8Sj7vEg1PbI31Pyi
	 l82r6xeSOLwPYeUld/dZRf6YuuZaJ7q3SfIpOv4E7aOk3wScMcSRQyqwTu2eN4sOt9
	 rw/rnfsgy6CpmZu9+/efrCwr1QIcgjCNSU2J2C2FVZCoOAMUtOQ/IIJgHQ2Nri6FT8
	 GgclvgAXzDVVLBAUNEUrHqZOJ0d/PPtrh8QYqZAqoIydcfCLVfe4JfelugSzBSouqa
	 gkZZ3f9K77cNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1157CD98DE
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178156959371.24790.7677734350759310465.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c0cebbf927e504c84eca691d6f13de12555f385e9cf983c2fe48dc3574dd2a4e
Date: Tue, 16 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781569593
