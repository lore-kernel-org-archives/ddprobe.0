Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53F1518635
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:14:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719803663; cv=none; b=DcAc7MSSDaGKlAKoaTis0si6QVaZTyZm/I7z4Ur0P6vQs8f+3MfozjKYJ4+2a5l6D+cBlWe8cxkfAUmGwCbFZFAuaO/VcwWnwBiOh77XpXZL/mDSk1XIFd11LWqhATpRRvpqdn/D+l4iIIUBg1fPR5CR6xW+uneJ/OBYmlGdk04=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719803663; c=relaxed/simple;
	bh=B5PO7zpZufLLF3R77saqX3NYnsYW8AURMaPe+XJuGNU=;
	h=To:Subject:From:Message-Id:Date; b=J6gjbYDbz3WMk7C+RvPTjtT50JRmvknpzgdAhI01lMmYA9cIb0RrLLogKl4wHmMW5mhNR+21lQ0og6YUulOkal/ay3w+SXYl6IGY+FGS2ECObl8gnAL/Z0vDFjhNiUJpRLnc/+m/3YJb5XQ113xJ5tK0Be2nnmLnjHaArdhZa90=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fa8RLsqV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fa8RLsqV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D388AC116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:14:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719803662;
	bh=B5PO7zpZufLLF3R77saqX3NYnsYW8AURMaPe+XJuGNU=;
	h=To:Subject:From:Date:From;
	b=fa8RLsqVL+MvT4/L7AyWMK7teC5dm+i/OLAV0W2MTwbmDpS1WSj174Q5Do2wWHIev
	 vvRCwkC3G0SnQxhbEoYVKCQLMRa7cG+K5ISiwGpKE7ThUdu84uanSbnv3O/yaR3u85
	 OjoHQ7L7NPkskZR0cM1eUiXUSUMMv1cnNyGy70brEANGto64gRbZkxzkdO9J4KvkZI
	 B0aldOGFtyfstvogWzfWk9FWflGnWc8tlHervaJ+QtITbQjknG956LucIV48Zoaxvr
	 9n2ubOPasKelpNxC/+cg4KfAGuScbRPtQzprNdSQiADYnQAgrAQ/y5rbMbXuDqVGCl
	 0arxDFU55tWUA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BECBFC3064D
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 03:14:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171980366276.30896.14523495549568853526.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5610f11965754df7686380f77651dd59b116801f23da31e3a41e2b3e759274e6
Date: Mon, 01 Jul 2024 03:14:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719803662
