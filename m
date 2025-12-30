Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16DBF1A2C11
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767134034; cv=none; b=EspFLNKVEZ6cEn2QOIs4aDvjs8g8unfdDbMA7sAXbJXlpc6WF8rfT0WxQlFgma3ZWFUwrIdVRNVsMCsRZhX4uqpm6NGXH40AGUHmjzc+LPYtDXH5lk8hEsFfw1oiSH/Gf0sSj0TIHZPiUquFbQjcYoCOZ62dzTxzJegqowtNWpI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767134034; c=relaxed/simple;
	bh=a952RceLwUB5MZsvHHiXCvBvHS+I4G4zyn+RsvPL11k=;
	h=To:Subject:From:Message-Id:Date; b=nPq8OMcDiCG51STPeBXWPGDWZ3NURiaLWebRPAoGMarMN03VOHSFP5hesY3CeIOxNm1CxdWdvzz7DwEF4M7bvtYL/pBaMeR6EyjLwDQAUf2lNQXpTcIORfkblKi7cVD6g/kwkP2aoslsT+ptWRHiFWBNATIAMtqaoPyB+rWuIac=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gT8QcYX1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gT8QcYX1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A314AC113D0
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767134033;
	bh=a952RceLwUB5MZsvHHiXCvBvHS+I4G4zyn+RsvPL11k=;
	h=To:Subject:From:Date:From;
	b=gT8QcYX10CheI7uKmD+DtpjId2QNgwdgXHPKdMmNV5GUApKVmBKlfrSe8afjPMTLV
	 FQGwlcsgnqRqXOhF+tLpYAg+mXH9HyJrq/d0pbKD+4rXb/KbFlHgc/obiqFy7Me8lV
	 E94+ZA/XZYa1Sn9smiZGv+ZTC0KP4orVTXZm5O2QCIhiMXGWTFLGyF+IB2ihVmGAaM
	 bmlIcsnbRx2y07+69FncbdRoq1Lg1JCi77+ER3xUkEWNxZeCPKD9HVc/lmR+1FYTEI
	 N6mFdVYRPEtIZ8XC4ie0h50lJXnZznhvTODpYBwwlBKTg9fIlgKYfT5LbTp0lLzDnp
	 bMB5eNN500sJA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9206CEE01F6
	for <ddprobe@lists.linux.dev>; Tue, 30 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176713403357.17613.7364637638076530693.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8e18471060ce038ef6fea01fd131ff6d3534913fee358beb7bca86a571ed69ed
Date: Tue, 30 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767134033
