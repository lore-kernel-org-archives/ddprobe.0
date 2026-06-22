Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE603126C2
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:06:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782151594; cv=none; b=mPcGfMUovWoChCQESiap9/H5bQXjrNv4LDYuna/hNgclDHomJxpShTR17a81Easbm03RpwcwTyIxUq8qll/LAAmMXigJxf7R1q1WXIvDmCFYu0LsEbaRjVv5aOv80ZqzyRNCB8/KAZ0eYS+K5a1T8+D/rlgugd52xGYHDSAR5nM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782151594; c=relaxed/simple;
	bh=DetlD5E95pLNCRWkqPz1zK5vk7wv/hQ5K2hM5WaV7Tc=;
	h=To:Subject:From:Message-Id:Date; b=mVqPQiz6hbWcvTHuoXjiWY8ce6jyd8prTWCg+Lxc2pwDzUPpYnDeMCFtnLj9cpIYGSXfgO69I6z5pxyAeqCtngqzmm2AfnHgnD9YteuvR9+ZDh/tjoTwWGfSLbMh1yeHPkDSJehxxG+Nr5XpdEC5qg8ERSBGNaA/hVav4heXAC4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CqeBXPcV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CqeBXPcV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC5CBC2BCC7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:06:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782151593;
	bh=DetlD5E95pLNCRWkqPz1zK5vk7wv/hQ5K2hM5WaV7Tc=;
	h=To:Subject:From:Date:From;
	b=CqeBXPcVhaeBROet3tUG8HHMiAeFinQUXdNclMo/cmGiOWTDpWBbzY9xMMPgppuv1
	 cHD+nV4eh3W0lZKyHBRAjNfQsOwrIGBL/5UB5K1bVdwmX8wgbaMr/YZ6o+TPwFzbKv
	 LMum9VaykL9gg5TQyCWnEjngbnmBczyQ/WFM8JHR4a+i2me7tvufqDcPDDVAVje8J/
	 np28hUQF6u8xu6kiApo2idPKSNv6jaIutuwEw/hG2N0JJjIcQsKbohMN9qL+Uj7K0L
	 ybs2otp4NmJ1ESnQJQn5TfBZpu+ZGh65G74YWmJs0cn/jKI+bCR98vHB1k/+NdcApE
	 HpCh2tDiIHfnw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2266CDB46F
	for <ddprobe@lists.linux.dev>; Mon, 22 Jun 2026 18:06:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178215159371.26801.12203500529750908270.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 49f8421198f1ab8584d3b6496b59855fe5136921810a186076a7b3c49f69d65b
Date: Mon, 22 Jun 2026 18:06:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782151593
