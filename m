Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E26C8331200
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770624834; cv=none; b=V4HNzGl2djIIL2AS8lmuH8q6541uNDiIuARyPArspCwUJhaTHiMioeVa4j5PTAIiHFZNUJPGNhlvCnLN/suQEKFF66f9BobMgZj1FwML6lkVxqO59g58Palg7Ck+cWSqZV1a+K3N6EvAQvx3mticyUnuKHDarBg11pgSe8NBpMY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770624834; c=relaxed/simple;
	bh=IoyhzwE7K8x2l269nXawdMcnO/c7MOitq21xzpYY4yo=;
	h=To:Subject:From:Message-Id:Date; b=BU5svKfI9e3JX33QmuGNY+iLxERTuOIUXwXo/YU99LUHzDpXwIaqovH0vcDQpINUhWbYWm4Oj6Muf6fAYmmNxEnfflDC4Fq8qmzH3uFDw/S8Ad5X5HWhWIgIhoMOBvejMGprYtzMg7Qm3PS0fKkbFMn/YGbmhj+ZgPt6TCDJBiU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=K7yiTFcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="K7yiTFcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4A60C19424
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770624833;
	bh=IoyhzwE7K8x2l269nXawdMcnO/c7MOitq21xzpYY4yo=;
	h=To:Subject:From:Date:From;
	b=K7yiTFcYynqDs7NMa623PUwXif64E72soIt7sdBO/EytEklfBJ2nPilbMGFu9qEUj
	 yUlcmPsZtwCT3Kft5uRZoAW1Xjuz0sKHGjlwPT+Ktin5QLeR9KlHEY0JLXJA6sE0Qy
	 nbHIJWEA5fAoSn7VhQPJDjEcZvvNJKAO2018/NYboDMOBFCf1b9s7L4k0spq5ajSX5
	 gwKnc0lfT50VXHs/pNOhLjn6Vx+uwXcqM3SJlVkZh7o+ULz3hszWxPqSJA6GJRjEyG
	 95M0ElVTTzOjKj2TqAtDscMD5WnXpnRGVcElIXlepwHgvpcowHnPmr7DFzq/7zPkEw
	 ij3m3NuZbgQUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919E3E7C706
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177062483358.26684.4962995874292368204.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6b81308affc4bcfbb4f5a1bedf8231f188db7d234033e99a1d0a7245bc95f23
Date: Mon, 09 Feb 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770624833
