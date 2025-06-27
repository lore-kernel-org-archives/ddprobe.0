Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31B872F1FEA
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750987794; cv=none; b=i4ftJHLHoZ+ZPyo3xkCy1RQSk5ST9mniUrKk+QG+oki6sAOdsi8ZjB/LdZoixQAWGXV6WWZd4l1HD9XFXS9c+PpmyusvTsoCE+vNuYojTXcvnvbWxf+WjeMBTxJxWfsXEJB2raS6mc6SChynCH0Bvbll9Wk6jxY1qL7GNFQDaGM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750987794; c=relaxed/simple;
	bh=irw7rnRN9Qitdl31RRQWDPrhXXmo98ecM8/PFRHIuGc=;
	h=To:Subject:From:Message-Id:Date; b=AInKQhrpvDSycrrP3raMKRe6da2JNXat7ULxVbW25wFTRq07t8wUNrT4ux7SuHQxBP0q5GIAcSW2CqOWmpuO79X/g6MqBgFWSPfwGq5tu8NRToxfuGaICP5hWptf3GsrJdf/UbBNbs/TEFC4f5X8TTvqksIDJ3Tp1fsxJZbv8/Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=D5BKeI0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="D5BKeI0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA570C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750987793;
	bh=irw7rnRN9Qitdl31RRQWDPrhXXmo98ecM8/PFRHIuGc=;
	h=To:Subject:From:Date:From;
	b=D5BKeI0miiRPyUvfjDsSo8mqKGuTuDtcRcE4stPrOg1MY5Y6YrS54yzsgMk0b++cP
	 W8ra3lR2tXZuJZV3bvXgmPy1isGgi/lpWobaHjOCPMTtcOhNulLWlgR7a6is/jSNq3
	 g03keIrcE8a4lwAc/A4FIpalq7roCNAam93TgMOJf+HgUzdbrM3B6u+z590WcvRJoX
	 nj96ktVrzlp7tJRCJrV6jxbokr2Ppl8PcX/HTH96meLaXQ1JBwX4AdN26/vYbSsn2f
	 UHi7U+soSG7fO+VeHfEGtB6xxxS6I0mFh9wBJkU5SOiXPPCGUi01Yo6jxUgsCYyW4e
	 bCn2gCPCPQLDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94861C7EE30
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 01:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175098779360.18207.12566358802050905595.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 60bbced9d592228b79a0b9dd2f9c66e6c0f78351ef4efa5183dd6bf954a9b0cb
Date: Fri, 27 Jun 2025 01:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750987793
