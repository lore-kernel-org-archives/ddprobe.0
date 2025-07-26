Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 213E4207A18
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753561794; cv=none; b=C/Du3Joi1cBL01y77qhLuL2edRdXLsHYzCVpCeiGo6gQlXqMk788TWFBXd3bmNXpdLGScekIp9sWAZfxjrS3TLwkmdoLyTqL/VivmCxHPugPYW/JWNykTWtu6FD+flgpNVwHH2uLeh9vXauPKw7OBZlaz59cs0FCme6wNbs5e8w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753561794; c=relaxed/simple;
	bh=eHGpFCNbxpcxhZ54XJnlV7N3FN2wSnNIM37Ef2TfpPI=;
	h=To:Subject:From:Message-Id:Date; b=SRFB/Tl/KlSNX7+lv2hczeZGjWPNf63O8v+R3YEKWask38dV3I4zdJ64KqrOIky4j54T3KaWAx4/biiqD3RqENeWxXCVcpdKDCQePaThs2MwIcJhDWWfde2en8zQIhy4L0BzP8bDrCNGLvkM0wXQnqQs2Bu8H9Sa2kpQna6teDI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xwf7OMCA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xwf7OMCA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A846FC4CEED
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753561793;
	bh=eHGpFCNbxpcxhZ54XJnlV7N3FN2wSnNIM37Ef2TfpPI=;
	h=To:Subject:From:Date:From;
	b=Xwf7OMCAIyRCuTiRqwJRvZZbCmU/HvEVXTko+y397O6AWgsahj/HP8o7D0ZmNf1Y9
	 pdPtTvuureYsRlZC77+uyJoXmxT0p9tYavn33jpgKB2h4aD7AeMe86/c7fPC/y+khb
	 YYNgCGyQ77OJgm39OOuWytnyLprUvFjjCaDAbhL4fGxPhNf9BO6ykAiqEHcFlU7rbR
	 L6+IlYyKUiB/hUlfiA6NCR2VwSxVvHPK6b8mqs4QQG77wlu4EqgsfrE0RVgJDtOGTp
	 ihP6fWtE/hypRLsfd1PfmI0qrhEFQsIxP16OHcam87WuWnfFFuB2ugX/r2yLG0EZ1F
	 3WMGk3MDgIpYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94F79C83F17
	for <ddprobe@lists.linux.dev>; Sat, 26 Jul 2025 20:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175356179357.29593.14170770810250850036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f8ad761eab5f53a39dce55e26e6ebf54196e9924771a7f49aa75da37cb24b5f
Date: Sat, 26 Jul 2025 20:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753561793
