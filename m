Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 180F227603B
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754909394; cv=none; b=rk6MMVISvUYPx546zsInwRWPGd2xv/AWff07N/hTnRQf1s3AkbvfIJt7mccfOC11BWC8Uj4x6Gw37RMbXvcOpAOV+m0Fz8vdET7NEINlMvKuT117NrrYB2OJvQN7ZnvkwdBjYEDKfX+OmmDcdozWXTA723Z7ZXLACtagqGej95M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754909394; c=relaxed/simple;
	bh=VwKc/LkFS6SZhX9ual/KMcwTg/1pBY8JaEHHiFfTFvg=;
	h=To:Subject:From:Message-Id:Date; b=te7Ty7xuvCIMYfW7LL9y6QErEde7VW64ijbwZXKNlPzF3oS8pzSqDdFvk0xuAmFjBxOrda/lbhMP8pXmd/k1NPnbGmGqRoELC6OvooswAMMYo18ObewAOFUqhO/85u24LxaQIvo1MbDzEbZTIpIUUtELoqjsFmMEqTHNKKoKoeA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tJ1aq9Nh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tJ1aq9Nh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18B8C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754909393;
	bh=VwKc/LkFS6SZhX9ual/KMcwTg/1pBY8JaEHHiFfTFvg=;
	h=To:Subject:From:Date:From;
	b=tJ1aq9Nhp+z3+th9Y0zyW+wCBPG+9Bgt8+Z4pglOU/QKdZV8jSqiCE8Au+LuVY2Iu
	 R04jxtWZ2AK3S+j9dUQfYHRiDD19SXsE0YLEPKNAPx5LRXzefHRdQymK3dvZkcRK1U
	 FNe/e5ndIE9Qju005aakB/jri8oHcRbL7ako65dgTDPg9y7ZDQNAUPiVoFy/Z8hue5
	 Gz3ScF9XFizOPjnEuVFYumkwbsxSXiQqnqclY8SpQXkRjJNdqX0QVn4FCxDY7bmk1L
	 7zPmxig1cjXbC2XcKpbCX3XJyudhR5VU1KBCXvum4XmuWWW+lJNiJfR8A8Xpl5+N/W
	 7u5yYuV68H90Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F568C87FDB
	for <ddprobe@lists.linux.dev>; Mon, 11 Aug 2025 10:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175490939357.16372.16984267807410987748.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0351a4c6e29130f1c016cc0b55215b1468bdbfabcd6cad39a44ad76cb9a1d8a
Date: Mon, 11 Aug 2025 10:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754909393
