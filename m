Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4596026AFB
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 12:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743770394; cv=none; b=O8DWhTOwFOC52jzaTSDFQpECQDF3x3FUhjecsQTt2IboJmKjbeKH+qOjLihyLdW47HPw9/MrUgYR2fnWPcNHImfZoPeIV2QxIOiV3r+lO2YfGclCiGUfic2GImF8rjveuoC8G6PBh7srOhE09eIJN+aeAaBrIo5pwcJ8ALenrw0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743770394; c=relaxed/simple;
	bh=AG8+j3JYj1LVNYX+/y5kpYkmCBpvLZESmWHydbdl+O0=;
	h=To:Subject:From:Message-Id:Date; b=sQm9ogYQCxsPkll+hpM8FaX3CwiFkJ3+AV3ogVdCNJrYe7/7ebkbFfUwnF6sHO4NPVBMltnB36712Mv9cyc0uVBD6RtqtezDQRk7KsMkYVcUUjM4tcprwdDMa1QbzMZ7OJ8KGvfhLdSQXD7WaS2/pg7Un3XY+EsmmNrHg8SBirI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BeCl2Ckc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BeCl2Ckc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5281C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 12:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743770393;
	bh=AG8+j3JYj1LVNYX+/y5kpYkmCBpvLZESmWHydbdl+O0=;
	h=To:Subject:From:Date:From;
	b=BeCl2CkcZaJ3W6denRNcHu3QQeIm+JBgcdJQfnk4IwgahKd/ThJKIA6rXopRFlB7+
	 8mTAVzoYG0DujmtnezSWMUWz7bbqHJ66piJQbLat2es7ESaFPNwny8gGhXHt9oXkjT
	 BXvHAGV3m+j1d9JOmGTi848TjltXiXIfXDqkOzu1CFyzoVwyjfLG8QLUw3xCDELj3D
	 aw6pzJ31UYpVe5CcdnhDF8VnTAtm6zI3aq1aacHWn4AorZljkCVr7PlWtV/GDOxNWO
	 BNsKCCQuxb9oNTN+ZrXodWwt8wyl5o5fqcUgOYA9Fz3/u05lDb1cP3i3Z+9owa672H
	 HpUjd+jyfsAXw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9279EC36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 12:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174377039359.30407.2668105071441642022.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d9af511d0b2c0e36bb5cb573d369f3f59fe2eb2cbf4dc1e18a9795be448dba2
Date: Fri, 04 Apr 2025 12:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743770393
