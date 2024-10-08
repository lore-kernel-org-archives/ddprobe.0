Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 274171FA254
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728410154; cv=none; b=lXCn3CSHVz1MOl+8ax/zbqrya+KqB58kQXWT54vlzi4uFqWB71bH6zjZQyfpuH1Uhra0dfL+Aj2R4jz2Vj54nEl8TbXBKJ9FAr25DCM2dFZrfiVgRNyppNaWwnYHDeGaWSYD6/Cir+/9XIGHyZqJQHYBl0475oncdF2UiR4W1vw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728410154; c=relaxed/simple;
	bh=zCSgF45997CdfChHM8KTcSzl4z5DJLXJ716VlcBA7DU=;
	h=To:Subject:From:Message-Id:Date; b=P7m99hQyYYWclXcdSne1uTWvU36g6ZJfE5sgMHE+stCnRYBkIA0WgpgSXJP4cKbXrlYhPuEJNlz1IR1li98GtkeDRfbiH+piHu9pahjpnne219X2yykVOAhuzyF7wmdLEvZ8mrw+0PD2PmtE8sD1QIJdJswswBGvlVUYMtWHP6E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pncyaDU/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pncyaDU/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF52EC4CEC7
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728410153;
	bh=zCSgF45997CdfChHM8KTcSzl4z5DJLXJ716VlcBA7DU=;
	h=To:Subject:From:Date:From;
	b=pncyaDU/li5gDL4Po9LoU7FEkxQR0glX6jnFSsEkPmYE+b9BwViXclUHmZsDyjhKu
	 wLQBhIBfxeKsSjvJj52KQCw94qMHoEug+hEBBePMqGzvF+oeooFaATdoL9YkqvYUJM
	 n3ZtMadDgePFdD0awTE9LvTzzHQl4DW4m4ewnmQUFa3R0kS30wDzJYuIn4IklFK0k6
	 8+lE89hA/lbpjAL/L7+4INdRBcwZo2IuCnPUDQ7/vz2mL1szBVSVutYbarJcBiDayC
	 1SpVkVDxW3QDU5Ix+tggwuzfbwjZSkDOQnl/KjlkQa1xjCHJiBbFJRXWBATkTBkosT
	 nDRimJGwKYOdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2996CEFC38
	for <ddprobe@lists.linux.dev>; Tue,  8 Oct 2024 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172841015365.6436.15894799131532798370.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3f02970ddba66f8ed6e0dc12603f9ae9c9c157549f05b5a4ec507c1371a1ac9
Date: Tue, 08 Oct 2024 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728410153
