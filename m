Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1576A30C62E
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:11:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763997114; cv=none; b=cNJa9pG4BHUKwgfWkBb9m3rsh/5P3zSKWjK8cHfKPOJxAuELGT0aVoibFwDgMM+RtADS8wUnM6MsFO1n+sg6y1f/bU2XgBVzZ498wQkkIlBtcr7/Cp20Jrkf9+R+p+2chcBo2SXpbflmj7VHOSY0pdDG/cf1TfQ0n6PKYFZCXEo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763997114; c=relaxed/simple;
	bh=gQWBOMdKHF771paR/HuSjz5fIQAOjsantqD7xWNJrWc=;
	h=To:Subject:From:Message-Id:Date; b=ldWp2LT+mRoYw5R3mNBrLV/SnHvsJBUieCH66VK2MmuyM6IUNXhlPip7A8Jf30oamC8OBjaBtCtZXHsFSQjyW5jgYE17S5Zm9/U5GSHCJfkn2Ia61V0gzHm2r8SxfwAcZFPIZbhR5w0YShSQg0DwCBGULNnl7J51eDhGZEv+jSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=txr+LhoM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="txr+LhoM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1332C116C6
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:11:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763997113;
	bh=gQWBOMdKHF771paR/HuSjz5fIQAOjsantqD7xWNJrWc=;
	h=To:Subject:From:Date:From;
	b=txr+LhoM4Ivm9+sks77NLcgvzrghkJO+uwEAbAn4UiuDcVTLDNaEDklU2kavbxPmp
	 LaB+JDU5FmEI43MY9lLAx3AB8XCJY4sd2q0gcSMXHbjl37XO+IQDpeV9aqic5GNayQ
	 2wBCdGejqaBlD7s6qtNYUBN/A482bCpBwDrNzcvWAlHWDrVjm42N1dB389xYmlXIZL
	 4KMYgwyMHzmpE7cDqVfsSGJFR5rQ0fVDgo8vydwVy4mpQgvcbiYHfnNtqwgqsi9RpQ
	 +ZT7VB0BQdavA9qT44A6S/2TToltExgfAdnNJk3wY9pdKfH+tD85j2mlaLwuC4j6Ob
	 d8wox9UnAIT1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 921D4CFA466
	for <ddprobe@lists.linux.dev>; Mon, 24 Nov 2025 15:11:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176399711358.25785.6248161696050900492.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 319fdcdd15b0ac3821b1b4a8c3c79638e10d20465ed53448f952ce2659c13f6e
Date: Mon, 24 Nov 2025 15:11:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763997113
