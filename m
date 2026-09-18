Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D3A439AD33
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:30:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789698635; cv=none; b=f1PMdbbclLvxRQ0rO9xL6qwg8iHZPrLgyD3+B8q+/K1NDjN87YVftazVjk5Kx3g0rpcM2i1DFX2zuUCmiCEXZIVLQgg70PFvvF0lq4EuFo5CS971Vm9b5gkVtAu9xvebZfpkltc5lIV1ojhvJPnWeTIIPXDWl81387AxCNYSXBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789698635; c=relaxed/simple;
	bh=7x0++OVx0LYinVPI1Fs6Yjx5TWiVm9SXMvu5f7XuxEg=;
	h=To:Subject:From:Message-Id:Date; b=k4fgs2xBrnNvz7AZipVFV2EXGC8iFT3elw1VdwDMsYMlmi2xxFwVVOOv1/NbqX7MDPm5nynz9D7Sf7mDWDWb6juwO5bp3DY7tyfBahYIunvowIKE8Z0h35+JvuO9AU/WcqPWft36JnKAEwwtjs3B/h9sEoVHCJvA0pCBuWMtFKo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=npRW6aeE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="npRW6aeE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF41BC2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789698633;
	bh=7x0++OVx0LYinVPI1Fs6Yjx5TWiVm9SXMvu5f7XuxEg=;
	h=To:Subject:From:Date:From;
	b=npRW6aeELF9CbKClMqJ1UesOqGJoz80Bol48W1q2Bt/Lz53gOHzPLdj6uIngcNhg8
	 EIjc3vTvkQDdvBw/jG5B/Z2ZLAAu99ZNMZetjGdX+JKhwHjAvymNR/LLeen5d+kypv
	 ciLF2QHxfDHSsDSnWSU/9SXDkwQ5EkZqeSLsZ9d+PJR5WlaBhlKBErSOxsj6iScvdu
	 ok9+6kkkw1PJXrx6ZnA0XB3Caisoc9AC8sWy2Di9Nf2sSn8F/uwxhG4H1qxQhDQhOe
	 H2ayClaGSiXuRjPD0qnrdKJn8rk5sI1I4KbaOpp0Vgq/0I2bgslh6UctyHRY7kMev4
	 sNf2j/m1grZbg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC1A4C982D2
	for <ddprobe@lists.linux.dev>; Fri, 18 Sep 2026 02:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178969863369.19523.8459229414463606072.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7585761f198e717570d5d68e16b30c964998ebe42fe6496f065a1a2b81be5850
Date: Fri, 18 Sep 2026 02:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789698633
