Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0DD28FD
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753489194; cv=none; b=PcLktPNiAjm1wRTfXMhKdDjEkkqBm1XBjLFs/Fi5JQW2h+YG5M2EQS3x9agK54oLHlTnRwqFA8M3MsUbWcUz9/UIMx0E5MYE9WIdGt0T34s0zTPSZ7ECcjEdnTOvlx2kpXZEUqxgaN2Sd0SeTtoBwnaEL2ZoYKwgHX+vVCMceKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753489194; c=relaxed/simple;
	bh=pfcaR9q+gCwEMG+URyXZKys5LBria962gnSBJeZ9fIw=;
	h=To:Subject:From:Message-Id:Date; b=SAeurSns/ChpC1FFcMcI9ge4eBJZTaFfUcXJWsRISbpJQPA69zuqm3zxfKURy3Z0CJcxc9V++U283yQLMcURZJG220w6Ad3Jk1cxxpUebDpDbzVbp+DDE/1WqOQVc2pk7RdHQeig2OG793Ba2kk8J0wqFG57pcnDlcJyrd2wprY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qAXfe8cU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qAXfe8cU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EB5DC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753489193;
	bh=pfcaR9q+gCwEMG+URyXZKys5LBria962gnSBJeZ9fIw=;
	h=To:Subject:From:Date:From;
	b=qAXfe8cUAk8xr+F/GTI86AVrOtPw91iQRZf+EfRSH61yyan4kmEkcnxr5DGL7cMx/
	 oKWnN16ptZ6XtjiTfq9Ty/n/puzE2QaTw/7DmzygH+OHx3ftCAMAUaaU3UblIuDTHK
	 ZOqpCTWrvh5/NLUUXfdB+jSN/RQrcP1Io75enC7MBvuUivHt2x2E/WABRFbqryM4fU
	 xzATTu8IEZv9GmS7PIukMZAD3hVJRa279XNVfQifeBGXd9CTbqO6aLwAiFIcSjSmf5
	 PlmcFOkV+I1U6xxJKmZrCwT4F5ZvQnIQdhAxf38gOhbE1UM0sHC9hriX8PntbWPuTB
	 3tG6n63hfhl1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAEAC87FCA
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 00:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175348919357.7288.18034932045928138655.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a0c432b571d43a8e87cbbc6463d1d45bfed5d981ab1c4860b29eb8c48fd9d4e3
Date: Sat, 26 Jul 2025 00:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753489193
