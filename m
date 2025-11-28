Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F08018E1F
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764288774; cv=none; b=RupUPLGeYsq4ZI8GSA0SXs+ih0NIhpUGa5z6V1B/vKQpV4A3KqLN6qyWz9Gv8vyQW842Xn0WMuHCJMMQ2oIQW53hRur/i2xsFUzf/NPHsLBypVfuruHuurb2KUI8Z011kC8fDwBHY0zRA5SqV0evkHGU8h2fjlD3BW8Tali15VE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764288774; c=relaxed/simple;
	bh=uuwvXCDPgzPv6QsV66oIC5rPVsMXY0t3Z8VKfXKc7bc=;
	h=To:Subject:From:Message-Id:Date; b=OjtrGDoB5/tql5sM7Ii9ccDSTsn0AwHv/Z3JGLJ5a1X2eTObeu2AOgXNuPna0suosCU3TmnLJfEtNthgMXMPe5f/g1EmJg9JdRNpPlBhgddFjkPoH6jHUM8Rd2litdKdbphNezkD87iVeXwfdrNUXgrwdxwEnRBUX5zLJFfT3i8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JxhUThUy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JxhUThUy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9360C4CEF8
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764288773;
	bh=uuwvXCDPgzPv6QsV66oIC5rPVsMXY0t3Z8VKfXKc7bc=;
	h=To:Subject:From:Date:From;
	b=JxhUThUySfyeA7x+D24SXh2jpxb1wq195V/qMfSoYtwlOsffppY/T7MbMaafPxQTT
	 1Rl+d0FKhLWBqjWu157UY6b2tPUQzdnlXPxXzZSkxcOFjLHp9GXcKsY36I16kGj1ww
	 t+BlWJ5XKIP8k+2n4q8aYLUxrA/6fob787lEx6R0K8k2d6YWeqSvQNUQ7CMMMWmnoI
	 uHeDYWJHSc9Xt8BfqjZj5F+c33G8OTA/DDKugLSVMzrXr1Z7f8rUOQo2D1IWpHH5o5
	 OhApv/g05Si0J27YZqIS5CjJNydGmdCRkqFlS2kor/pDxa590DV+CGxPfHrKRy4R1H
	 LD2Pt7N3UeVAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 986D6CFD2F6
	for <ddprobe@lists.linux.dev>; Fri, 28 Nov 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176428877358.26950.2382822474769469215.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b3e7637e806647a4588db42d209128d7ab40bb2448e81917e98022405aa03889
Date: Fri, 28 Nov 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764288773
