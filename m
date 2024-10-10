Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C13913634C
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728580554; cv=none; b=Bc0z7qr/qck7rpIkVoyXlZd5HHy8UXQiHythhczI70wnK5JeHkXysL7ezzs2WJijnUN0baP6Rt6jh6+2xoeJb6Bk/b9A+kctPqKeSwvmMpWfmHf/YWMGdsKzweO+8/Veu/1iiwCE/MmE0LzpC86c9SX1QAn2AtUnRTBzPmsNazA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728580554; c=relaxed/simple;
	bh=IU5zqPnQQCNtJW82U+4UA08ITCgCS1qiwHweYlYOLr0=;
	h=To:Subject:From:Message-Id:Date; b=GcOgEAIBDtALKXUhX6bnq1MxdkLAM8SnOZin505dzjeHBiON5DPQTXFX0azGVCg/8JR1CXacOSIP4As5duM28IfLWUGb/F94XpuzZT8qyoBrLriBAT9+8OyeizH1Bm78rNAvMFhBStMUFB4R3To1okFU2oX83IhzmCawNvCUXjg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=laJ36qfH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="laJ36qfH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBD02C4CEC5
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728580553;
	bh=IU5zqPnQQCNtJW82U+4UA08ITCgCS1qiwHweYlYOLr0=;
	h=To:Subject:From:Date:From;
	b=laJ36qfH8B9RVGzaTcwGeNJhThopT5bolL3714WvbJvJaveWXjV+7WKBslEsaLXXz
	 1jxWJyKzz5KvWktEBthgDq6BeA7AZ1H2UBUCIxSWGGjk5NznjKy5HQXJ6hOpg0EkbI
	 UQTPkMCTgj2Ny3T2BAOxWU5XtWBmzX152quozO/KQO0B0eZcm6kepDnfG/ACgGJ9LH
	 R4Oc16FvQgn4f21mRJ9uVEu/iSgWDRVDQJk2TmdDqkiDD7Noj5/kFepTsj5joH/5az
	 0NffjFp3eWyD4ur8YPxNOSukSubAQYVjFK202vIkLiaePgHRaUn9unT23Ztbocufl7
	 tKGB7fwh9yfyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A58A9CFC5E2
	for <ddprobe@lists.linux.dev>; Thu, 10 Oct 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172858055366.17987.14491879496858085430.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 363cccbb61f316520ec120313e065a8ab1b0ee12f4781334faedc1b88103be03
Date: Thu, 10 Oct 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728580553
