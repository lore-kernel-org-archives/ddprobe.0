Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4329B1A4F12
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758786595; cv=none; b=gaQSOHJWd/EeQKfIdDqWRCzpZZolZwGhn/FWhOr8nQDx9XEvtUjyDf4HlOTNmxhxVAlPSd90WSvH0QHLT3HLUuz7P8xzaz8WX/2kwi4gkq5CYVPj135v3EoVUnEMF5ZmYUWtxpKrvcv2JyJFiBmMvi90kBXgLFEU7NXDfU9taow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758786595; c=relaxed/simple;
	bh=N6E6hSrrGIWav5VoQpEur7PGWU/lS6Wi5P494mmAIYk=;
	h=To:Subject:From:Message-Id:Date; b=XHE9J4tw/xvyoVKtuAHxYC6Wh4ZhBYdAr2h6SLKwIg/YuRFN64Zmtb5K+A+Rmtt+E75L0IZpze7B/xNZSZJ3a5DkQaQLBAOG5MmjnSThhM1Fi7qiOZL1caDWAOv6yENjOFICP9mpYSQLQZcira/JOeptAA4tJX2YqmHSejkjdoI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UIGQxsox; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UIGQxsox"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6787C4CEF0
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758786593;
	bh=N6E6hSrrGIWav5VoQpEur7PGWU/lS6Wi5P494mmAIYk=;
	h=To:Subject:From:Date:From;
	b=UIGQxsox56vohlM8QHM2nONEYq2mDYFB58gFZKgW22I4+qGO2BZAz2WCqBI2L84NO
	 T8FBwaRbT3kJK00WwLX9YgWxTKuwg/tywokWiQMueabkA6DDOdtM7RwAatrfNbvvJ5
	 AJRzPOA7g6cjqra47CdUdpEFq0LY1+6lVC0Bp/gdqDnWrpgf1654yBcD9Ran1IujZP
	 edD206xRYdwAaK0oLMkfQVmQ3l5keak2v7dXaS5z2h+kDd4xamdM6qTc+dSxvdKHS5
	 aqhZ120ofQkfGHI7v+vLODwPvRYXJ+0zKcBc/nJg275VV2xAfuqJ5enDvG0p1Tj65k
	 3xVI84cnX3nWQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93985CAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175878659359.29418.542695831608542849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ea516630730850c4381c604cb1290226fb3e1834b7baea0d329e577f9124eac5
Date: Thu, 25 Sep 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758786593
