Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27AA31DA26
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722606354; cv=none; b=oIlFa6/9GKf7ob7vaFJno+7jV5c8WBepqmoY/nZHa/3pD7fWMIaQ2GA7y0/Y86aatmkwHOAiQqnYMih542rBJWYofWb2rKFBcdtKmiNYOER8i0tpVg4pkas9umxRqbSrWs8bk50zQb1osjiqxTyS6K5RoNJhrKsIlXLb4eRSqLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722606354; c=relaxed/simple;
	bh=hCQm4DOiPMUFsu+fns4U6Cvxqwf+C/uskQzujHhVk7Y=;
	h=To:Subject:From:Message-Id:Date; b=i8dxcS5StCpiaJVy8yoNHzkfjzcZ/hl4S/GUAj8nUHJjNjk1EOZGt5aSI7dRREqQLwUrwdINTxZoa6pw9KnzQ830ZhfN8qnnYuhtkVqjYqhpbIA1KPmqNpD/ZQTQNvH5U/wTdHHFw+hZoTBkH90UhjLrah6zz3nWRzI+CKcUSFQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h8/mIipY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h8/mIipY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6438C32782
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722606353;
	bh=hCQm4DOiPMUFsu+fns4U6Cvxqwf+C/uskQzujHhVk7Y=;
	h=To:Subject:From:Date:From;
	b=h8/mIipYJ+65Tsg4Yp30aycv0vk3atdVAHFZaCw4eKxnQUVv12kl/oCn6StvSrZTt
	 lS88UFQjcmj5inuNa1WVyFtWRDKNyf56NHYw5VBbktUR1W+Tod9FCgbuRd03g/16ju
	 Wqcss1+8std+vztMpSfis89qmQFCmWIpvMDesRVw4hqDgRPSLu7AAkQLhQ0ErNoQTl
	 rVqZbq2JOaA6lEqaNTSXARdvaG7QhojWYyBPC2sQL6IlX/FRZWpgBfyk+6hxterIo3
	 A33P9qi4znN/GjYBPACba9L9bgo9znkcKGy9oCsvv429PdaX3B4fbnhm6m4EstQjly
	 UlQn8irl2YpiA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F66C3DA4A
	for <ddprobe@lists.linux.dev>; Fri,  2 Aug 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172260635360.17530.17281403369798458110.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ccd69c7f06948285865eda5bdae12a17981f86fea77648de8bb99743a29700f
Date: Fri, 02 Aug 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722606353
