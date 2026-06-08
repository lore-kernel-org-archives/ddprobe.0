Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 511963B27F4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780943074; cv=none; b=LfrjlyhBQTE/xSmbTt9RC85JFfVWjPDlP0nUkpm1Ck7cJo3L+ZiIbbwhdBjUDZYPIJAg8AkX0HMgkDLxycxGQxFJRjUVGw5I1JZmakA6GRWAsatj/m1p7Ld1AgoDK4IcMJVbeOlM4uS1bk9RpiY1mBnyDkMVceRya8YxGG7R7e0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780943074; c=relaxed/simple;
	bh=seqnjIa1xGiyR9/gSpe8wepoU763HVtH2uFBumyeBZI=;
	h=To:Subject:From:Message-Id:Date; b=qbNzeLNMlhedobhl8DLSBnqYN/LHfOaMhV/cHdabLAgKvg5IklYVQOYScgg5qX7FgN7AsvEWMOE5JfJVwgbiXBDPfMkfUvRpU9TFR3Jt5uQAwwBAEgVpOG9Cv01jqiunYkdUSCtPJ+/8iTDtUUfB8j7jCnoSILuq9bhUhMp1NJI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uCAKAuYt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uCAKAuYt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9E30C2BCB9
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780943073;
	bh=seqnjIa1xGiyR9/gSpe8wepoU763HVtH2uFBumyeBZI=;
	h=To:Subject:From:Date:From;
	b=uCAKAuYtym3OqNrPuMjjKyhNk8wjMikMDjg5SBznQoxZ5+odCt2aYBVkA7+XYXZ+O
	 OXWyUY+pO9VR1oiaYCkUbVpuYLvskpJf+c+aYgmDHLZvECpNAu5nzzm7Pfch6gXcRo
	 sVnc0tpbnn1aX/wJwfHUOwxJ0IDzyhowViOBiIiiD3bIuTPdHNAJznHkg/HTaKDn+/
	 bOC94J7MNbzjPVoH4tdBMuGjX7dwSf4NlGzOOntN9rqeXUZelgwbpb9OJBp6iXxk6B
	 WM8GN5BkYFzJ6qI64HLl07ZjE4K+qWVjZT4+BNQBzz/duRGUWb4khUOGZwIYrUNWvu
	 2/0I9U2k2cY1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFAE0CD8CA4
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 18:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178094307377.20603.11305475455799377730.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 76f5dccc22c3cb3ceffa49e08a4894d894e9381d48bd42cb396878adf9bc117e
Date: Mon, 08 Jun 2026 18:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780943073
