Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29BEA1C84A0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:00:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779256834; cv=none; b=F39CGfdottpg5wfshPLZNQEivBnRtzUdj65QyOyy9r7WXEOZ2Kkuvhg0gH+8I2UJ/PMDVIiU0ZG5PjNSPbDrYDeuKGCz9gs7UzFS4qQ7P3ZGksAGQWsbGk1HY/gQxcOfOaj04GEfZu0SFA+jPNf4ST3SaqoOu9no94u8jQracbo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779256834; c=relaxed/simple;
	bh=Iu/W0FcSupD91GgPu7NBidZHLi5To1QN44yof1CMuPI=;
	h=To:Subject:From:Message-Id:Date; b=jbEHjy/lqcrI5yRUlB08f7ImUc9SsD/GDvk7q1HFHiGHAIZ1ycu8+5KfAa7a5YsGOukGp8KBzVE/u0Wb37KxjNuJ9CG0BvyZK8LgrbvH6+HRCw24UM4EYzDh1d134BI7hQPQTO5R9irZX7z/2IG4CD8GSmHe6lhhMEkGdsP4BVI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gjv/9FxB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gjv/9FxB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C6560C2BCB0
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779256833;
	bh=Iu/W0FcSupD91GgPu7NBidZHLi5To1QN44yof1CMuPI=;
	h=To:Subject:From:Date:From;
	b=gjv/9FxBiFJ/huA1Go15aC759GiSQ+sF7seWg0cttgJvNdKmV+3sIxrbvpxXYn5rM
	 Iol4RytJgJR1UxFQSX4+K0CdVo6pWrq9qHfUPiC8hv8YCK1U/peIxM8PCiEc9SIOoY
	 9crETPrZ8Nf5g8RiDscYl9PrhoBVYPMalwV2DijYmptX++tCQl5BtReV+xcKIdL3UI
	 XxNORN215ys2qFFWlQRDDU3sbs6PNC0iGw//VUi5k57OvwnDCrNAc/LLd8RDQaX28L
	 iBEtyEnsUSZv26cmBrIaeZFBFDD+Pxn20GMFU5OgXDuc702F27KfjafYR+dh1Utf8J
	 3twwRe7a61MuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB53DCD4F5E
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 06:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177925683369.31972.15838669237256055886.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b4d05bfd21f8b6a8f07b90aa20b51018c9c57e40dceacedc203251a720bb3f93
Date: Wed, 20 May 2026 06:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779256833
