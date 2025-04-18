Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 246E38F6B
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744970394; cv=none; b=dycLpTldZt9CljgQnvWGrzgO+iuTvR3WR6PWixJtOvlis5U8485ExNKKdhWyEB43oHrAX1w2mICPq8AG7ZUHL5/b3vPYB3iYRV/XusB+ygD3NW4FIE9dwz6FvWTiBQJ+G8S2PBpMEHVaTsbIGATv61UVacd7+ZqV/WxfdZO1JNs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744970394; c=relaxed/simple;
	bh=rV5FWvq6xLHiL0DmebxAt26Cl8HvYZsizx2L4bVZi6Y=;
	h=To:Subject:From:Message-Id:Date; b=U/gnM9xJdqiT5jl2hcT5G3bSu4kBwlZeX6vVEMrdalihPX5Pafy9SI1BHg03M8VCNMofVjdiTyhUWwV80fwbgY4GZzVSat5/CR+ZN2HYqLHATvsry6Ce2qCcBqHuu7P6q2srDHXnRxdPi0Zrd7VA6z5nHUj4yAmES+L05U0saZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GWvcOFG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GWvcOFG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F68AC4CEE2
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744970393;
	bh=rV5FWvq6xLHiL0DmebxAt26Cl8HvYZsizx2L4bVZi6Y=;
	h=To:Subject:From:Date:From;
	b=GWvcOFG49V+iZbvltRYID8uK9a/PUGY4KpnBfKX0FCqiMeo+VokjwKItYHy30/1aF
	 JHt6G7dKAr62yQqAr5eG3tX3SeOFEaApsqUclPHSlh7c9AsfJCA3a3x4WmsMXvlX1p
	 wg5P+5M0lL9AB/vsUKgCZFQXSNFRkpTE0PZ+DQ2dYXEFV72BzE5e0vzvfEalkIgG/k
	 q6M1cUJUsRclS9fMnyv0AK5vBeOOCgA98fyClJTpLA6gK1UA89Y1YtGlfxDRJ3P634
	 ndHHL3Ey/7cPHa5+e0ELb6ZGIAygb2TrUG/rbQVizPTdx6CfRVzetkSP3jYwJe/Uyl
	 A8G7mp9EQmTOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB73C369AB
	for <ddprobe@lists.linux.dev>; Fri, 18 Apr 2025 09:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174497039357.21241.3260300639313708791.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdd65551b7a86b12f24d46a406350d285fda582ce6aeba7b97f3aab1b42d8b08
Date: Fri, 18 Apr 2025 09:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744970393
