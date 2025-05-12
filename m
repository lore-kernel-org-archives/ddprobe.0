Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45F59259C
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747033194; cv=none; b=upEkvxqawczIIuh7OIrbJhztLhuP635YJ+ulrJgsFUPO9o9p+RamrgCGkrvBm2/CMMurgiikuWGXx1FqWbQjRMEJsetUHmOLVHhj/blSlGakxjbZgQEeR0A84dehckw6TWaOZEpHofTbtjJgRYFOeh2/kgSs8QExAt2wzEgFKco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747033194; c=relaxed/simple;
	bh=OSz/NGuVIIiQBHKF8sF3AjKTiACpE8w2HijhGa6qRQ8=;
	h=To:Subject:From:Message-Id:Date; b=WysaCEJQIwhBU2woe+AaVSind5n9fXdGav70g0SEvnleKIjy8lN9nOOq7o0AHux031dYzK7OD1dp+PgFAWEWWWrehaQxeKk7GHtEHbxsNMLqui/QCVibMbb3JddyKjzqffI0m96f3ufD8HTo6JaV0er9NTlmhpmeZ7jak5VVAzg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gznzOGng; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gznzOGng"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F198C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747033193;
	bh=OSz/NGuVIIiQBHKF8sF3AjKTiACpE8w2HijhGa6qRQ8=;
	h=To:Subject:From:Date:From;
	b=gznzOGngQHZXH8f6PO8pn6dlDG+X5aZo4S9v5lebZ7FBiLpt6ORiKaLg191+S3V2j
	 gBHEKY1xCKsBPzaHRB31qibO7uEWiLReuojUCc0nZFSNqTGJ+oeZJ8rDf+wUDrkf8+
	 wEZ2F724qerN3fx2INLKQPrhrwZgk6+vcd6Omnf11GiyW1NIxBwo3iOdp1wWGcHjDo
	 bDTTzh5sa5VQocs2vzorF2x0E/O/kzYMKi/lIqojB9poo0/XfyMZa4TqvMKmIQctZr
	 Z7tH75vRo53sQyTyr+yyHs555ZyPXRDl4PyvQsg8Hlhk2Yk5E8gRHaeipy3aowHekw
	 M7IJfHLKVH9rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90213C3ABCB
	for <ddprobe@lists.linux.dev>; Mon, 12 May 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174703319358.3107.14997748247877925251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8973da58b1567b19fe2b07e93caf354903ddc29a53cbafe2470394afbdd6d5e5
Date: Mon, 12 May 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747033193
