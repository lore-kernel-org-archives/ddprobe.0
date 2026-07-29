Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 473743C1F24
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785366634; cv=none; b=PxzUqDWm8KyevzBwwo/+vMutYzm8qdVZGNJy+wOGqkRvjFG22kgPPekj94BmXuB61OymleWb/T4MjMB16ZVpAGYcn02Tvj6QxkF0xcB7nkMh2cCltb3+i43YmJKmPSp90eVGt8cpR5LZe4yE5Ug3aCjmqmDV4s/LR5ifKTivjfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785366634; c=relaxed/simple;
	bh=vaWbDCcMnIJuC19bab69zbrjJgT3DQMEbxVp3mA/mLA=;
	h=To:Subject:From:Message-Id:Date; b=k6mwEAGovLRNjpPyNStZ+j3DvqmZHq5HDPZQzAXwAcL0MXiVV71CguK65Iy3rLkaw3gK3uN6Kp0pR2TA4C++ujIT0Hgvp/cXQiBABS8QhjYT5kGUyNgaEufPmMS1Mx+7Tn8qKbO+IF9kE2uhv0XhIUa8FMGOcoxAkZjMsKPraL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sGg3oZws; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sGg3oZws"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5084C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785366633;
	bh=vaWbDCcMnIJuC19bab69zbrjJgT3DQMEbxVp3mA/mLA=;
	h=To:Subject:From:Date:From;
	b=sGg3oZwsTtuzzR6O7F/xO7Q91S/xh6j+/nR2ip3OBiABvXhRTUPU7bHRj0DcPAx/F
	 hV69+Lc1SdiIfdy+hcaAijf3G9icuPxl01QCnHJlwngKWdj637luNtttQ02+Lk++lq
	 jW4RjkgvPBgV/7u4F9qvLnzSYLG1hzPI8RVNC3nqb629HlN8xYwKmkdE8mOo2lU8XT
	 UIfFSSxexnosPznMqw19VjI8gNvCGPq7dr7SJdgnoEtc3/E0RErHjYKnx4EKmhkG5Y
	 CaqNWyEo0BLJjlfweKaq22V0ZfgsC9s0vU/lDjjQdDUWqwZe9v0g6VGPijYs/49vYo
	 haZxnJGWqy8bg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ADD6AC54FCD
	for <ddprobe@lists.linux.dev>; Wed, 29 Jul 2026 23:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178536663370.19422.16299982996754471.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 815c7bcd699b8c7e5bc3999db0b2331fcb2ea3e9fa98bee9d00ef85a7632ebca
Date: Wed, 29 Jul 2026 23:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785366633
