Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4F8EC2F3B
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 06:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738479354; cv=none; b=Ya1pIreuS2InzKMo+BTERJV3+ppJHg99w5QMvxkcTEccNwKPdgboQC2monnsNLPEMI4jDQCB+jdAknFNsJNf0ZJdR7ErUeR6AOavwgWANpwocm6W09spkmu/IiYreeGHEUTAdw04ANvgDfhk8/gov+rgsZrj6fAYdGeDMpYjk8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738479354; c=relaxed/simple;
	bh=hXoF4NKAA1q36Y7xLArlOo82bLGfddlKEzTHOHbMwEM=;
	h=To:Subject:From:Message-Id:Date; b=oJDu9gkt/DfQqhOCElOzZdYZiOKCV/9OfruzYcGEJbvw3pNHdDnvY9VmNkQvsNnaAf8MTd3kRGBw+rfCIuJclLGAFWPKoU9yvO2bRWdg//I7C0gJHwGcKicJmoxKe1qO9ZtIHV72EuRXqN/rwA0DBQ/wmmjdTpZtAFpN/TfSlQQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=acsxXjT9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="acsxXjT9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFBBFC4CED1
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 06:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738479353;
	bh=hXoF4NKAA1q36Y7xLArlOo82bLGfddlKEzTHOHbMwEM=;
	h=To:Subject:From:Date:From;
	b=acsxXjT90oFyw/gmJlZLumalspz6ZV+ONeRVGOSBmOMvNTVe/5akhms8No6O4iM89
	 L8eBxK9P8VwlCfqSd5U/K4lCS32B9cmkRyz4gXN1+16Ro7A4RBnqcJwXBVv9bKyqT7
	 Y5UyroG2ZZlPfJHpIPof0qaAGz6234NEl5kex6DCHn170dhrzhuGP3rkPacTiS3yrS
	 xVUeDK/ew34j9/lDgWxN5jPUliwcfLa5dqMkGFgUixzew1IHBZ2ZQzEjnwvSuLPy/K
	 arRJ2KhK1Hp+s1ydpi9gFEkH/Ufwmh1Wn6MQ+1cd3VBaqvEM5Cmnkdp2faonz9t5fi
	 qTVRs3Zq11rEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E330C02190
	for <ddprobe@lists.linux.dev>; Sun,  2 Feb 2025 06:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173847935363.21891.13851282120400384876.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ad803b9912cc6526ced1edb2d67c8a0346aedd63ac3666d657487ffb77171757
Date: Sun, 02 Feb 2025 06:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738479353
