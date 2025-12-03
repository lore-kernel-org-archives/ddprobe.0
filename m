Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C0672DE707
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764757374; cv=none; b=muAR17xUnBeRT/H77uEkgIWfBXjHknPRIlRnr/quJtS+J9OyI4jd3I3fsMMKcgDUYHp6vsI7QfxdMVLli6amFWcAc4whPc+xPnQPPVo2Po8PwVXC1iQJ7nwnBNC8fX4EXpnDEv5Knlys1I60JAr2JQ50PidCAreCS55Tz9lxpkM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764757374; c=relaxed/simple;
	bh=EoVb0oq3+QyzV+TWTxClz7EBkbkL1Ftx9Jf9cYB0QT8=;
	h=To:Subject:From:Message-Id:Date; b=FS3m592ZEjVmIv2ifZoL8o1jS9H2BGKTgJyVulibCwhnJGFFgazcpMGpB44K0Uy7xbNGT4lfbSMxye+6KBdL/ppVC+SYqOEQ/3ubY2GsUe8uBITwpMruUl0IiXMFYc+nwcBEGpzRntvxNdvGFRHceGAfnPmqzdll8Te/+HYyeUk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a7wUn4Wo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a7wUn4Wo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87ABC4CEFB
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764757373;
	bh=EoVb0oq3+QyzV+TWTxClz7EBkbkL1Ftx9Jf9cYB0QT8=;
	h=To:Subject:From:Date:From;
	b=a7wUn4Wos8lo3LJhHVq8J3vaW3Cib0v8/Z7evJfq6UuhDcF36t6CwOe6jocH3wFwk
	 Jo0qpJVI/Qvx5s8qKQyevpnoQKVfaGuqSZGuRQAl+Wo22ihVcMfEpqV25Am2TE2W18
	 dHGEeHFBpyig4wEN6dpn5xbxM3yyCpNglNwLxYPryW3aAaQbabUG2jZ5ZyGST3/GXw
	 DNZHIbHavc+6RTSB/bRyOlj5neznCnU4qHiryRMTVtkTliHwIlGRuRr+rFFTHmlKL7
	 FFL58l/DJGHVq5N83wGq/Im7GB98yMLSehqey8lm6zmoPana4cp2u5DD/xyISHHQLr
	 pwPGSKWPZtyQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939F4D1269A
	for <ddprobe@lists.linux.dev>; Wed,  3 Dec 2025 10:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176475737358.23372.8729635894792600946.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3f91863bb693d96741216f238d56d55b6ff1d4202a262ea5515d41909b49948
Date: Wed, 03 Dec 2025 10:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764757373
