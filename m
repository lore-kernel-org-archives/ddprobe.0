Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 242B9EA4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 04:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705898297; cv=none; b=jugP2IO8WJs1O2biYLh9SOMSws+/fdmPRRosupclH6sXdvpsw+I2W+0aCCdkkxh2UjY7Zpqzu7Oqtep4wby4wqaIbOViALpsRvlv4f70tfqBrpdAoHNK0xqjCh2a7hNrv7/1QXLB5Khds12abpbv6CSuzMjrZ+hRpMglhejBIIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705898297; c=relaxed/simple;
	bh=Oj2MbPk+ibfHWpgryVQM54FIGI91VpwxJfz3Kesg2BY=;
	h=To:Subject:From:Message-Id:Date; b=BWfZQutjM1y5LzLOIeT+2K/W9TVB5+Fsbh2qLHVbFeDHUTS6qlZ4CpI0N3OBfrEfSgRc3cZBGQj0BWth4N7Y1QpSPOFj8jflKALfu5nF7o1XHBurL4qqM0R+GdFoLmxayNnR5YUVNVmv2kFP2hx5urq/G+3jSXBtLMrx9XO3rEk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hD0TFzsx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hD0TFzsx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 829B2C433F1
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 04:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705898296;
	bh=Oj2MbPk+ibfHWpgryVQM54FIGI91VpwxJfz3Kesg2BY=;
	h=To:Subject:From:Date:From;
	b=hD0TFzsxFL5IbXZorJHNHQP5LTm4sti4aG9NEVS1LJreLkZjS4P8RgcK+M7gCaSeZ
	 E0jWcP9eYAr2ipLolPVmrGEp9/RYEKcFmhtfvDknbpQE4agK/K0mMRQL94o+0knoCi
	 uwRDMg+uHDBGLAifGboY71jZgZ4G6JYr+GZ+SNOis7QZ0fWEYiX6dPaTl1rH6Ts+p2
	 OK23eJiip5VzL6m/R9Nltwic8E7qOXTi/ak5sZjo18OF2udloJeHk+AFbI0zDCzFfU
	 tF3UHmaIJKDXh28JnRlbp30TgtYB0M0S4pp8jRoSs+RgPoQDkw03xz0tIEIWN+bjbg
	 3qDmGNScu3eHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 59BC5C4725D
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 04:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170589829636.20874.2722538770116331098.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a2c7097504cb6e6abdd381f17d83da850e3ac3dc8f38b408f5ea740c1884697
Date: Mon, 22 Jan 2024 04:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705898296
