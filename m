Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4811614601C
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745083794; cv=none; b=O2No8AAfyyYTcTXcXmV8lyoazkRouTnV1h+oIq8ZQfhnW/ePNijXtT4ddrrxXDMWomxAujzXzFvjX6e3R4B5vxzOV9vC0MB5O4COBm9s9xDwWsOISQcIIroZqX2M2CVVf1aSiTTKK5j29RpuwIILJmPYmGFBg3lYw0scUr/C5O0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745083794; c=relaxed/simple;
	bh=qr85i7r3W2LYyoGody+1uEKxAWTXM7r3I9Zie6ssUuY=;
	h=To:Subject:From:Message-Id:Date; b=TBK8rpgZfjgv3TIA06nrN6IvEOKfMLgLNWkdJxm1VG+aIiHjGCqUKgB6Nhy3Dlcawp42pcacJAyZMZXlTheVRe7Aey0VJ3MEFHwcq+ma0VAmLTo8sLThLKBYUPibMjy1F/75qMOosOaIDto9Rio9h+VfDLN++38fQNL0HtdWKFU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gw5orOW4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gw5orOW4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8514C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745083793;
	bh=qr85i7r3W2LYyoGody+1uEKxAWTXM7r3I9Zie6ssUuY=;
	h=To:Subject:From:Date:From;
	b=Gw5orOW4m+yW4KkIsFiDIqBS6tNJMXkTFRPxqEZJCrCJqwIFqLOLarsJ465tLWIf9
	 ztK8R0LAMmwNyi/9qAyOTJgurxxd+0Nk4L0ETBAQsjHIJMYBmQ10JhK4m26s4s3hP+
	 5tP0dA4l8yXGHSPJOC9QEjZCgyH+Y9Lrw5XqvDY5ORioHIJfaWH02aXvHN+CiJcDQs
	 ZZOKXu76QrWEQVSF6vZB//cqBsJFSkH0UeSpsb+sB9+/RQESpUNHPakvqOMlKa4W0G
	 ZFv3zq4aMmZekAIXlVVp4UwK0tUfJi98jBK8LVPSTeQ1K8UGxn+A0IJCfGt5/bL8kS
	 7JXyYKD/r18ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E703C369CA
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174508379362.23864.4801640714178361788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6415da4ce5d81a163d9e0e44cbc70e01ce59c9dc83c3d83fef0f4a83f7fbb59c
Date: Sat, 19 Apr 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745083793
