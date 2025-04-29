Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35804213E67
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745951994; cv=none; b=i2rkA2vNtgNHlcs989wOsDquM5AuClwBhan979c8ELRyVNDcpuFlrgPGfaiylkeic97ra5xNqiZqUfI0G9Jvgm9moxbbAEmjCRQMkA3lkX2Oo35Z5jKdpA6x+ErGfM/Suk5BwzZS0kgdf+5afAs2gy70lwlRdFsaO/jW/phiuSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745951994; c=relaxed/simple;
	bh=8Q9YncnwO1GpS7nZGSoCc16SqZFxOx1qdqvOtFK3Sbo=;
	h=To:Subject:From:Message-Id:Date; b=EOzK5opViNyE3RfQR+qFJSeC8KmApBrEUQNv5PgSKyx06meJiNFKex1L9jnibe02UbvnpPesjJA7TDNO3P87ton85a8pSdXe2fYHYXaKTeyqewx1pIEyl7TqkWKVt7YLNkZHe/DWFqyB372mR2dUA725tSAffdYGvxz6lg0cuik=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YniR008b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YniR008b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A130AC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745951993;
	bh=8Q9YncnwO1GpS7nZGSoCc16SqZFxOx1qdqvOtFK3Sbo=;
	h=To:Subject:From:Date:From;
	b=YniR008bDEi9PC11rpXs210z6U1AZR2BF5yX5+N12Tp6pUKtHIAZiqHmxfbj8osWX
	 HpPT6AHnDUtiEy6XSGqh8LKRDls44SOtQBDGjjUfVyOPwiq9V+VXT1lWn7HmG51Xlc
	 IAf3fNPNAB/mdG+nHdqaVDC61hOp3zHAJnLxVwN/dD/rGCW9v+svaQiIVAEEUmR0OA
	 VgDzfDtpdAAFUkJq64rg+9QXGOHvKaRkJp1Viy9xTMFH4J8mPESpFdJlPtJ2KfFCsn
	 HZ14ay6dbwNkvxlf+9VGIgqXkdtAg4Lq3aC/FMJsFU5oz0yeAk47D+h3MiDX7blyw8
	 utCDxdcaXhTpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2B9C369DC
	for <ddprobe@lists.linux.dev>; Tue, 29 Apr 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174595199357.21509.13892865092989711120.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0b3550fc51f7e890e0d60456ca1fd31fc18d8d4f81423a6f563435e45fa1578
Date: Tue, 29 Apr 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745951993
