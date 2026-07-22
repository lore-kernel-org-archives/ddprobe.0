Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C2F7F4C6F08
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:18:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784715514; cv=none; b=azS5km9rwMU8RhP+sV1/irGqwmXIrmxwHSzZDMSSQ1e9Gqi3ByQNNwFFnAqqirKgsZF+sVwzckn9RH4QB7ZgVQAcjU6jbYlDtruQJXAaAXhPvn01jZDwXuBM8nYX2K4MNwMxsjPO6PSN0ErykLx1ZEsgW8/uUnYV+B7U3SIYEj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784715514; c=relaxed/simple;
	bh=vkf18sPVPw77ifdOI+li6MP+SWVL+YWoznwyk3dPDL4=;
	h=To:Subject:From:Message-Id:Date; b=qDgw/OEdKxkCsuq3gYCXVlfeYNoLdlwClPOI/aUyGfpHumja02qx16b/azDGoQ5hem7F88dyIxfd80UbZdb30qU8phrG7Y8ggWRTrKSFhYkdA6p9DXHut58XjYxW7O4WpyvkQMEJ907e4heCJu0Kgg8nlgf39ijSHgfeMa5PP7U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DwVKQ0rk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DwVKQ0rk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5F03AC19425
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:18:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784715514;
	bh=vkf18sPVPw77ifdOI+li6MP+SWVL+YWoznwyk3dPDL4=;
	h=To:Subject:From:Date:From;
	b=DwVKQ0rkAIWSSIhO2We+ihs4txYGl8+12Ym6FRTowxCopxfUUh+ZMdHSnnemd11UC
	 r/zQeKwu+NQUnL5Fg5qZENnzszvUVWSLnGyUJXApvU0RJbQZYfSzlMF/hDeLaWtoX4
	 VGxNxijzxPE/ZgXt1SyrRKC4rvb3KHvcHGjagptQNsoRhwNuFbcw6BmoSrhjXbol8z
	 8XIsjNKWtL//XyPKiTf/fIe7pgT/mfyNJsUEprlFXM+ixAG4ss+UhdiybOX2HXoiCi
	 CKQStoDX8Wc6WHpAlvVsBur1PI0zY00MSf+h2fmhXXxJYruK9iDFdoGvelDCvM1SNt
	 NnIBmjHf9YJ+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id EA20FC44539
	for <ddprobe@lists.linux.dev>; Wed, 22 Jul 2026 10:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178471551394.24839.50765213269465825.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f69bb565b4938f4b4d74f21b5ba5bb6c1e0a5d45baf8f984dea46642443c12b7
Date: Wed, 22 Jul 2026 10:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784715513
