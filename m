Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F36875660
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 01:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712538497; cv=none; b=HMJdUpivDuezbWNmuFpmOpzrMm0V0UTsEPG3iBHMLLV3u7Uco8XyX6j+e9q2VPI0OVZIW1Kiq1QdqC0AmSnJ0dIHe5+A+iEGVrKVdAQjKJoUckYIBiKvEfs/FJef7tbe2dROrQAWY3T2kE50lhR/iI8nT0NAl7pwx4qBcPDMSQg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712538497; c=relaxed/simple;
	bh=n1rx7jmA/kUf6KnP/A+OD8DEmxBFvB0QLZAZc4Jh6w8=;
	h=To:Subject:From:Message-Id:Date; b=hpliQB9TStWMw3M8mDL7zfIITDDRHDNwgQUVlt1i67jHd6JLnMprY/wa+FEYvL9bzt3rCuW0mJ/1dx5gGubRiWp5YIQBEvPLZNlfVagupbKNE4xW9WN+iZ6YjdJvPy1iG/w01x5izOElL0diRDVD+eG5HRS5TJLIn+CjalNI/dk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TasmhqrO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TasmhqrO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 872E9C433F1
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 01:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712538496;
	bh=n1rx7jmA/kUf6KnP/A+OD8DEmxBFvB0QLZAZc4Jh6w8=;
	h=To:Subject:From:Date:From;
	b=TasmhqrO4abmaYLtTuzOLaq6fsdhT5zrOQ3Nd3xNZSY3gfR+w6hTL/0o1glO0C29w
	 viQtYlqg6cOPIwuh7ez6WuaGcUbZl7kUuGYbGvwziWg0MH384hK16mSzkKcWEAtQYO
	 Md7CuXmmQPDYt0ptCmj84efkZSU/T5ITIQrWJuCPLxk3STiXeb4d+ZQpk+bV9pWUAh
	 y+79vgksOlrJiCVKPry29mMKeUFACkkdzcUHNeqfeN95zN7z/WbqZJPsHwZztBVThW
	 rALm/hJsFOSNddLvNilqH3wwg5AWkh3cQeLPqd3cbRP8vA8JBcPkg4c6X+cxMbDU9O
	 vKbqTP1s4HTHg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6E00BCD1292
	for <ddprobe@lists.linux.dev>; Mon,  8 Apr 2024 01:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171253849640.30694.1682855181771301074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3cd3f0d2ce31df295de0cc26adc68ed142edd4b0e234f8132e98da778febbd68
Date: Mon, 08 Apr 2024 01:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712538496
