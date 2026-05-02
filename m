Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2521E17BA6
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:27:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777685254; cv=none; b=p13Pj6YVNgB9XAFH78wTPmoRxXSmX8vXiysJa2vkPyuJ93dbFdbvMj4M4+hN59Ops+6T8jtX6+XzSyKaRcyZ8xouszFm2kSWhY7JnmtBtti34/uqI7BYnUcqTkiF4nZyoQIlDAfrmuB7EaNvWfzNv6g9By8oCTkhuxy30HGXBKo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777685254; c=relaxed/simple;
	bh=yf3/WD3p489TNwESmOhe6MPjP127ss0n4RfQ/mvgISs=;
	h=To:Subject:From:Message-Id:Date; b=PRdGJcBHEHWNSyKUlDZmvMAKYIYV2fa3KrcDJvHQyxCcu1OUM1764vxNxEBBY55ClXMijUjkRca1yrKXzmq0kEF3glFKx0EvUOqL73rvA/yvigBneex7onoKFQvyEgke4CFRMit1Tiy7253dbV2WhAs1/LxxLWzjvdx0QTsuySY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzMNf7PO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzMNf7PO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C26F3C2BCB4
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:27:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777685253;
	bh=yf3/WD3p489TNwESmOhe6MPjP127ss0n4RfQ/mvgISs=;
	h=To:Subject:From:Date:From;
	b=hzMNf7POi9ntweCPscBAidGrwHWb3tDVeEkGaR2ySbJPiMT4DyRuD94t9OGmwRYFy
	 pmgpxQOxzdWxifqhNgnEdth4piy8MZUeNEggsJL7dS/EuuMDCuLXQrZV20dj7ChI4P
	 xq8Q8mkqTUIgIqtpuoIOJckDWTzxE0VmBDQMAuhA5jawzqh48jqYwRCf1tQ01Gwgzb
	 qUrEanTcgrHdZvxg6p7uzm4Zvj+fyF+e9e/ASlCJZSSeRJDKXKo8+eiAHiXVdz5SBw
	 KRrhzjtMv4djMpcYZgrLCGEfkp/QdkQsc9DTgoznniR/QEg9XRB2xTXzJiDrPGzspa
	 +2BJ2soCZExww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFED0CCFA13
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 01:27:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177768525368.24216.11660769730018126700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe2ea3f45a1450f1f21c6697f602c29adf846a9b9a6cf700f252414bf93ac006
Date: Sat, 02 May 2026 01:27:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777685253
