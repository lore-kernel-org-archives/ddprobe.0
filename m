Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C776288513
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759891194; cv=none; b=NvJMZtbXBL8ba56y8bLHl4xYMV2oQCxa7ut5Jc6nzY3G+z+oLX5ZE7sZmOnLpdOSkjJYR8/rsquCE4AZizinl0+O912GuaWjaLpilgnGUKlVcoEG9xpvwEfBzwHqZeX0doJ3sbusX0nQqW/EvuR9HzmAP1+ZtNxeDp2IWSNLktc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759891194; c=relaxed/simple;
	bh=NbbHgRg/IcrBCyGHDDNssw0MG7vDz4wj21VTTfUhX4I=;
	h=To:Subject:From:Message-Id:Date; b=ovJ3GTEdM84mFl4qkiZ0NcNHezJ+k/CqLnNVur33IpLFFdE5KuduCZVRcki/lwySWaqV8fuarVmyMAjekLLBPH1W9lkVjFsy1RB1WCyckbrM3Ud7un9Xd3jX6o2t3k78H5IPMIokfB6xTqxxOP5HvukLd538b/WeMAmyE/bS2B0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ReCKjRmJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ReCKjRmJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AAEBAC4CEF1
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759891193;
	bh=NbbHgRg/IcrBCyGHDDNssw0MG7vDz4wj21VTTfUhX4I=;
	h=To:Subject:From:Date:From;
	b=ReCKjRmJr2hIOkngAsF/DB71Ci//SrjXw9Hu7Gopi1p7njdru88tTZl0cAgVrW0GK
	 x53rtnyZR8AMmhPvvhwxduhAPJORokqJ3TEd3X8xoGfnfa2iv3BtgcrLCPrEnSwROc
	 Y8qK56ltQ6ZRy5nzCp+h5cBPAuqXDkhMWXhJ9UTLboiQVzybeIFxTfUUvrzFvJin1c
	 udTh0pM3paKWE4XIHCHQIU2HxJRCDlGRyGhnTrQWuOpmFUyWBQF0V0pzkB3fcdPZvr
	 BybcmWikKzNbVdussdpBuofFQAVFDR6hRqIOWxTUBZcfMiK7h39mVZtGwUULerppOn
	 ch1ltBrqOcUbw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98576CCA470
	for <ddprobe@lists.linux.dev>; Wed,  8 Oct 2025 02:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175989119357.21456.17567668270987467645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b41de8f095ba7b0a3b0109df89764d9635e8d959d3600c168d77a095b44c153c
Date: Wed, 08 Oct 2025 02:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759891193
