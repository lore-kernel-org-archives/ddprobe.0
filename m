Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34CB52135B4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743152394; cv=none; b=QPsSXigo90Uj1DpSf1wQOLPy244PM9FZMyegaqjz0aQn1j683hgNGYTUjD8O/ckHpwbRp3pONAuGtAfaXgJIxcDYhZrz6y+3U/OM38c7NA0MyzBH3y32+Y2vxQ+PSlwuANZVm1cLSfVAMMhLxdWAKBmWSEVZD2sCNROGMuRDEz4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743152394; c=relaxed/simple;
	bh=qaYNQtnNfzJxVD1AS741mJk0lOver3Ewanb52BbdRxg=;
	h=To:Subject:From:Message-Id:Date; b=W5qZwz9xNNsYP3eCJN7hef8UgBp6Z25rE4Uz/jd+OT8B/w916dEhXBJvCIIHEzNkmK0n2DKzqXXSnlE6iebCRnIMr24smEjiujJ/k1jYkaiuSZjaEbihlr2quJ/gIoEzVYFTmIAv8oG1mU4y4gw6K53bK86Jo+monSDKhXcZb28=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CKg3FLnW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CKg3FLnW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22E9C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743152393;
	bh=qaYNQtnNfzJxVD1AS741mJk0lOver3Ewanb52BbdRxg=;
	h=To:Subject:From:Date:From;
	b=CKg3FLnWlwiWR4K4wtTGnjh4U/eRWWdoojSFrbLcqkIWzO+iitTxYNI4v7hJYzNzK
	 llKbbEGHXEYBZsg1cMc/Cx5oU5I9ckExOHj/seJ1kas8CKnR3IkCab8ecALieY1FwU
	 Eka5fvmyg055DmQrbPEGQFLWegVeAbXMhCl7q1p04JexuOFdqsh9uwzOIBMZVj6O0z
	 Po8sY9bGfIus7rTmB3IzCwUuYbmdZz42izYlFMJhdVg3CaPHC/c56TP1JukJ8+DfZY
	 q79z0WZnubiIRNgtO8K96o+S8VoO409eYV8psEpr707dfoO4N2QafgSTLVfrFUwkMo
	 /i7qpQVllMaOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9037CC28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174315239358.20388.2523962776184904646.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f280bbd6b5cce77362e10392c1d844e546be55b2ea8994ae5da81602969110ee
Date: Fri, 28 Mar 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743152393
