Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18AE038D005
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777636054; cv=none; b=tztl8CibSzASdKgurwckWq6UCVTDu2uGe8goDMk5xWEhZkacDfRST0hvUN4Hc68cLjmWEuoCoMAYL3nenzWNoooQ7Yiw3ksb1QEB4njb2QQ+mmgf+uOx99hslXypJzmQyj9yAg32SUqUomId1cIkPy42VxEvrWAm/ewBqe9JsxU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777636054; c=relaxed/simple;
	bh=yLSbZluBxNnJOv/iY2Mkwr7Al5oRmI7s1oJiaPU8Kp8=;
	h=To:Subject:From:Message-Id:Date; b=eHiwzfc9pC5djUWi3+r34v/Alj4ne2eicBav/V1KlXpkhxr3W60s5wEBZFtg/LANZbLf1tl5+a0OkzGV4LL9yC9CFb6pSadJFHwwsNrtjZJ88z9W/BtZwwept3AesVe4a8jyYSav6GcevkhZxv/5mnXsLy/THEz16dmHoN9IxeQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W33OOrK3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W33OOrK3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7365C2BCB4
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777636053;
	bh=yLSbZluBxNnJOv/iY2Mkwr7Al5oRmI7s1oJiaPU8Kp8=;
	h=To:Subject:From:Date:From;
	b=W33OOrK3TPp6c+UjGSszjwITRi3MUSKMOOHPdDyeyI3XBO1bsoH6spupIRPE4Efmk
	 0KYq1xaNaQp2mnbduYwu515PUoZsni1JBTqbrPQLJyzM2SFVQmSPUfF9QBimop+1gG
	 V0yEmyYYbchWvp4NnGtUkvUb1Kq3xgeHaPkThn9FsKbzFdMbZ/oAmtEm0pFya2Affu
	 3XGVVMJMY7Guo4uO9/LJE5im6YqbPX8dT+V3YQLKpn4MAJ8crnHA++FnRk9AVR/YlF
	 PW9gqKg7FUAjQJtdG1NV1Q2wFej228CiMhcSR/ukO+91+xcH6agSCXnsBUDUa/UVSi
	 vnskXfdDesoKQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9381CCFA13
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 11:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177763605368.4998.16285934456999631538.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc1d9dfc91b2eefe756ed77c2b5a28829813fc5b3ec476f8f707e9c671fab97c
Date: Fri, 01 May 2026 11:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777636053
