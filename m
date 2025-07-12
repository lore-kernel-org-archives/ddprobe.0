Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 280882CA8
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752296994; cv=none; b=qh4J6f1FBpQXFi0nSxYs6ir5E0fR7FqVcniFpAhVd+UL4/tGW+ttN+A0XGcLFPsIhVwwOntxEUQDQU+NccC4b38pUcPbqMn89CmpE33BRdqlv2yzVv292Vx3Ew5iEuNcto1OUZx6+I6tSrD97d7+MXvuQIYryu9jp9vw2Q52b7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752296994; c=relaxed/simple;
	bh=ohmQ1+i1ef+uTfaZfycWEBWSyPtD2Sk6VYqKNTnXfbQ=;
	h=To:Subject:From:Message-Id:Date; b=Mlv+fyHyLCuxg73S3cJ92n7/iMvoucub5DzgLd+ygmhuJn/qso1dvXhc1O4x0efebxBKsD0n1ehqP/inhnHpM8IZt2JEbUXFSbBDHKS9pGfl70BFLKD+RVq10MeIylHbLCErHlJ0wfmF7yiLpUoS4N2RBlFPyJL6dkYNajF8f5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cEGC8o1D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cEGC8o1D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B54C4CEEF
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752296993;
	bh=ohmQ1+i1ef+uTfaZfycWEBWSyPtD2Sk6VYqKNTnXfbQ=;
	h=To:Subject:From:Date:From;
	b=cEGC8o1DhfS9TTrhZmg4nw3znE+ugBnUoQ6A37odvZ0OCQFywlqIEc1dfCqWgxlzI
	 whKnSlWJgQAEfX1xHdqXO+2aEMXMNcbQ6qqqjVh7RGKNcdGlryZO/FSEpOLhf3QU7n
	 y7yceQHD/ncV7AjaRJk8LPhUlmRnJRZ7lRRgSTRGb55r4sLC4ygRsMniYSMgoq6J/Z
	 WuX5CVMMqIXcF8HTvRn6ggiCTNFTW1LuCD2UsN8DeIV4BfJVAHhpyT7BFDIRcrSg2T
	 +8PAIUZpfKLNc0txcsbaH//+3WgwyM4bHCF9aAKNbB0i7klobyB8CsFx0wsQN7S7RQ
	 Cj4PMmYSWg7aw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92103C83F1A
	for <ddprobe@lists.linux.dev>; Sat, 12 Jul 2025 05:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175229699357.15391.8675326293405391257.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f641e8ba3b958b2fdcf22b17e98ce7dabc3aa668d2cbe54a869328eba3dad4b
Date: Sat, 12 Jul 2025 05:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752296993
