Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB7D346E51
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792129834; cv=none; b=L+Y5w4SvSz4nq/Wfxe/z7gB9xsWtPmMxi4r+QCzCc4VRabDQ1sbDihxlnpzQXKjOcfMhDPDo7ofpPRUnnuXeo3kqhSiuwQ8u39ky9IQ1+pxnV01tXvlX7pE99vRrC9MuBQGzpPK4Z0c+QBrWS6jgrKto+A23w1ASgM839L7VO5k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792129834; c=relaxed/simple;
	bh=eSeFqDQGQ53RPPelMzzT1lHEJefIhl7wGtMD+eRna1w=;
	h=To:Subject:From:Message-Id:Date; b=Kht+r7D0HfoeqRyBgHdjF2CXta7hLXS9H5SN/Bnb3b9BYfOkXtmDIrPcOW+OgI0/rXuAnUTZljSoNf/sDVZUaxVufVfrhm+8eJZYfDguNkUGPF8FEjGxkDRnTk4aKOnlakQLUECK92qcxyacaxLN7AxAwoNFYF/gc3hx5ftKPlg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jc33dIRG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jc33dIRG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA594C2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792129833;
	bh=eSeFqDQGQ53RPPelMzzT1lHEJefIhl7wGtMD+eRna1w=;
	h=To:Subject:From:Date:From;
	b=Jc33dIRGJ5eSPd+wDPaBMxQEaFbzYnyTD8scT//5fchjJscrVAZqpOkyZAamJsXPr
	 m1/lmyhnaBhb/T5OHO202D+DfdxDOtFUmJ8JoVSZIbNllnh0Kc30SmDIsy3jmyuPO4
	 lwQ9g+oKrEM/fglNbrVZ0IAXp7lfBUIft/KlyMf2SW/nv6lxiYSo+ph79guzUvurFw
	 dttM79VfznedCncAffnXHbBoOusC4R1Tl0/KJSX/PvL6rPvRhxxkFHME+RApgo0tvp
	 38WMbJ1RjZRBcPltKHAOlhtLdl75XrXxMcYm1T1QicmuKR0i1AGZxujqQI/DlMTcKf
	 5eOltiKEghbyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A98F3CC6B2D
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 05:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179212983368.29643.6045021333428972092.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a11b7ce01180c134a672c05f9e4e66052a325962d7c4b6ae799875d653029809
Date: Fri, 16 Oct 2026 05:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792129833
