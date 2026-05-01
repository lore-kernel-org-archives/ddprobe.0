Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132D726FDBF
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777630654; cv=none; b=riQPjJtTW1R7y/jog/RMxfJLIhFvvVwRRfXzodWlkB7ksaWrlxnncgsado1ggqo+zNeHA/T0guxDiy1eblyas2EyGAu7EYiV2vdXaiDI8R2X5hG3FmX0jnNQZDCaXZzU6tNUf2Zicrh0YklYh0582Ksu1IDb/5ySvi4zM/eGpTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777630654; c=relaxed/simple;
	bh=pdB15TZzoyTl4gOJDCEGDg9osZPWgntWVM4jbvIM0dg=;
	h=To:Subject:From:Message-Id:Date; b=bi0x6obW6//ExNvdsVZ/WOfz/JCOIInDjQfBCky7Jg2NtaQGHPEqBO8akOafOoY2dThZObdoXzq21CthOKTe5OJ33YeZnDzjR3AlwFTXbeQdDusTieXwmZNCfvOqqbLZUPV/ufhe26hiov0j+yHZ8Cjphm1FdM81B+inggq1iI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e+qzurrN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e+qzurrN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BFC39C2BCF4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777630653;
	bh=pdB15TZzoyTl4gOJDCEGDg9osZPWgntWVM4jbvIM0dg=;
	h=To:Subject:From:Date:From;
	b=e+qzurrNZJ+HwYdFxVo/xnIcOF1lqU4p9qKe4BR0DCoyvVjedHZvp+yAzw5PmIqA3
	 /jVl7oRVho3Ibou7LWhWxKB6bsckcoxpeHdiL/6KYHxyvodNucmHWPXFfBil568OFt
	 +sPqrvityZyq6UwJzyVxjBNKDancE2xas0lvCPD2scADC43Qk8cUFBG4A2rceRCYMY
	 Em8RmqOj2jCjHfcH0p5H5Im/WlwTLV+znDB2UIYMgkgEdh+csDCpuQTbF4T7Us9ayx
	 dev5V6yREmx9vYH4aXh6a7ttOUfX1XFTnY5watVJhzoRkdwDuLR1d3BZM144hrKEPR
	 lXypFV9I0CJDg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB0BDCD3427
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 10:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763065369.30550.11777289615929992082.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9e64a9f54f53d92cbe4ae6e95e7e50da7bfff5f3c1dccf49e3eb5801a59063ac
Date: Fri, 01 May 2026 10:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777630653
