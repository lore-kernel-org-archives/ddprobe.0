Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 91E044E4C30
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791835834; cv=none; b=Q1rZgA0V/RH9SKHp6hiUBX3endErfdoJZdT14qO/5MQX+D9QOz75OM+x4NUlOEnVxLFAH4vztKsNoadktxvJ4rFToZf7TYzASrQsoye3jgt6kQ3UYWv8xYoLq5k+RXPs2KG2ynIoUlTAtte1r50Cvpm88tP+uZY1ikdh1fZI9Mc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791835834; c=relaxed/simple;
	bh=Hr2Tx6jcR58M805oV17eu4MAsNvjbBgJOaPHu7VJmJI=;
	h=To:Subject:From:Message-Id:Date; b=EYqDj/sW53KiSwxjMzKmQjdI8zjDM3lVGFpLKYY7Kz3d8eBr0AOxeL9kWzTakMPNWkxYK5yNPl0DUVco+g9oVqM4iHBzwdgPq5f2or/wzzFZd5O+JT2ybQ4dAs+I1DJJMg0cxgLyVHxec1qO1921WyDWnrtXKWxpYo1VTiHkJ1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkOtvNDW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkOtvNDW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4FE9C2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791835833;
	bh=Hr2Tx6jcR58M805oV17eu4MAsNvjbBgJOaPHu7VJmJI=;
	h=To:Subject:From:Date:From;
	b=KkOtvNDW+MiZJOVRuyZxRLpy61hB3EW+04Gy58tUzMSjz0bX7bvrOCmk2KPaR9H8+
	 EJZVb1qQAqJdLXvPtvj7JLttMX5vMPOmTFGi1oZW12ZG0tzMVBGKfCxK8x/cT8JJAy
	 pLHwJo2guoqkbkFniXMC0TehlTknM8PqRIRgo3fTYAV+7LgJB/9MrJiG4MMk2eDhYB
	 7e7SUFYor87swPlJdK82JV0IqznYh6DubjRc0J8neJsYdfh+r+xz3DXNHobSFjPYs3
	 DFRs8r48Eb1jff7DQE6n+558EHcWXYmJq1kAYW+bEZWkIcqLqSBsW15EMfWQq8qwRt
	 3PNeRsSUEUa+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E75CA9ED0
	for <ddprobe@lists.linux.dev>; Mon, 12 Oct 2026 20:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179183583369.28347.4594582372410689185.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f904970ae8c5b074877bc77985c7bb0430415db0c95a0bf1a1fe15707e618e23
Date: Mon, 12 Oct 2026 20:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791835833
