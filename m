Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3B84024DCE9
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747958394; cv=none; b=empjKe0eaWJs93ONx/Y1dlIkMF1g05yoag+/exIEJBpTF603FDYfEhDD4VcCp1N4WaIuG0IwWJLn2yTVukRh1HRsTRT9/i12CvoQMX2AIuNq9H8LNQUgT0oyxLFV3phz01064a5hjN4J6cdWc+3bhlKMrWHdeSBD9zAquibi+Bk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747958394; c=relaxed/simple;
	bh=5X9tSLJkeqTuMDgobZ3m9kmUVk3pDAkqvYbzNSArsak=;
	h=To:Subject:From:Message-Id:Date; b=Sh/PKAHvQu6mmueIe2xLlGbVQVWzbEdBQq31LPThneUNcKipDQx2msNGJwSVaqAgO7sRYGZyiniwCSk5qbxa+s09nKmfJ+n8R8VzcFTAAlbuz3H6ngkrtKubCe01tp1/R5993/4r6iISbz32n9wnQcEiHwSHOm+mLI6lPGa4C4s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QdRb+Qx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QdRb+Qx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2FBBC4CEE4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747958393;
	bh=5X9tSLJkeqTuMDgobZ3m9kmUVk3pDAkqvYbzNSArsak=;
	h=To:Subject:From:Date:From;
	b=QdRb+Qx8gMBKmlvcSQuNixHTYTtdXapV17sOq6Cs2/PPOg3TsoW7kj/4zn4pWC8Ek
	 h7GseWlN0ISptYFg0dVLb5Je6ti03/0L/HvbsbvGthrTQLRnWMSs8TlABVdL8ZuGqz
	 ej6W7pqsn9fGlxGGEx2wJ8D37Uv8OYBfchgkPnl59Y4kV4Uxlo2Xv+dzIiGWCvLi94
	 fDP8AsoimQDWOyUCoETjb5d6413R+o1VuYoDFy1PEAk6BHwlSvqd2fmOpptXyVnCx/
	 ipwoikoz25z79zrZvavwYuBS4CGajGc52EEP54lcx/Ha2PPh3STgQwyz8mJ7oER+n2
	 g1aus8pNH3V+g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92C5AC54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174795839359.15665.17907975704391006497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 450bdf24c5eb5932ca10586ff0269a346f6645f00ac6d7a1a900b8d51337e228
Date: Thu, 22 May 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747958393
