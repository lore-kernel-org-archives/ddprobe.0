Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5F0823B9D86
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790215234; cv=none; b=dIH4hs3vpvWwVxPpRhXSX2v8e1DgROS2FDuItfmpNEaXQLUhr0mZt1KRHMorGlVa6/iYv69n7qJhXFoHjbDrxsrbh+bW8QcNnexrhjV0e3maSC5yzBYSacOPSjQNOhG4kubPVJ6Y8nizlVnULlx4WQftkJAlOB/UYVfpjRc8mTY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790215234; c=relaxed/simple;
	bh=9eIKleBuSHGXwnvX2XbFsH/Gxx12tFh7b7IAss0QSjg=;
	h=To:Subject:From:Message-Id:Date; b=HXTdkdb+2x891xjo5S/csk259pHq+Sh0RJcZcVVMu0GZ9FpyxXYHra33YJsHVumCpOrbTDTK1Dx6al38YFOBFoQPjbtLa5iF+RPWcKOe4sSF3UndIFhMWwN6HT+yqQi1JLv7hu4RxxIVRSOC/LHR51ug5/aKI5SscYeXX9WQOBw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gS/xHLRb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gS/xHLRb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EB514C2BCB8
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790215234;
	bh=9eIKleBuSHGXwnvX2XbFsH/Gxx12tFh7b7IAss0QSjg=;
	h=To:Subject:From:Date:From;
	b=gS/xHLRblZmQi5d/l6Wzhm7+I0JdcDtVqBOlPB02c0zDGBcumMSz2h5IDQ1/joU1h
	 P84/dccaWeJLoTKsbNIoA9KYlvUImBddXyZBYMZvEFcpIBRTbRzR8u3kOOWweEGM4B
	 YccKLDfjxtytiVnr8VVl5Wx/BJ5BRxzb9S1FlVAZbJ3nJ1YQ8z3dMgeeQCf5qIwxuF
	 F5JXkqMQ84PqVbL75dndgvUKuFIsyKi9EWzAN0WVM3kY5/nLcfjncvjyab7Cj0e8Xj
	 jaKdQezyDLsFYbYadxryTwouuhTskWBxMtzaB4SOlDEN50d7+v6vGIsozvEMCr8wAy
	 HvCxDyb5Z78Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C3F0DC9830D
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 02:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179021523375.4165.17986302760533600230.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 795b4b60e47163756c10d7b0fda49a7648eb410b194feb53c467807e5c312388
Date: Thu, 24 Sep 2026 02:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790215233
