Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0D3FF182D3
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754069994; cv=none; b=qVrOqN5X88wNMNOJE5wt4SRYn1eNNm69WPoKHik1DWCiYdbgFU34ppyI9CtCPCfjiqOAgA+2m0cEUBmzNqmRSw1pbdze0ufU3m1DdxFUec1zVoGL74W69zImvWrTRwh7NjSHVDOZT8K+YAnzaJIsTJd9EriRIwKEzLsa+JMWPE0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754069994; c=relaxed/simple;
	bh=IIanb41Zu7f6jp6YSGQ70Aqt71w1ThuYvJUOH6Cq/gA=;
	h=To:Subject:From:Message-Id:Date; b=QCgRasqgxS+2elPFB2GS3Vygnd9aCKgmEYnB+R6ZBuUAHv6sDMu9fwnI+uu9uqSOZiUh9jrY6XcO2LWSbBwQffTpe1hY/1/Zf+hkanQ/supCp9LDD2QX3e7xSM87DVFdRJ/6CcKQ8V7a409SR70KQJfbENQr1rVxQA0ocWBxS9Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YiFSw3tl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YiFSw3tl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3208C4CEE7
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754069993;
	bh=IIanb41Zu7f6jp6YSGQ70Aqt71w1ThuYvJUOH6Cq/gA=;
	h=To:Subject:From:Date:From;
	b=YiFSw3tlQrpVlGudRs6Z8NNnStXSIpbUCwnnTksnj53z/CwujVpV2t64TYHHiOZMD
	 HDQAClpFe0xlXhUaQ3YWGEqjxLr8aUQTM92fWJp+sdiqqF6nj6yVfQAo2TBFdKGtqx
	 T/H1t3NNHXFx/eDUUcXFwJ2T1XGbjgd2KOVcd6jSTx82k8U1a45ybBm3yYN+P4j54l
	 FtYBHLOpx8RPi2K2bhFycXLP3M04nZ4BbUt97yk6x+BdHBjqaEAowQMWrRANoLJlmm
	 HS+IU4qsU5e8zFdjpAGFHj2v5qTUr+91O/sz2Wzkhjba2Bf3xo5BEyTICUJ3GR4KuX
	 1GWz3yCXnXH2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F50C87FCB
	for <ddprobe@lists.linux.dev>; Fri,  1 Aug 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175406999358.17880.14578963541263302982.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c5efeec4ad4b3ba0b5b1d5a4db945ac98cdb853c0c1f2d1432b572f89ee3ac47
Date: Fri, 01 Aug 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754069993
