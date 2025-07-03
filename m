Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246EB1D54D1
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751518194; cv=none; b=NQVVPnwgKqT5G6Wv9cFKkpk4i+Dx+PvZ9SA2Een4Z/w3T5KAbIPWwvRW8QbLsoXJhQvUpLdd+0TEeyBkyvd3mC48pq4mYvOAnByaedEP1pLpJZYeM8xSmMDqdPvxJn8ohtFOadoB6iNI3JPNlZ5eBtLPQ4SeefuB58EHP9JAOGY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751518194; c=relaxed/simple;
	bh=RwcaN1n6K4/4KIzcRF349WDS2Cv6jia9F9bq5ySyDiE=;
	h=To:Subject:From:Message-Id:Date; b=rOlhr1rlbSWRaDryXbTic+hKzrLWyU0/+3LBJimARo09K/zm1JmmWVu+7sUgWfFwOgh/e4cgtcXoZ9MLQHGRj1oDoFBPXlmdLjt70j+PDN1h5mPPTFR5Zjhi8mKQOQrhbjKpk7iSIlMTxCML5jf0HDN5aRdvaUxjkrDDBpepZL0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ndAbrP3K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ndAbrP3K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CBF6C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751518193;
	bh=RwcaN1n6K4/4KIzcRF349WDS2Cv6jia9F9bq5ySyDiE=;
	h=To:Subject:From:Date:From;
	b=ndAbrP3K3ZMG3MMAuOZeF6zisRBEnJQLXnHPUXXzkNTrkAzu/WELjoLbB5ZmYr1js
	 MbDJnLIqTsFssVJ3z6ALdmjCkqnRAAPnr1n/KF/A8uLd4SdPga/934HpcjOtEybi1B
	 GcbpWCdmtOjLHIKYL04ukLv3+OMbTYZZCCbbrEffMZSuyCBY37DmZoPe0hFWYlJpAY
	 90EkhNawEQROHnIzeqBSvwo7On0ZsDbBqhJeSGUkk8u2tSMQ/EsFI/SI2xRc4hsY3m
	 nuQcRrCd3C45camyzi1sTDfRVN7g9M2Az2iIX4pvqQEa3usUYL7cRx41o+prR+YmR8
	 xtXrMngBoTbMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8DDE2C83030
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 04:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151819357.5310.2081383789541307507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ef30b13394f5993e4489a6d4ee4f731ea9ea322fc064087572bfae9f2bbe3417
Date: Thu, 03 Jul 2025 04:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751518193
