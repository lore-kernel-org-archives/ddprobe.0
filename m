Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 606003A382D
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:50:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785358235; cv=none; b=Zr9mizNuX2qySq3dB/yshQiVTdQ6XoxCRCuLwVQ+4OPW1LMV5M90WjRqckUwwat8dee9cX0MM4XlQRQJxeeKTduxWMlriI8GyzZT2cgoX/4hUfjRGOCag65v89O+oEsLjUau5bCWl5gGpd//1J0URL0qMNAUGrIpF7C9gs5O1hA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785358235; c=relaxed/simple;
	bh=zeURuxVMbSoJL5ltr+ftU1n4ymFAhsF92r26p2WNDOI=;
	h=To:Subject:From:Message-Id:Date; b=XcvbHR3HekJEEne8RlVEYYBVN61X38j/SscNnjZaOxaZnRvg7PxZSFxJj49i3WXH1GuFq0ZPwdxPnJVaOtcBBYhSU6CvcfldVVAAGd6u5Ehuvts8kPEeoxxFOCaeyVGTfcU7byWWROuyRrhNSwbrCvzI2teMHTQ7TCBojcuRF1I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QMrHS3dk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QMrHS3dk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E8114C2BCF5
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785358233;
	bh=zeURuxVMbSoJL5ltr+ftU1n4ymFAhsF92r26p2WNDOI=;
	h=To:Subject:From:Date:From;
	b=QMrHS3dk8QqM+ne5FLML4TqYUv4w4xLjP/LD/o8hCS6p4pS1SpZaawt/Yd3fRR1Oc
	 UkDbnLs0tXvKH84WQ+Ejbrtmre6E2B0GMaIKXtb41RyqGJXQH19TYZmMtACi5E3e/x
	 LkiFIu3nmeU6gYq5HSzujrudcUtK+uoNxH59e62ntO4ToqT8wtJ/SdiofpYmL20sDN
	 AvHo+tIhUzjs9FDUbwMNCvWZIP9A+ZPb+RmRj743BcVdbMqSWYE/09LNfBq/Bn7/gh
	 y4y7b6bS1Nu/xHs9sVvckeVch3BFNYK/Bzi4xwCYbDBonY7BjozBmGsPYc2oFNsjZs
	 1/wNFcCeh4x2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB782C54FD4
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 20:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178535823374.27712.4716519340927249729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df598478ac3e5306af0573647c9b5e28edbfbb53866955d664f870e5ed09114c
Date: Wed, 29 Jul 2026 20:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785358233
