Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E48FF1DFD6
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1706348297; cv=none; b=KGItVJO0Jzma4UTHsh/4/TYxNWSxVwZBSkHX9WGwqZg/8AvdPrwXjN82akzDOvljaESObtT/LDDc4h8Z2nLd4rYamGoCAh+aFFqKwxkGwTN73Dxs/c58g+JYZCf9UeEzA324gc42hAkiY6Zno8IjN762Djj0YY0aMcE3p0VPHBE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1706348297; c=relaxed/simple;
	bh=UCoiZQaBWqUYushQ+Qd7OrgBkJW7szogiBiY3z+7UfU=;
	h=To:Subject:From:Message-Id:Date; b=RQpqA36KKPAZwMuXOL2sLuRfuHMR48TBF+yhQ3AN0FVJ7/Wviy4xzng8mRtaRvdBb7Jt2vq15HZEaasesL3+Zfn2+voWKeEc1Ex64a9TSHCeqyINq+FePNTX5ikeBPQd37Nl7D0w7rd0Uf6BQA5JkZvAJK36GLXISvf7dpeNwtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HH4W3JBi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HH4W3JBi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7D59DC433C7
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1706348296;
	bh=UCoiZQaBWqUYushQ+Qd7OrgBkJW7szogiBiY3z+7UfU=;
	h=To:Subject:From:Date:From;
	b=HH4W3JBiu3cXfqxiPuwj0GibqigbDKj6TWPYRdEG+/1GCL/aStuKNhGHLANMNNMX7
	 YY34rlptEGY2RF9TE/qY0mbQwYpiqavqiajiYFoGbFW7qzGrCj66w7nuDCSptAtqfJ
	 /ZiO3KmKSWiOmL+JSJgCbobONAT2S7ZKMCj9kcRVROdkTrv7AVfuzF92s8onqlbP3p
	 wcVQfI5voEMETjBTewt+X6ceyOLoKXKWNgxCs/jmm1SW5NXLbkcYeomwpIcdS2Ktfz
	 1E+o6gEG8pdy0tdZcCGNfAW/Y6zwg8x20k3x0GQNepoLISsZoD13K9esDUHAB2mfdr
	 vwZmpwTo9jPOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 6504FC46CD2
	for <ddprobe@lists.linux.dev>; Sat, 27 Jan 2024 09:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170634829640.17476.11738115949085920831.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fcda7876117acd11cc3763a892d047866187ee301a993024322c9bc66fe16bfa
Date: Sat, 27 Jan 2024 09:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1706348296
