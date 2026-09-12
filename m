Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 433D63630B0
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789249234; cv=none; b=CERh/fvyoN3EWSPDkbPyxsiq48JG91tYenNiKUIzTFTToExz3wCWInM9LPYuJ8VvTp6iSyHUpi7rp4r9qwQDXt4YQKNyXoQJkSKln1N2ckVo2+sGZMMEB1uK6a1tIjID/2dCjySIghYKf7+JI5hfUOEaJl7DH2s5cUNvU1YiAlM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789249234; c=relaxed/simple;
	bh=SGxvr1r21Kr36tzVMsYkiAefgaWicc/qNfEPi/eYLrg=;
	h=To:Subject:From:Message-Id:Date; b=uvs/emq604WgmvGfDsxmzXEGLVqSSvlE8TrLEOOUbwfPuLrK+RA8DBOTBuwrToc/bx+e3WGO/dUiSLwxh220wONePW+fV+sd9tsGD7YyU27W1EFU1xTt6h0aWul61ng+5f7U5GC6XgaV4oMYQ7NX9/KZk561kDdHDrtHDeMKOVQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FLDAa8oo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FLDAa8oo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC791C2BCB9
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789249233;
	bh=SGxvr1r21Kr36tzVMsYkiAefgaWicc/qNfEPi/eYLrg=;
	h=To:Subject:From:Date:From;
	b=FLDAa8ooh1Qql4f7liW5Bj+Lg1OCcVNVfdW06sA09JYik+RtT6ZbOtlll04c50Z1P
	 ImrfmcnFQYQ9tSCok0/fUNZDs6MnFkYBkzzjePuqVNYtj6aFx2eKdjmVYenDENCmdJ
	 IqvixAET6lf9j2d5/BVHf1H32glbvQNYmeUnaAXsH0KH7AsRABVHm1d4+qSQtqUzDv
	 8pA041/Rvgpf7tkbkFG+jAPx1ghp+7wDY0w2aMKlnCZgGzvqGeZWQDdQHuxfSEnxDi
	 HBzaLyf3kONc2IN6Ghf5yKEBFt48cNgw6HTrNQCWeqczEVaaUtwJS1nDrgk5quXrG/
	 +mh7iVgme7VQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A90CBC88E56
	for <ddprobe@lists.linux.dev>; Sat, 12 Sep 2026 21:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178924923368.9479.6707173633771461297.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 498e289a81c12ca7b2acd2fc694ff330dd8d4d0e452744fdd9f3fba767634206
Date: Sat, 12 Sep 2026 21:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789249233
