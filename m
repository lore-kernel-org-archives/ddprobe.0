Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2467E288CA2
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753088994; cv=none; b=ba4Ba0RR6Y52DHrMcSWH8riWfmJ822LCKHwIsmAZ8l6VuO9Js13aO5Qi/qZnBX2yKVfc5ydbTqvrB0CWnUjUCCbgZecEG88kTD42lTYRyzTbB4DXWLH5TIbyapF3FV9eTzZPMIOiWEUkOcABPcl/CPir82mM9nrwR4HIh/w1yXM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753088994; c=relaxed/simple;
	bh=AZB3AuebqCPyeE6EKYfHQr90LePf+/9EqPJYofYw4y8=;
	h=To:Subject:From:Message-Id:Date; b=ixVyyWGiP2DvCzdPk8Q71BDxcF7pRoxKZE0kHE65FQamsu6mqSKB6BhHu5z6t0s1ZZYJeglx10W8TvdzEWiWLMr35swy8v1XRc6+09jJ/JL8k35SWlnMyOX9px5x8D6gAtw5RkoQRvyijGMNvdSZlHsJpDP/cfPUP6jZNUf9/8E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cBVgcjk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cBVgcjk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A26A0C4CEF4
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753088993;
	bh=AZB3AuebqCPyeE6EKYfHQr90LePf+/9EqPJYofYw4y8=;
	h=To:Subject:From:Date:From;
	b=cBVgcjk6903z9GNEGC6ydBJ7lVQGa5XH2S6uj5ZIqBOZbVmVwtetVspFLbhjSTqUb
	 IByH1BQZZ7dywcDNWlzb9+vKI+JYK9gVDH6tpFIZHxLkszPdqw7snhh/z6YOMTAdLO
	 M39JTsTLBDUW4tPJpSHCAWS4cmm0akP8dDcVJ4CNz3l/X3wbgtFhp6AKlq0D6eM/TK
	 l4WTAN55mAFoQcIGfMSNbLjneD0u/5LKZU4SpBMIUHkM+rRJL7U8FOCnCQ7tgBY15J
	 ZILegJvnlX607On/18oU8TcVn1IHLiWARTP3ofpdn0MHw/Nf8y6GjIDREnEX27MABn
	 TjlXKavewwP9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 902F0C87FC5
	for <ddprobe@lists.linux.dev>; Mon, 21 Jul 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175308899358.26374.8493373506310044425.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6618a20bf851489e8abb87a5c80dba3760270e641466e66a21143fd3c001f7ee
Date: Mon, 21 Jul 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753088993
