Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EBF111A1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 21:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722116154; cv=none; b=nwBPBvfZl2M9em32r+taLBZEuI9M3ZOGq9IoqhvuYoUQASrYFtrNZrzvUDOn6RVr5C9dhbXCHeWdzY8YgwMt3R27X/E33nfDj3/znqae7PyVQNPwLTH4D/5fDnOxTU8GQu3OdGx+XDwx6WmBvMu8f7L49s/OC63Rdz6+/jgcaEE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722116154; c=relaxed/simple;
	bh=3pOXeKMz+1MSKKB4CdBo2kRpD8vmlSImHbAxhGK1VSc=;
	h=To:Subject:From:Message-Id:Date; b=bKGteP8BxJB4m2YIiG+DmQK7E/vuzYfg6laf5wYJji1s7ok+0DRxRzsm2lYNRBYx7NK01LWfmCwtdDS3kW63u+OXOefYHGXmBlLIChpdbTBtyrh4j1UnoGlg3beNzlX0XPgtN1iyZRVzjggMAcHlMMCy+bRKmwjRvdR222Ljo/0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aBUleB0x; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aBUleB0x"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5438C4AF0A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 21:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722116153;
	bh=3pOXeKMz+1MSKKB4CdBo2kRpD8vmlSImHbAxhGK1VSc=;
	h=To:Subject:From:Date:From;
	b=aBUleB0x8tZ2Ng/c0GUKvEABQWRzvAdz6dLpJY5o6pH+xywS1PqFzMDFuLOswbT9V
	 MeFL7qMv5oJvbvtJOjjasL6f+fLNssDYbGMcjol5a4mWqvnchAQbj9e4eWgwmVwlTp
	 YDXu2ORlyDP0buO4HKIdnPyO9IlXc5A5pEgr0QrK1P+ET0p8B3yctOqFNYC8pyV2Rm
	 YEQBa5SMDJKw+I3IMPYxewdhnEW4zhw6bncbW+NvFru5CsUJJhmJgPPZ+PuyoJNZND
	 EpS9ldE3c45x59hx//Fxu1hZsb5beUNIJ7qGs2OcmLlsfs/j0Bgfl59mRY9VHsWWeg
	 W5OoRkphc/K/w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97060C3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 21:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172211615359.16466.17794983130863847688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8802688002bcde627e87b21d194f63a2802ebce60b79b90c7801a64df18707a
Date: Sat, 27 Jul 2024 21:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722116153
