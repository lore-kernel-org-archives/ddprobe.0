Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46A9F15E83
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720760243; cv=none; b=N+EWr2/tUMG2/Z3hOb8tpMQjevqVbXQebAOeOiFHqFb6O0yFuKSCYNStgy8uPk7ZLRu1rYuVDEZygDAfVpxCoiXw3TBlJtlCvA+EwoEPfo9nSIT/u/FqxrCrT/8kpX1iEJRWY6gA4E7dTu8Out1hCJ4xXVTP+URoaGtsM8ukcDk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720760243; c=relaxed/simple;
	bh=owjdpmR+02CUqUPpyd0iys56F10QafHZ6Fh8H2e9c90=;
	h=To:Subject:From:Message-Id:Date; b=etYl5TqzwzgBCPlR89WXfhr86+3dL8d/CdbhjCMb9JKUlIpFpyUOEvveJ7oL20/MDNhBP9lS2NhRRWhYioOtGqCpnc13+vXrc6aApxuXckH838qE08FZpxLKCL1nPFYA1km8Ao5FOWPWCS4IdQSsLA2oXAPh1Tnku29e58XWQ/E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gkYkxErh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gkYkxErh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D1C8BC3277B
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720760242;
	bh=owjdpmR+02CUqUPpyd0iys56F10QafHZ6Fh8H2e9c90=;
	h=To:Subject:From:Date:From;
	b=gkYkxErhxLQ3UVYcmEhe0ffLnJiGIN+MEmyzJIvks/ynuHsqGTnWvRYsqghbeI89h
	 NfjxM7sian0cq6Rdoyl/p52bofgFaGZ6opTlZEdFG5yE5NjlocJDf+YUgkRFnau+sM
	 EBcobl6d9aB0NYTau3WVYSuhj1v4sjViErZcLOrCj6Od88SV7uiYpRKhyGaEE/bNc2
	 2idgebz6TLrppixzAOt9sqQgO/9LKDT4I4O+CBT50bqFYVdyybref3BPFKlNDMuF0Z
	 /5Fd+G1B5RUeFWR4fi9Yy4Ep8bzBdDmJGQBRC1p7RWSS1FXr3vSw0yapSgaKDMNGwE
	 +OJ2VuTL/o7Tg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BE38FC2BD09
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 04:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172076024276.19445.14086614956659148913.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 240dd1ff104dde60aedd78554c78a5c02a921ab4e00fd7932c02631d24f2fbcf
Date: Fri, 12 Jul 2024 04:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720760242
