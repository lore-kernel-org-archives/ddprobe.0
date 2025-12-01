Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28C002032D
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:42:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764556974; cv=none; b=u88vC3Y6svRVSQMGwkLkYzuPOAhrUc0sEOHo8YXiVMkNDefKeQWbmQ7FDvr8fpz2YR1cCpT3Aex+eMNJN++jq3cJBY/ge31fkgOz292cLGgTlPIFSc9Gdx1PHgzbaImviow8r1224UKjW80baK0Ijc+j9wDPAZ2W2JWVVMlj8y8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764556974; c=relaxed/simple;
	bh=PRWzELy34QojOca13YqtoD54aidH9dOuB1rLP1pgIU8=;
	h=To:Subject:From:Message-Id:Date; b=Sj6RT4d84k1O79a93XKKsclJKnN4ST8mC6tpT1VWaZK9/WvdqYtXFjbk9oJEjLwRVHPHFCXeMeEo2T4UL9frID3KujbDzMFEXuJuGVT65/4xR3ZTRv8pXqS+3AQp5ztFIdsVETz1lIfblJoFgUDpga8UJ3KggJ3BLVUvERkWa+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8vgTeCP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8vgTeCP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A38CCC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:42:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764556973;
	bh=PRWzELy34QojOca13YqtoD54aidH9dOuB1rLP1pgIU8=;
	h=To:Subject:From:Date:From;
	b=P8vgTeCPga7CWb5D+JFpAYMXy1jvTaonnXi+enwR+shNLCK9b5wznbszo40ZC/9LC
	 ZQ9GWjdG5EF1gbdIhX9oVb4PDvL7a3ytRaw30KLMjLll1kLgXHl7F29ygu1wJEarU5
	 sK6/GUJOM3owobdurSjJYg1asjnP9+NxxRU7sgh8fCUaiwDHRGrknd2wPgoWKA1mLz
	 ujfDc3UmGT89X42fyPdlxWOmHkVM+BKSAeyZTV7N0iZPqaxM4YWUjU8FZ3zsdSCOCU
	 nAiHNr1U8pmiGcOp808ucsfr8ucyXnqXusxPYWIhxwjWtQYpfeYXr2oUZp9VdEsARI
	 Vvvc1BvHqfgZg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90760D111A8
	for <ddprobe@lists.linux.dev>; Mon,  1 Dec 2025 02:42:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176455697358.10980.16799364718776479917.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27f3569321229b1f66ede442fa12122db9849fc5c516f158fb4498053fefb7c
Date: Mon, 01 Dec 2025 02:42:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764556973
