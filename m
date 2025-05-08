Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4039128F4
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746668994; cv=none; b=fW6E2D0oCXvPFXN5KZj4VEjcThni1EtoPVHoTYc2a6503idbib7ooiN3PzNRkbrlpG2a6XapQqvaHjPQxCPC5KXXaj/KL3hmPe+2bPOrGRcRyT/45jCdm8CVoQLEbJNQc12eIc7cccoZwniSH17s/dplhOnYtR3tHQzRh3mIJ9U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746668994; c=relaxed/simple;
	bh=/34ZyI++b8gEeJr5eWCVTMp8wdMU1qNSvTeefRnMAyE=;
	h=To:Subject:From:Message-Id:Date; b=iQ2KXi/UFU4LnEYpWdPRoxvJ6UE+Li+ltw75U2i/931DlcT8im7YKyBsDksTwuK36N/H46lfwmJcEXTA8MgU7qjvR4+IkbsARerpnJaDXuZ8bjEZZx+7GLjNVce472Qs4arMRKTP4eZgKKw4zSDfk1ReegUY1+KGZ0GCYYgseg4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LPtxkQ51; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LPtxkQ51"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1294C4CEE2
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746668993;
	bh=/34ZyI++b8gEeJr5eWCVTMp8wdMU1qNSvTeefRnMAyE=;
	h=To:Subject:From:Date:From;
	b=LPtxkQ51kL8l1UVQCaXUsQZTpo2Mtr5R4IYF+2kTf687rN/sSJGJ7IZu6nquTBo9d
	 KLhjwwDXfd0JaxW8voNyLZDjOPtmuoRCeAJnVZymuj7MfkoibZ9ARGDOJtqXTivNRO
	 KBXS7npgcjYtczhb1rTK4fCvzikxOsnZsql4Q8B+LBKAi8qc+bU5M3omiOEXp+WLjh
	 MhukoU0qfgIf1NdGKth5sPqLoBxiceF+Ej+ZfK80i+Rv9TOuwmokl9Pt7e7JyXgk0O
	 KAltWbne110Ugsqpul44GlAQ9XSd04k1ud8MFOWq7Vb6zmFEbnXasFMTpPyDveBd9t
	 4VIMQHXajUylg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8D5C3ABC3
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174666899357.29429.6386899841360261343.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7f6a045099f6a44850981a11f7c916b59245b087ab44e1012913863f22b7a6a2
Date: Thu, 08 May 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746668993
