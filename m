Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C0E433EC
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:02:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764979374; cv=none; b=cvHqi0JduyEHrcw5Whm8ye7M664VWGSd80zJ6BsogEh7ednWNrof2LAze28/+EpngFcaJ3lvElYNaVH8oyU2auhfg4SqdoEF0Jgij85xuOkSluqRIwTyy99Hyk8Vn7CVGlRh9nU4gH7LtwCI8YuCaHl9eQqeqqpmYTzsnzafCvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764979374; c=relaxed/simple;
	bh=JnH3spnYj47IszcCMv7t1yGZJMsnNRCyLtw6c+f0X1Y=;
	h=To:Subject:From:Message-Id:Date; b=YPKboIKMk2YsKO1DLTbJfZwQ8soOmaBdH4Kgbfrsef/BmpQEOoW/f9Or2xXbgTJY3aRTefeTjhQC6j6rmY8QWYR67JdlhmouCklxUrB84UZzgPKSq4PnvnrBYDIUNeJssV9FfjcSBiqTPZNBDgovD1E9BLouSB9lvl/l/6oyxtQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m07BblP/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m07BblP/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E51C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:02:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764979373;
	bh=JnH3spnYj47IszcCMv7t1yGZJMsnNRCyLtw6c+f0X1Y=;
	h=To:Subject:From:Date:From;
	b=m07BblP/GsArCZOWS9QzCCJgC0t1DPn9bYdOn4cxym/sTF3t956XdJ9LXOp2EwxGP
	 ZKd93KAFNwUtxgu2L9nXj0KSz7VTHAOmUrELjkmJ/p8lQ+6PimTh8xcKSkc2NSRGHA
	 6U4epFVZtVJ/NNa/4lDVO8z9zw9Ox1wR1QFZlxpXfs0zSBaKBfLzhlJWFFHwmI7WYP
	 SJBmbD1gbcgEua8iV+yG0fB59iNf4LlBXl2JIlwu7ga3818DNJ8/NByoII9uWmqewX
	 o2bBKW2L6UxWno0NE8DvCgE2dyS3ktAGEMnFlynzvjfdf3gSHHiggG7FDAd7D+e7+7
	 NAPccRO/D7PoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947F4D3ABC3
	for <ddprobe@lists.linux.dev>; Sat,  6 Dec 2025 00:02:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176497937358.26239.14507469021925914801.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71b4f1debd192256b3b18ec6e324be2635f823cf2738e8113e400c57ed4475c9
Date: Sat, 06 Dec 2025 00:02:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764979373
