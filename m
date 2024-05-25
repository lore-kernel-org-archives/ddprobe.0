Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73DEC2C69A
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:14:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716678863; cv=none; b=X5svGYVvsT4iip68cz5VAMySJtuCJ2obtGxGK0XJFfvOjmyjznroRsavwcM+DyinwospDa/40Qe2SzlVAffaHx+t0znRC9CuiL8mlAfHcMGdRC2I3ujSt6wj55rNIpQfXk4nDDhCq6kSilBoujayjtlVH3b6XpL5fUt/Dcie7oo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716678863; c=relaxed/simple;
	bh=hIsmo5IoKNDZQjc5zzqTru2IflxPQMTHIoOCp+A4SZ4=;
	h=To:Subject:From:Message-Id:Date; b=c2LNmpaXaN/fgsFZcK3E/JNenqbsn+o8o51+/3FgDm4b5i1QHuDTpZgw5UrH5DlAiY4gxLjGcKfdZROiQhu/NfFpywCm3Nc4RT7q0gR4YSb7cmG18PG0h9VMhax0YrKRI/NqSSNXQOIm6WBUL3ymZTMb30e8HKc1WO1TLnyaHjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=V4pLkexA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="V4pLkexA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EEBDEC2BD11
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716678863;
	bh=hIsmo5IoKNDZQjc5zzqTru2IflxPQMTHIoOCp+A4SZ4=;
	h=To:Subject:From:Date:From;
	b=V4pLkexA+ajPkzzTfrCwRxXK42ALZihAKhawzQ0wbAZU5EaK4QKMuXUU6C8HqpEuQ
	 HQZOiaeOfIjLH/osjBbI1j0wV3foBMi198WvUvPFRPawURm8Q1YebmrQeUq1lUqmnK
	 NgiCJkz33EeZwPjeXlz9GOg881ZmcXB2Q3FECliFrVr2T4cKDb/Bb3PJwYBZTxXfYN
	 a4IybunSq567tuBguIZMqaGhecTHSnhAl+//IizOQ/UOZEFRRS0DikqSt1A2WWSYNd
	 7nPYVVLHcWAemrqW8RzYvgItjQ8ni5LbFl7fQQexLCWCUFOlRMFTs9AmpH7sfTmeYw
	 LDAwfmXbRARlw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DADE5C25B78
	for <ddprobe@lists.linux.dev>; Sat, 25 May 2024 23:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171667886285.32045.11899289733216190173.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c07fd785d33c048c953d8ea08da2c4490da3f269e5536cff7da030178ff0a44
Date: Sat, 25 May 2024 23:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716678862
