Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 134283002A0
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757938194; cv=none; b=CVF9fshPUT76rOcJRqMDanA3iyvD88FJxZWIJKfUijHXDaa2GYTnJPpcrfTJOU/NhUwRpEPQ4hXHt3smrE6qdY+cGQrk9UW/cUfWfpsxxV0ifHRhO/0IbWJyturiQo/cGSOXrBDEQs4GtcwtAuxidjbz4wxibXcvIqDSd+GOpSc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757938194; c=relaxed/simple;
	bh=MFdZbGiClfPU3Y8E/7d6O/5Lynsz3GIpOpdRcy1jVg4=;
	h=To:Subject:From:Message-Id:Date; b=RqihGeGJ2HXzGoyr38fWbO5xg5Fe6F1Sv9O8fS/WAOqeW/FeqYAXHL1PJjT9/L8WnhOjFILFq/A8mJf/rRK2QnGFiHY8iO8ZFJw4iXqyRD/qSEPphiGguJfBadAtJqrThjjoMLAhcco0E6SIl/kNMrL6HGke22LoYXu77ohdmN8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQxEMf0R; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQxEMf0R"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E2EDC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757938193;
	bh=MFdZbGiClfPU3Y8E/7d6O/5Lynsz3GIpOpdRcy1jVg4=;
	h=To:Subject:From:Date:From;
	b=EQxEMf0RYZp9uffpA0A5VseKnnb4kehO6rnjdCvfAIvMPte25Muuc4FC7DnQI9i7e
	 NBHOWA6dzIi1xmmnWlCKVoO/JaXRwExehmf5Isg4ekWVCyHn77uNyW7hZIpyI+pnu8
	 N3GVRlwofayySU3C6GkJyl3Y6KWNkNwerqOV2lY46vt4sPsG+Ygm3W3O87bvYW756R
	 N5pMutEZjAbf4mvfGVjlS7fhetwuS5oc9ulh3ryoDe4PW00cyZKDNDU/DQkVgErl8q
	 bmDeZSKmiIH3v5GdYnsNKnFvjwk/1BCj2LZKzFez+qOe6+EX1o+WXjX8AoHnKNnPUK
	 8KPffWlsodVnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F380CAC592
	for <ddprobe@lists.linux.dev>; Mon, 15 Sep 2025 12:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175793819357.29638.8622981818867195227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c9640354eafe962b311203093c069ec28a2d9399751727244d8d06031a5169b
Date: Mon, 15 Sep 2025 12:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757938193
