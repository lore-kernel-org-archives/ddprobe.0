Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F0DF350D79
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757435394; cv=none; b=cwlF/gbbAgIgyMvxb1S9oXU24+F7oC5Q4Ry4vwI/78bpvGToHDf30A02Pq1JiwEqzDwCy2SN6FpnjG7TezVUxP2Rn3npvaqXZ3c8J+21OAW+zbeq+7RWWe/rF4PM0kLBFZHTE9DlEaUr1a5NP3eEhF/TbtkD3JknFOabenvTm7w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757435394; c=relaxed/simple;
	bh=oDZoEetonzSK/ErxZrHpFKP4KZAYUz+Cl8/+M5lFwNo=;
	h=To:Subject:From:Message-Id:Date; b=mWiBaElvDkrUIUhgJVHjQUWX0BuzZPJebVpB4/QxsQG/9XIF8D1o4nX3tvUJ+Q3nWCZTmQ0idxgiNfKGvl/MAjfJYhZ9+kyUVSaGzOWTMCQIf7GH8/NGjkSPJtCRkUutzHTp5/D6PjoxS96G1qDtlvlHHqWiS7SJmyDHe59FflE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LA34RsW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LA34RsW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A49BCC4CEF8
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757435393;
	bh=oDZoEetonzSK/ErxZrHpFKP4KZAYUz+Cl8/+M5lFwNo=;
	h=To:Subject:From:Date:From;
	b=LA34RsW3yXFaWVwBEgWPON2IjCV9R5nK0FH5+H5RmhGFGyCrp1KKpTl4DVFA6/Xc8
	 HB/zDUt8v6yTx5DzXzSVU34cHco3YKypgGjORYCX0H1owbcc5h5VLhdp3HGX7c5RZk
	 x63sviz3JzXbmG/gfREsUZZGKaVGbDpmzQYdszn1QkHVhndO2lb4+yQOqsdGWf+L8E
	 8lBNTAHvOTYdh8qqOQsX4WdFXRYJ36SJjrvHYredEqGn8eqYoFLzU6urVM1+gZ+fpQ
	 GAypvTVKMboOc1vC9mSR3G9WlgwEz3y+q9gPUYhh0gxXEV1HILmNpZ2+S87Q8ZNA9v
	 rFwpdq6Si7zSw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920F2CA0FED
	for <ddprobe@lists.linux.dev>; Tue,  9 Sep 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175743539358.8961.867454713477985346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 21564356e41001db279da5e8bde6eb63a89441bf67c1bec1664d826e47f51b61
Date: Tue, 09 Sep 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757435393
