Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 27E35241679
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758966595; cv=none; b=nm9/V7tkNVxj58aPsU5WRUVCHFrj/9j3dSVAcUR+wimpO5SGfKhPWDm3PVjBbBeawF6DCnbA66NQx+UcTn7wM/UDg3TCoZMSUQVlMkH5mft8rpXADPLuDtTUfa0Ig6uEkebfYmJqOa3qsDdI4UUOljtfD1jz1xaNjkwEmpf7d8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758966595; c=relaxed/simple;
	bh=I3ElqsfqkmF6XF3g80KWm4Dug1XxUsn9mQa+fVaG/H4=;
	h=To:Subject:From:Message-Id:Date; b=BIYR2g1BOPx4ASRUFm1M8H1Hr0EIkaH/aGE0VwU3VDKY1HyPwn+GKxQ9y+CDxqjUPRScFfAr0mlrvlsJ74PRUtAkE8n801RKrAM9Gc03XQ1z3Z7CSDp6yZNBIqw8U71Pb6KCUPfjNobcPDsX4cMHkOkLN5WBmAxGGiKVQFqQpSo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NxzHfi5+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NxzHfi5+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0295C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758966593;
	bh=I3ElqsfqkmF6XF3g80KWm4Dug1XxUsn9mQa+fVaG/H4=;
	h=To:Subject:From:Date:From;
	b=NxzHfi5+TzauhvMgPB8v0kTi50nv1dXXxmT8XCqKtkLmab3JJbtykZhPEzXoQ5Prq
	 +mfXRYjHSVDzoEzreY53KyBM26zKjCS0kOmBMuafh0LJYBef9EX4WOh9NLk0u+9B2i
	 EZ7BbMDF755qg5wLDdxcdlDwlsw8wq759RVe42tq4Kt4B6ybMur0x6fFrgtgwI8QjV
	 /7ToctvENsa2bdOylfFyAd17r41tSmO1D0fKPR/AcofAlhyRkil+QOhgBpTRtLY8WN
	 WyjcY5UvgDkwT5quge1NnVAR6ov9l8wrfHWmSzgN2D24NoiN8n9p9HAzbTvLuHT9vc
	 zM8Z3m6SbjvbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99182CAC5B9
	for <ddprobe@lists.linux.dev>; Sat, 27 Sep 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175896659360.14086.2676308566208480839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0013a628b3d4af14458101ff8e6ce9217ffc4f3ca83a878122d1728a1b9e515c
Date: Sat, 27 Sep 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758966593
