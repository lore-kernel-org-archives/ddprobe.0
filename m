Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EE151BF32E
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 17:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723830354; cv=none; b=GjTlH4ISgT/+f/zR3yJvOxGILSc86xcXUPEmUEaqQLRauBepyv5dipDCFmA1FkancaOdJZ+p4sX8+jc5hzbcTC/6POd8HA85MmUVMAFSB5EejSAyIa34Jbwe1Ykqp0CEIr+wpj5R5WNTK/yo8sBSRtj+nkrJm/D81yhrv/yp1AA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723830354; c=relaxed/simple;
	bh=KcjXv0YKpZp9DPp5soUSTD1mpO5acDuDd9cXnGfh/cg=;
	h=To:Subject:From:Message-Id:Date; b=XvrLmMn7fnA3BsS1TlFdge0gv6kZ9BAgqY2wUPdRyFGXrZgQrfuQG9h9CxZnIO8thkgwwSJMHN1HAvihzCDKlmYWArK8/fPUzrrdH8RTtevTREfYVbKZ1fUJ3FKlUC0/cJjj69mYRQFKshE5zm7aQZD9oOWmc5P/04APwr5D8qc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tr2ux9J9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tr2ux9J9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B417FC32782
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 17:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723830353;
	bh=KcjXv0YKpZp9DPp5soUSTD1mpO5acDuDd9cXnGfh/cg=;
	h=To:Subject:From:Date:From;
	b=Tr2ux9J9Yd7H5Ga8wQ2DUk/cHfod6qYtcEo7Lvgq3G0nQXibBD7k+5RW4ZwSDrv2L
	 qR03Kt7l5venbz5f2XYb7eXfkgzYpiPCM8Dm1mLkC/uicSuj34CzgFTzju8vQ/eUCF
	 WSv1EGHUNBFpEGO4GWReQ30AhxD/O8kLsGwK0+RzlXhoxtEyC4T9XRMo3w4Iwx4CJ5
	 yQgRIwUigCnq1QMg4Uc64MDn1/OGmgwhWlSE2mtey+APiVDN1kgQ8U0yBAbOM0VwCE
	 SgW3xgIpO1/5FPvAAqWoA4PCfNB/Fw0yUa+ftemjfOp067hZDifpQCWlsXC9jfC37x
	 JfUp6RANaOWrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98512C3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 16 Aug 2024 17:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172383035361.18857.17523770946059273904.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59770afd8e3b1982faeb726f66001e5b0e7f31733ed774345077f02494a1fc21
Date: Fri, 16 Aug 2024 17:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723830353
