Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16598285CAD
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771204494; cv=none; b=tkYvSjddc6OeBrKNbCkvFPJdrJI02iPDJzZDBSUefwrGRotbWRTKMUsQvQufLjkLI+UWOyfDKyEzDemTmvuMfLFKSZjpq6Nwlu0H74eyviIbNKotCNGe4wUNoflqiQ5bKv+YEkjSs0VgQtjKOST25fR/9KEG0cbC7TbVLcu4+Ck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771204494; c=relaxed/simple;
	bh=35PF/nxl0bhcfH0MT3s/3osvbwHRkw+q1Ox608S4/3I=;
	h=To:Subject:From:Message-Id:Date; b=Ll7pbP5peCHk693kbg01NpiaQ8pg27wOzRB0lpZyQQTo90Iev27nTrk1MqV/xkW3jTw1krbyAVt6JgK51OcqUraaJDQyGcQ1UC1VtBAfkP0tQ1HIbLN/84XZzPF0jVHveezPLQngVW2ZVxKorAtfRhtqyifVxjJcIhGWuSBCbUo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=is4HS5Dz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="is4HS5Dz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B69B3C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771204493;
	bh=35PF/nxl0bhcfH0MT3s/3osvbwHRkw+q1Ox608S4/3I=;
	h=To:Subject:From:Date:From;
	b=is4HS5Dzwh/r45f/w+aSb54WoiJNqZyptgdApV8ijASYbDFMlbaVOgNbwT5mr9Esw
	 zWWat7+HbcSa30kAFlMzzkYc+C8tZJssrqJQ3dz27On49OkJSikFbTTfPL1sqoNiHk
	 UdnWphPXGVAyjTJFnN1s/2BWMpzjdteqCQH+mTVfTVdr0DVmHdZg1xCZxVsLAHNAa7
	 hE6Pukq6NKkI8egrwSaQNkuMzD5y4w/2N9hpHiCZwjvps+JKTGQB8Bu0QbkQ0Q2u72
	 A7xUpTs5vbw9CW5TibZKDl+caUrYCxnP30azcsGfMAiNg2SMXJahbQb1FCwX6diEHD
	 HuvFi8WIekBaA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D6BE63F21
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177120449359.29747.9774603468204927304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 997663ecc8ef8e505e14df2093153a5b23bad8b61fa650dae875909e9b00f649
Date: Mon, 16 Feb 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771204493
