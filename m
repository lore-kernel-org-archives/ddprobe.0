Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C58665C
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 22:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719182543; cv=none; b=Pd46le7cvgNd5+PA9LAfazVKzlMCaQDVYSph3GMx1/mMbY7IcJtCVFi/rDl94erngEm458xRyIUbYGfA8poGwDl8d//d6ah+Sau0jWZp33xOyil/d0T7I0Xxo9pquHJKqeYYo21bW6bp8ZToj9dOlIPHBDIVa9S2NxZlSnkG8CA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719182543; c=relaxed/simple;
	bh=VNbIp/BYB+F+o/FlyZoqcMtKOufmrPAwhNR6CM/V4EE=;
	h=To:Subject:From:Message-Id:Date; b=ctz0ZocJtDDkb9hMafWRBMD1AgTsfidiiCBFPMbKzRsJO6xwRu4Y2drVvpu3ansHDP/agqMA+ySyLXR2zAcwDTinErlFo7LvztAjb2PmliThTWIa2PAT5Sy9CRkBEOC4PaktYpPqWK8MmgfLOU6uBnl9xEAFuq5sDqo8zP69py0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YY1ASiHD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YY1ASiHD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF369C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 22:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719182542;
	bh=VNbIp/BYB+F+o/FlyZoqcMtKOufmrPAwhNR6CM/V4EE=;
	h=To:Subject:From:Date:From;
	b=YY1ASiHD++/4e8va3PbgGwIwLDdMBt//mUYbFCxwQTxRJYth19gOKDzjXuEqnfdjR
	 wEgWU4eFvf7kwNzfAGJ9xSQ0ucgbHVRFWUU1Qn220aezZ5qKm1/ERuMKgERMBY5fv0
	 vAqM2Lqe/0oVyukHNm0VlEkDAmCmJQsdMDehhEEGtnRxv7v4Gj+L4kMSvBcUXlzF2h
	 lZh4qlzo0tPw9e3kLzyU95mduHI61j9O0EtGMQB79Z2m9kfV4LDkf+l6an3t7UCoy0
	 0o/Zk1VH5tjvOj2MHwqHcYLobIdCeLWEIU1SEylkeQbxwPP8F8D6mIaAPL3i24se6V
	 4XrN8xl+ANxFA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8F80C27C4F
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 22:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171918254279.18447.5431435729245722178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a25355947055669b2a41ccebc27dfa0bfdce64b9f0e17e8ef4c318ff7f64e2a
Date: Sun, 23 Jun 2024 22:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719182542
