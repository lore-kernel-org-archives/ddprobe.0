Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F642746A
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745793594; cv=none; b=aa0wB1AFGN/YTCjXJQ6LvF/7PYbO0sTzeOyozep1cctcGx+F4Xp3zRNGEA3sXjiOwwEza42qcxdubal9WGWaj3q5SP4G1afQn5kwsiYOU6AV6hIKB7JPJ+iYQ5QA+txxaexS0io/56JFV5a5yWcYJHG74KRFphdCn49DQcvsqQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745793594; c=relaxed/simple;
	bh=GgmMboFnwQd2iqUyf4aCDV2hXMF/ja30xL6b8atfzbs=;
	h=To:Subject:From:Message-Id:Date; b=L4sLbgwRjcXsygS0ff+2Y5uvdeZ+T/U/yHh2omIxu/JnGEmVMqKyOyzVbOjBiX748K5S/ByTHxBWAaooMRgdRB75Cg+CpNwt9Djrf840ELpjTMEmRrb2LGltiLq/Amu1Xs39H1ubmmsRf956FMQ9DGHD87rrtwzTCF65ACEuLX4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bgeM3dta; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bgeM3dta"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5E74C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745793593;
	bh=GgmMboFnwQd2iqUyf4aCDV2hXMF/ja30xL6b8atfzbs=;
	h=To:Subject:From:Date:From;
	b=bgeM3dtaP3I2dcW33wXQFns3GJitcABfUcyDQzfApKh4emiaPmaxYbAaZpUwcE3YB
	 SYg02LR9Fty5GMtFlgc2nDpQDH+0XJavk/22Rd/xv7uK8zrBU7ogOF64PE/UsWJtaS
	 g0qqxSx6lhZuASB6Bgg6KLuEXIh1v+U/p2z07TVYJsEfWYCvwWdKZa0Bf67ZGWE4xU
	 dg82c/ODyv0/Wp019mJkMWuTkd3T0oHs05YfKZF2TV5tl3ixs7O+sMz2uBsKNtXrzK
	 T6Ub2p3vvfK5fstA8u91GSze2Bmkj7iXGSxBU/yynS38AxMfUul07a5RZwCryLGkbg
	 Ig0d7fREOckbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93B2FC369D1
	for <ddprobe@lists.linux.dev>; Sun, 27 Apr 2025 22:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174579359357.20494.10587419825560687621.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ecca784c10a20c432bf7f6b466cab7f5c3dfc210cf65b8f42440e5c972810ece
Date: Sun, 27 Apr 2025 22:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745793593
