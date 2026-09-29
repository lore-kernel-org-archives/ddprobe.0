Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 645FC21FF23
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790656234; cv=none; b=k06utPt9+uScOA+pQWrQBeonoHi+iBWGjal5cWFg2tS7Ixe8vRwhA1x9U2DWqHjdatxvUO/VFO1d44GpgxyriAgdROysDnXjdxbzghbIujYLw5H3BkH/LDXPt4ttZM9PrecM60C0ydB2lPFTPeOv9owlVPqn/q97VIg8hjup3iU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790656234; c=relaxed/simple;
	bh=+hcUpP6CgCUTfB8lHtI/syIjmp1/mPFDIETGn44+LVo=;
	h=To:Subject:From:Message-Id:Date; b=bdtnbWvW1HwzTHE0kQ+Y9mI02oLUh9ecuNJSNLYypL9/WYzk3oh9ZCOZ/4Y23K32VuQnNExbZvRZweUWtwR+/4pJ/tthKZuycsCIU3gvijZCcmiU0Wfrn2qGyD59m7ES0IHkKZj+QmJkt8S4buz9hqFW+b9JRgJi72hOnpec2Jo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ogBWaAZE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ogBWaAZE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D5E2EC4AF13
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790656233;
	bh=+hcUpP6CgCUTfB8lHtI/syIjmp1/mPFDIETGn44+LVo=;
	h=To:Subject:From:Date:From;
	b=ogBWaAZENZ1zgxrYBaumg9s26G0beBQ+YhK3KB1AD34gfFu7LHKfN0QdCmLZX5Brx
	 rpidXfC5hrEn5B+xPklnQiZFD/Az80BMmPpAIEzgtm3uQ+/QqL4LkAdBScruOxzT3D
	 Aj3yVaBmFxt3WnWkFnDLkCV4B48CPD3ga4tBwGnhtIHy182JFO9sgXrkKFIK89rLFd
	 9zu7YYD6gKWFGIJju6lLd+VrieZhTq4BaVrZfzJIyXnxZqaC57JvKyxp2TheaTze4Z
	 5DBmGXH8Krgr/tpA2cmpnDl7xq8z1aaqrHZqZV6URcUOeFBy/bFN+fL0PdM6dtUjbU
	 TeouU4laBYVUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1171C9832A
	for <ddprobe@lists.linux.dev>; Tue, 29 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179065623371.7934.13117403117171707567.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cc3275e8c5d2b447907114d067c6df46fa25debef63cac4506deabd613282fd2
Date: Tue, 29 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790656233
