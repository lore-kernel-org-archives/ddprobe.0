Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B82335AC01
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790657434; cv=none; b=aeL1p78ZR6zkEBqyky41jPOB9QcXTRkOFKiPbOy83EGJT/elQnr3GQstbjeuCzRB3MO7pVYmHeLH7JHxu4KhJ82dT87XGh7plya+vgBIZRoq9RD+LauLPY0a5BgfdJNPJYjd+veeZxcBAd4kbY9z1UExZ4PQUjlgy8nB33nbME8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790657434; c=relaxed/simple;
	bh=HMKZDCbutFAud3PueRdJrhaQH/YiuQzDCgipSd6nPUw=;
	h=To:Subject:From:Message-Id:Date; b=r8CL6NeZmxO5yCzQzeh/WEYSExcHUAvhdAoE7Ixcz6BqciEhioVpS7iF3EjSIRSY5ItLBU3vmWg/N0OTc06S6meI86ZtZwgS52LBTUA+VTX47Q3U+RENeKqcQC58qcLCJ+jFeliyfBbzlgJ5Owx3/s8BBUmhKh92oUb0he+Gh48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k5Qp1uWg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k5Qp1uWg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1B3C2BCF6
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790657433;
	bh=HMKZDCbutFAud3PueRdJrhaQH/YiuQzDCgipSd6nPUw=;
	h=To:Subject:From:Date:From;
	b=k5Qp1uWg2+Oiy4NWjIUqVEfYWDBDgYvS3GsK9u1jHC6WYpIqu9OM9jMj9YYb+k6nk
	 MQAdTEk83JyTWmLsEaCWDc0F41SVusGUndvFb0NFXc0gunyYtnMTXFVfE5+L182iY5
	 GbznAMOGTuAUu0OqKz9BdpcykcZ5b0aHCWFYlhWBR8YohItWq4jmqsXpGecWE4UJqu
	 7hAFyp4c56tXKtlO+OUutftCM+O166mBJosz4UpoVKm8KowMgTv9V50yS1jrbdw7rk
	 aRMXkE1Z3+P/DT/ethFpLo9jVPQyoOKIffv1HaJsbH3V555y3hXfFMp+W6aJmDSTA5
	 ZK4r39h3J0hoA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96EDCA5FA1
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065743368.24752.10844824609798437637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203bef5860974dc95a025231138acd8a9ed3bcc91828c635535964536391b2ff
Date: Tue, 29 Sep 2026 04:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790657433
