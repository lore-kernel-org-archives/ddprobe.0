Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39EEB13C9A3
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743167394; cv=none; b=dDvSuLH6a52UWJDmOfZWCeWBHwMTa/QkGq25CuAZfVlPjN5dAkmJPxsE0Qq1pRTwmLa+zCzUwaZOP1DpIeeomd11pcIwN3/XGEYhxZcU3mb5cFwH2wXBaqYKzf9o7DJC35F2QG8jN0jWwW8lUE8eWwjgyj47pRSBu34jJtvTdsU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743167394; c=relaxed/simple;
	bh=qLPEyFoAgf+43nrnxtXLztEhNQH9xw/bLZiGzGKLovA=;
	h=To:Subject:From:Message-Id:Date; b=G7vH9HPOsTtC6Fa1+y7Vw/OuuQvpngGRWss9dlpf+Rudw5QBvD+b4v6WT6gNfUH5ahq6MsgvnAMWkWDNHA6aAbrlSwpo8U8eodwzj6W7ppEGeqI95Cnok3BnfmwGXrsvYRVjdq2NF80EybPiBzbWmriNlEU66GJiIdmai/V1ep4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GP4u3DK6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GP4u3DK6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF197C4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743167393;
	bh=qLPEyFoAgf+43nrnxtXLztEhNQH9xw/bLZiGzGKLovA=;
	h=To:Subject:From:Date:From;
	b=GP4u3DK6gckYzMgPcl+C5kXnuqLCRewFwjO51rWikFKN4THlE8iuIA8Cz2kBzS48v
	 JFt9nxKKvK49dgqCiAS8ubYskB3bRl0+FdYD2u4X29PY4x4gHBQPLNuVrVIeNPVnM0
	 HsoQZymb2viF4Du6sGtjPEY7/fjB2z+CUkVxAvv3TopjDpis98GsaiC2KODGeSdPA9
	 L68AkHcSwXMdc4V4kDaa4J+qe6dobY4MgZJmNkxB8Czv6c83sspRya/bea4pQNycMD
	 HT/HGdhUdFYSw0pB2Yfp9PBK/itpW+SNl/1CIk1k7gA0JbvkH9S6VLfJZPy3NdNzau
	 LMZTHJ87ZmMyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95BFFC3600C
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174316739360.31674.13684913528822473178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5365f2de23794d6cdb5eb7c071788c42fc5721b33052e97a040a9d910a20d182
Date: Fri, 28 Mar 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743167393
