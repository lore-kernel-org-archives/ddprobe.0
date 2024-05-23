Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 52168126F27
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 23:13:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716506003; cv=none; b=fgJWN7MeR795GsnbzynzS8WI9HpYHesV9JYmGV3gsoPVzLyj/8CNag/fOyjWI4WoTXX1c40M5ZK51fjmAjb15zcYpb7eblg/TDMNhLw4L+k6Qn69M/5uc0b7mtXtnf811/Pq4iT+/TYMDfwpY53cFGu3li+BgGq2ZEeO5vwn1uU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716506003; c=relaxed/simple;
	bh=YkneBBsn1sK5q15UNzuiT1JzRbnq1op0GO1j7fuxA6o=;
	h=To:Subject:From:Message-Id:Date; b=dTHhUFo5WrWnBzN9Eiw8RXdm9j9ufKmMDQa0TbYaTdbkaXbNShIyAxAvDBvn9tnE7AAkO1UO+56FGOc01KeElgNU7YJwkeTKPe2WXvIG9Cz+aOjlDETAa4kCbOcvaNViSDPJDO29r1rqP+1meRKVFSFmtTvlW0CQxUveqP+sp2o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WZwuSVzO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WZwuSVzO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D08C8C2BD10
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 23:13:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716506002;
	bh=YkneBBsn1sK5q15UNzuiT1JzRbnq1op0GO1j7fuxA6o=;
	h=To:Subject:From:Date:From;
	b=WZwuSVzO9s3K7QaDdezL+wjNTKYcZ69wYckxduUn/e5x0PxUJe3Y/XSFypAlI+kTL
	 PF0RYzKOe7L5W5dl3mXUGuEAtlVamEqAJNSVNwNuzwTHCf4M9UItFVGARwla4ecQ0i
	 taaYtuFlYL1QbAPbdZVZXAlhZMAt+EprrFBG3YPXPuKuOSWtWvC2e05WU5YsoDZlI6
	 vxhIS3P294QHTzdLEgBiSAq7nF6p5AcAZunBk8kPjlOx0U1OWft69ptAXE9ZOXxv4V
	 WNOHbUN4KWgMzk984fNkl84Jk1Q3ww1yawSQmuFy7iMQUecDGzmJPPfIWPPuti+oEs
	 RI1VIc3j/WmbA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0E8EC25B79
	for <ddprobe@lists.linux.dev>; Thu, 23 May 2024 23:13:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171650600277.2713.14412646500949861245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: df2e3da99386343bd43436a7bf4ffa8e30df391b9fafc2f68719a7f8ae5e9237
Date: Thu, 23 May 2024 23:13:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716506002
