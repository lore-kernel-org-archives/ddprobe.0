Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7E1B5175A1
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:06:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717509983; cv=none; b=W6jqihMPlHn4X+akqzOad1W5sK8I2v5OW4PinlmJ6vnzBWvAt4ky18RuQBK9xOU928TLKF4FZbH9A8mDBQjoZwEyjaHKkmASZo0RGj4x26LpnHJI2BMsYxj8EaEaE5mwSBmBGtg28HxXwp/njKPkERCE6FIAoAsvhNnV2ct+QOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717509983; c=relaxed/simple;
	bh=A7/cTnN/jlIWSAWTzSYYj1FpxJouLa+2ZsLserhkUkg=;
	h=To:Subject:From:Message-Id:Date; b=bBMor1DTKlH2nKxVpfXON0gnng5HpMVEfq0dvCQoJMLneBmYsoRoIs27Vo+zs3gnULVXz+rRUzdVC4L+Hl75H4nvPZEm+C9g2V7UXGs9Vtg7Z3InyaxOSHv3+7ieds4Vr5rO+RcHNL2Vou2eJzFuAs4wck24LASLSpiKrNC57Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EQe3OVBT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EQe3OVBT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 046E7C2BBFC
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:06:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717509983;
	bh=A7/cTnN/jlIWSAWTzSYYj1FpxJouLa+2ZsLserhkUkg=;
	h=To:Subject:From:Date:From;
	b=EQe3OVBTt+WjEbSkgGCrS5NOI6Pli3RATc8nAqTfl0mCxVCQ00mPo4DsX5+PC7yKL
	 2c9FDMsLOSEEz8Bmq1Mgl7+gR3s8Z31h/2yCokQ0+2m7UQf7bwQGillEfI0zTB0gZQ
	 ltPmK8KwOhmED+D8DOTK6fhpr6bP49rdop2BaoJ77WZoMQFFBl08vwQ/MIzx2rGwdl
	 NsXKQji9Y5eCkUKgDpZSb+iWQy8+hV4AYkdAm5RuI7QtNT7jgCHbLWJziRMaQKOjgb
	 /whdHQsYKJu2Kqjs0apgzZZ2NInGIsa3jQH4IlaMZOEBwIGxKPbdDLxbuz2tjALVKp
	 F3V0xWZ8ruQ5w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D4370C27C50
	for <ddprobe@lists.linux.dev>; Tue,  4 Jun 2024 14:06:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171750998285.24104.13610750341967065423.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b0af8eace0630957b9af575e616cff66b55b085f7d0cfdc57638e39d4de74762
Date: Tue, 04 Jun 2024 14:06:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717509982
