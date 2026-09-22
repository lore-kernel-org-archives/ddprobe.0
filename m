Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36110429CF3
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790099434; cv=none; b=P38llJZyZBfm6RFzMYsESg0SJGJynvR8kzyoLWfdwXlGP+R3b6viF5oUSGRNUX5baNEYyLpEiSQIuDcBjbV1w/CIyQm8Ua4qNNYV/k4w4p0YtDiiLW6tHGitwLsKrEF3uRpSf2eDKPN5vb2PcOn3IT7be83qQm0dfSK2r2AKTvc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790099434; c=relaxed/simple;
	bh=CSb9T4YJ8/VQqHSBmYRYgpXHPadbLWCwHCrIwwaeTzw=;
	h=To:Subject:From:Message-Id:Date; b=m42ifqEtB6klieA40CKfyC+6+/esEO5dTGRxOoMYkthue4tn0lihAgw4oILII/lCe2g+fEB2NmBfznqIyWBqmnZA4lHeYoTTt1QFXgWakE3BPVXyvPfqcoLHRzWZHh89hOClzCbFEYOA/G2YNkegnDDcg8pF8eFoLVtmhh9Fpeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jn4olTiw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jn4olTiw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D03BBC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790099433;
	bh=CSb9T4YJ8/VQqHSBmYRYgpXHPadbLWCwHCrIwwaeTzw=;
	h=To:Subject:From:Date:From;
	b=jn4olTiwAYS0hDgIVle3F3cATGOZBrjAyFZ75EiekWbhL53NOx6YZJ8n9V7XM52SL
	 rhClKm6g1h1A28um9m08XrARWeoaE4UqLC2CQy8zUQ3OWLLXwtF0Z295gjPVr2JTHV
	 UQ7Aa4eHvV8vMFKHlKazDqvvEPOoiYceteT0DMXU1kruBUJk28GiI4Lz0li1Wugj7+
	 D/756W++Y3YZuf0tPj/ZPbjNk1R3SHY1gBaQHMLEfu+0DaBt+EeHJnTKONMkf2KmdZ
	 sDA/XtDIDGQ2naedtFB1hRFGVPEYn8ysRvDYL1ck8GJVxRau0MFfu6rLPUsDTuhDUK
	 MssXaNmo/xULA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC83BC98302
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 17:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179009943369.21944.17507227686731885719.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1040422da9b53b99b1e0f75429a070cf32ecd3020358a6c55a4c8a1db2bdedad
Date: Tue, 22 Sep 2026 17:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790099433
