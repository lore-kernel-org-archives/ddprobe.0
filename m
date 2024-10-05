Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2822F22EF4
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 07:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728113754; cv=none; b=pBULvgZPj10x6WrWohSMsTmRMqbwXWTxSNHz1V1ST9ZgFAD8zNrXpNGW8vTNBcqXG+XauRxQD2VaNiTWKRPw0YGZ/yJXkYqU6+/LkVLJf2rvGip/tIhNCUMLfgRZF34GUSp+zNmmiJIL0yMxBJRki8mVxOPV/GTlXYUC4f9kG8Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728113754; c=relaxed/simple;
	bh=X/qq+PpUjV26fHnoFds6RKghMW3KI9T3HaALbBtMaX4=;
	h=To:Subject:From:Message-Id:Date; b=rezipuwNYymuEmSASmC3gHk53C3U/1GmloFpfYTB1upK9McjQ5jiEK3oVRIOzOJs9suvXBqxtOJsNxEhCPG8YKz74KbQuIh+P9YIl0IWW+5a03GaVYOl+CwMk2pCeVN7gsyBFGuDa0qZb6WK1nJ8KHoS6sEcClDkIkeDU0J1NV4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=p7sIoHqC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="p7sIoHqC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B84EFC4CEC2
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 07:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728113753;
	bh=X/qq+PpUjV26fHnoFds6RKghMW3KI9T3HaALbBtMaX4=;
	h=To:Subject:From:Date:From;
	b=p7sIoHqC3/toF9mEDirIyCsCCMzMMXlOuhyiYFRhvQwTAGdFBserliobMasucRwJG
	 4vR5lbU4FUnYiESp2jyI3AqmEok+W5yQVsS0jXrw8In3QTHhxBLzNGHqMLk+9fvxG9
	 ir6eBsBWqSyqIFXfFwOWBhsCnK3x1k6NWQ9FID+Ml9GIjoqFu0grMiAvscaNDn3i+J
	 qU+rxNo9aSGw+1fwwu25LgrJw4l8w7jRDJYuaSoQzjgplPF6QKigbMFcqfxTTtD2ZB
	 uI059Ggc6mb4Tmd0imEEnXNLEKKPBTiZu+CNzdsIZxUpNTaWtjxhFPy4CjD/l0hoRU
	 6uMhRXh000P1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3068CF8872
	for <ddprobe@lists.linux.dev>; Sat,  5 Oct 2024 07:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172811375362.26496.13831884847338497755.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 89d20125c41d408064d7c9f8c78e1642e420588ed77869408aa65d5809f7a0af
Date: Sat, 05 Oct 2024 07:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728113753
