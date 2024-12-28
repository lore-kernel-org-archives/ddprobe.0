Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2D98B3594B
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735382154; cv=none; b=Vu1rs4Ac67XkZsPZ/7WGLpH0RMqFTy19DL7hGYUghhToeNW41J/TBrkVK0gbgh2kWoN5p8jrYLkYXkjYHvxYyMKpJlZYudF/sQhFIL3x4VARhHYHd6Fd3fqjx7HI3DLpAj85uAExldrqkC/Z8RgyMj69t4LPaHrzfh2nuTyMyvg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735382154; c=relaxed/simple;
	bh=iYU4lPpI9D/GqyMYQD4+oWrFucaUwNx6b495jZOa0U8=;
	h=To:Subject:From:Message-Id:Date; b=tfJeEHoX9UmNpcHE1o4ZcGkzfaoxK2FoRlSK/gys/Z7LDOK+riSDs/ATmknruKj1NFkyhSptLtz4khpmH1Tg2wEMgh72K78Zpf/wiZcz7HUT8wGV5hBF07olzGFCtes/0vw0SitwFRUnIbr96eAY2FuSY0CFf8PsUfMbR76ufAw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sfDmz5iZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sfDmz5iZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7C26C4CECD
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735382153;
	bh=iYU4lPpI9D/GqyMYQD4+oWrFucaUwNx6b495jZOa0U8=;
	h=To:Subject:From:Date:From;
	b=sfDmz5iZFLKg9QmH1WbOhOvg95DnwaVV09JkbiJMHqrmMi07KA1UlE3yfyFwXXGo+
	 3VkDLqtgezPlDggvs0MdCI/kZJIit3i8EzXZcQMW96AnvoPQWNTuicPq04DxVBbGhv
	 MjH/InG+EQ49uWJr9/iwVT7HuoYn0JsE3kSrdJ1VBBMqisuC58eXZR00+uM8472jFr
	 OhvwOfhzglmprgGcbqFEENdHkLIBSdVHUMVHOO/D9p6GADqbrO2f6qvDwbqdLq3KF8
	 XX+9+CcFVnrI55/P+XlwDNfcXOyTqV9K1Wy4/HuGZMMd/U+UF6DDuVLpBWGVsM2gEy
	 7qo5kcSuQG/Hg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A1B9BE77188
	for <ddprobe@lists.linux.dev>; Sat, 28 Dec 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173538215363.8770.12887228942651549851.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2f241b21652f7d47f877635f1a88fee74a59258356d7215c5f36ed1ecba26e2
Date: Sat, 28 Dec 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735382153
