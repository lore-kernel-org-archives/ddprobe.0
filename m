Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 384B53803F8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:24:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780597474; cv=none; b=bAPNWnIiN0glfPbzAdV1pD6HZiTO8lfCI0Xnkr/RziSkDEd6xKIqE5cooywiHJtvp0y/VYnq9Ycev6ma6GFDdmdUgaOO0XDGkpzmBx6IT3pluh64RqVgsOPMaTxLhnWhzAbTRtBdLZoZoMhs7wn96eFWOWhScj6d7p0nS3c7/BM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780597474; c=relaxed/simple;
	bh=ErBrFNVMCnlOu/QRKbnC0R6KJvok8AhhvTD8Vwtsu0c=;
	h=To:Subject:From:Message-Id:Date; b=JfgRFkO4dbEJ1ffsp1eIr4nbIFr+UqNTqj65vB2hXRpdt41gogZITHXqwyh/Z6Mf1wsYX6rrdvO5kiCukZ1S37zn4emjdWMBEztjhX84K3LS4aAtTzXTDO2PH1mmASJalJLNaVsfIzh+WodRfrzI6+/3aCAUpvkocxIM6FtNk8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uj/RnEf+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uj/RnEf+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB440C2BCC4
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780597473;
	bh=ErBrFNVMCnlOu/QRKbnC0R6KJvok8AhhvTD8Vwtsu0c=;
	h=To:Subject:From:Date:From;
	b=uj/RnEf+LTXTssbIatJ88wTU7VMEdtXOvjkyYy/4BklCemFsegjAVo0BlgCbAYn+4
	 6IAlfx9Pt4Ffs3+HMn00siO4TnPWG9aRAl9X2jsWwcCji4oLNkBjevnJ3Yx59aZeiy
	 cGrbzwVrE7L5H3i2FP99D0VV6Wi6PbHqJvE4oayQ2Nmj7+UIJfMAICSAwtsvg5FJqG
	 UO6yGYlN8MLYQMjgLYFuWd0PY0ZSzfneBxKTko/Z+GJaHBYXo52acap02Qd1VWWjcw
	 uFZ4oQYyMYjn87mWAuQpWOQD82wfhZVYnR5UtCoO/0ktGwWpmxAUrcw/MNKfdvoC6N
	 75pLv30bSQAOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2B5FCD6E77
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059747372.7774.18154580372681725485.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f1732d332be2f0db35cdfb565314181268a3988243034dd32dc733784c1ea6ad
Date: Thu, 04 Jun 2026 18:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780597473
