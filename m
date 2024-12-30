Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38BE1156C6F
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 07:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735545354; cv=none; b=GRqwvUYPP7MSpspqffWnX3tHaYz7BYyTGNZQqJ7HX3cZSrv04xLz+DaH7b0sFx/BCMUSRc5flHMGZtKSgDWS0LvQVaKD0NEX6EQaLVU4FdMNTdJIuEZSNmru8OUvidHouBD8hpYNZmmsA1l7c951XAZUdBOCAXKFq6e//44Jl7U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735545354; c=relaxed/simple;
	bh=kYfApg1fWimf2fi+k5XkFaTm2kZaZDZQrP813ZJWZ7g=;
	h=To:Subject:From:Message-Id:Date; b=W4cAbFIfk6D+fDOTBCHfMlQB/B3WLxk79Wn313yn76L0kCxdDT2H3PcVGlVZCOc+l27zE8Wf8e2kDalLeX4uxzkdcX2yyucaU4QsAD55bJ5ZbItBEg0Sf63sdTNfG2z5foRvBHV4WXGgWELl17xWsHf/ZURnXRuz4sWoT7GkofU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P0d9RW7N; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P0d9RW7N"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A97B7C4CED0
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 07:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735545353;
	bh=kYfApg1fWimf2fi+k5XkFaTm2kZaZDZQrP813ZJWZ7g=;
	h=To:Subject:From:Date:From;
	b=P0d9RW7Nul1XRnxLfUjUkZ/Wsm8lWPHGEkYbCG4juGfyZsnnPFZA4HDDe41O1xxwm
	 T87j6XkmAz9iTUxMbum4Ew7NeQjQYLTZpD+28+FzCQm/s8xKN3n9WAx5Got9wARVSt
	 btajKCL3tf3SzqByMwEPAtIH6MZHE+Liz7LD0dOfv4rDe/8EoyeVUOA8B72TVKNraF
	 Np8YKc2rvUh0yecmMQ34XFidNNANwvFp6ctLpx73lBUSc+CmRE5WiDXpMed8sGYxxa
	 DcfzMlYuBphHMgKb24jdFMRJ4FFvtCF3TX7o3y/P32Kzk4f3zforE3AV8UJ/OmJIlf
	 EvWMgAwHdOW1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98B00E77188
	for <ddprobe@lists.linux.dev>; Mon, 30 Dec 2024 07:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173554535361.4432.686524528176574594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aa1bbe931b8a84a65947d4d7e27b8192a7fbc16cbd6dff17069dc2cfee5c8232
Date: Mon, 30 Dec 2024 07:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735545353
