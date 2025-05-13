Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 417BF64D
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747139394; cv=none; b=tkYFL7OhtYCi9Ohr05/K+6489OPXayTnZVcqyT52aCJXLDuf/gNREalMPq+Xw8I/eYF/1Kkt0aFMfFPB0IJAkkmneqwQfVo4CUei/N26MteF9ebLTBL/ziGG0E1m+J2OEso8Bk48umSEEBJBsZ4zDPzex2arGcH7hqFeL5T2tAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747139394; c=relaxed/simple;
	bh=TnYCsTgCTB2mlndzLtkzIsB3kDDLjzATyl6A7SPg0Tg=;
	h=To:Subject:From:Message-Id:Date; b=hSiGJ1R3fYS09dpepVPtGSOL+yxeLPTzCGUztfocFodmdxPU7+JLCHwqAHrA78BoerKGSXfI68/AZ2NBfCtjibMFUpAmqmViygUROrbIcdzfZk/FuQmuhZzwojf43teTYsT/DsCoKcDmbwG43iEFAlKj6hEDHw4O2zgEQJkdWpo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LjKDmcoP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LjKDmcoP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1D41C4CEE4
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747139393;
	bh=TnYCsTgCTB2mlndzLtkzIsB3kDDLjzATyl6A7SPg0Tg=;
	h=To:Subject:From:Date:From;
	b=LjKDmcoPFX9JbMlCwYwQ2giI2awLIVLFY9/MHUXDk8rjN6cM0A7+03pxtPJUremHc
	 H9qYi+FtlhFS2aRGtxBsrtdpRBXQUIIl20gr8GMo8ZohqFbtJ2sjgBr3n1EbPoHXXY
	 Sqc9eAiCeJADUGB0PVg3cCCbsOj6BjtEaLimAcDIK0eWgzDVjTjgiEF8fkO4TDXFCw
	 B14HVQov6Fs3pKpRBtTSzgWUjYUr51Pu2Et+ydBC3fbFvNsoqmER7l3A5HEObSu6xH
	 3wIKT2XmqkSGHNns3IbIF+99SpiyYjFswOx3UjaiDH4JVUMRHuGoUSu4JWcdtZwZis
	 6m+fBMSelrtEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FCDBC3ABC3
	for <ddprobe@lists.linux.dev>; Tue, 13 May 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174713939358.14185.8567802474841303274.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c236cd7d81fdfa073fc822804da8e80c8e280d92e339fde78403af02a3095a69
Date: Tue, 13 May 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747139393
