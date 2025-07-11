Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 23D001EEF9
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752272394; cv=none; b=AdvKp8GSmA7BBfPc0/gZrEdzCN32SdsfgWLdmMtHzEzaW5kwR8HkMma2gMXP0/ff9S5XsFkzgBDDVmAJh0YEdBiL+pfCFpXi5puIAyIX2BazxrmTjf7hj1nmFcOazldmwl83xwNiIuVd5K7I+QzD2xOSRsdJbVlFeLdS1VkJMM0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752272394; c=relaxed/simple;
	bh=TFgrHQ4mAL4ijRwrkaGZSfW2dh7lir+HgVkz9w/VLo4=;
	h=To:Subject:From:Message-Id:Date; b=fCH4fwJEIhmUeBe5Z8r032X0czJUlIzz8WO607HXl3fR9HvQuq/utO/IXxyo2MWsi2CMadGnkkTtX0mDrSsGJr7YSo9LFLjPysVfXMhdKAWwI8Z0agGKIJ8Q9tekqPixlKfdOs9eYfd7ypvA4z7L/NcJR8hyhqbUMtFVuK7h8Ok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jLdJd55C; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jLdJd55C"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2D3EC4CEED
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752272393;
	bh=TFgrHQ4mAL4ijRwrkaGZSfW2dh7lir+HgVkz9w/VLo4=;
	h=To:Subject:From:Date:From;
	b=jLdJd55C9nzHPMn0OBi3GLyrKj2LLCCSAbBvGHwdL7gS6aHGP4Tu4v/lpdv0HSutZ
	 phNAsatVE6JThuWm3lk6g5XTVeLDYOeuJHqzWkFpxS18Zq1bWPVwiayQX7TTfomR2o
	 nB06MiNWSJZzkL94nbGcUPuht3BUCN2mjSnWHNZPppb+T5ODx7VhqPQUzbnpzO6Hp1
	 wTTy3jnqoPzfe70YxrAi1mW/1UkfrdHEe9cwhRFHXiquSyJ0xxfSkJYl5NLxwgYGL8
	 3xdyo8FtNo5xHqh9cHBEqqBOv/w0uKbtK7F0Uq0s4HiTLT10jeq5d32L/9wzAA7BWn
	 aYORfwpOFkVwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 916D1C83F1B
	for <ddprobe@lists.linux.dev>; Fri, 11 Jul 2025 22:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175227239358.26449.10364127908848503304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1e579239feaaf1666c5f2e84c6bc4142c906924c2b9f908421a794f6165d1256
Date: Fri, 11 Jul 2025 22:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752272393
