Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425B9157485
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736915154; cv=none; b=G7X6gzqwbg2n9GK24//i8eje5G5sjPHaGwibem2Qdo6jWJnJa0t+yGtEhV3gH93YjkTaq5EOy01i3VlDxTuQr1do4wZRKUvnSDgWMiuITpbsSdwu5W5S9M6CrRidRmU55KJn2IQudMDpRYGg5th3LxUYso9xFo/ymMj4Rb+Z+ec=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736915154; c=relaxed/simple;
	bh=bt9zGEEvEHrrenL6FLsZS6KWeaGrigaq9l58t3iOMII=;
	h=To:Subject:From:Message-Id:Date; b=s0B6k3a4HYEF6cjDvKy+Mu22AuAqeyogLXQSnHSbtj3NbXEZ3YnGh5DwvamflmpjrErm491VRUXIqUd3tcip0qr2YymYaepLM/yEmL9LTydEZByU/zUmwdakdhi/VeIX7oPgHmshaUS7NzjF4esN8Y7aR2t0ZXkBl6PvMCZLu2g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GbOY8djf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GbOY8djf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6F01C4CEDF
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736915153;
	bh=bt9zGEEvEHrrenL6FLsZS6KWeaGrigaq9l58t3iOMII=;
	h=To:Subject:From:Date:From;
	b=GbOY8djfTsj/CudZRyO9AqBGQ+5BM/pwMi7VGTUsr94v2t+lvzvITEjl9lrZORvDp
	 lNaGzueJ5s7/dT/+bWOLSS3hbczusDNqv6huB/t8HOCJX+SZ7lrpi9Jm83SJ2ArOMl
	 9vN6bSrcMdaCD9HYsIKvw7Pv7NZzeXlBpVMYbUNDH4SbUIUIG3oTb9wgJA1JxHW/DE
	 vxyK4R0xo/3m6xQwW3GqhcRohS2T0FBQ2BYWokekkR13ae8I+fGi1lhr9oEh3D1y7B
	 qEyic5JdoUmrh8kXAQ3sM1A+Y103MCa/ie5hn4keJJfrYpZJgWk4i7LkQA2vRs2c2A
	 y+Jo9k/MODeEw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99B6AC02180
	for <ddprobe@lists.linux.dev>; Wed, 15 Jan 2025 04:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173691515361.30866.13926610753711390853.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f30468b9f3d2c3f47fd540733a99c1a62fe42963d8aee4fd6c4a86eda3ccb3f6
Date: Wed, 15 Jan 2025 04:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736915153
