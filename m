Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 229A0353EE0
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775592934; cv=none; b=sB4hK3XfRZIEaDwlCNf7zE1Xn3HKSsbtXyBSpUVDGI/PtUKwGBCNeTR+q3xt9DrxLNEoXvELXM7B8xy2i5UCZ6Sl7fpqVUBqMe2tWSr/KsPvXRmPRfj2TF/ysRlsw8qjr9O3JoOJKIortNlTyyuUUIrflcRqiy8XKvAqvOWE944=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775592934; c=relaxed/simple;
	bh=Ya/4gmLaK1UQgxE1EmeNx+wqHhR93MyPs+RKZE4/t+w=;
	h=To:Subject:From:Message-Id:Date; b=GhehtH4r+DjWp++Kiz+vVG48fYlYovdGlJc9SSRogzZBommnWgKzkfM/JvosEyLlZIlfVLReo0pUGzgNHDXTKLxsYuJfDsXaaJ1qOe0aaa8642Uga/TyMVBLufFh7qwKBJmxhxD/BiafkaBsW5ScuH4Js+V4dcikkN7o4c5zxIs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pJ6YOZSr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pJ6YOZSr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDC47C116C6
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775592933;
	bh=Ya/4gmLaK1UQgxE1EmeNx+wqHhR93MyPs+RKZE4/t+w=;
	h=To:Subject:From:Date:From;
	b=pJ6YOZSrNkWbaofXqsvquQOVVGjCY9BwiCjupGTdBPEe74UkVFip1PIqxdjX5zQFb
	 YRLa7nfWM2Dy3KT1GRFNKYGgnQkPF5G6Ja7bK1zw1zvtMYpJ75JzI2U2yj+mI/HEdu
	 q7Y9y5/XJ4eEyDbi4fYwkA4bL5LIcZyeMz/HEw57ZZSivxia7aA549FTcqaKUwgZ6f
	 H+2jtvZWfgmY4HVEChUZvw39undWDD8kkH+XxCjUPRxT3Tx6Ip2LQt6KEAsgtJQXv8
	 C+yhNsPFsjqWsgxZ1FemNJvNscgf6PKw7G3xlcaolo6673nYb29y+D+aewOKHmG+hl
	 LGxqedN/ib+oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB741FF5139
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 20:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177559293369.30553.141977054637289895.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9da1e7c8c7a28b264cb6db3749edf6071601d457734010f893853125b8f129c1
Date: Tue, 07 Apr 2026 20:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775592933
