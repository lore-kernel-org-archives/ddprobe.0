Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2B6388F70
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721742354; cv=none; b=o68TdHujTzswUwOdDMH2qAbMCPghSx+VENCETmG7vEgxd4XZbz1vjNX0/bKbhqlcgtEC7XiA6U5WVYTPOkvNRAycUfSPktme+UmyEvzZRhvLotaJjFtWP6vdsqqIDprO+rYgJKxxtd1DzvdYh9ii+9+ONa009+EsaH6lee7V6J4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721742354; c=relaxed/simple;
	bh=iHtjlQRTLUciz6lQYE0DKqaLMnadd086sTDMLGj2M+4=;
	h=To:Subject:From:Message-Id:Date; b=LdRieOlmBRQlWuQZov44spoH4pYsMZbJnabVfq7od6mjC9C/FQm5/1K71VTREcl9rLyfzSWK2a5dVODIVxT69cJvh/7usYhCjknSxTzKxMs6gA6/oVNFGu/Tjz7yeN3Ai6k2AMvE9K8AWDajaDVjkYlDLfE8JZ3IrynHptYoikA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=e116hQJB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="e116hQJB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A82BDC4AF0A
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721742353;
	bh=iHtjlQRTLUciz6lQYE0DKqaLMnadd086sTDMLGj2M+4=;
	h=To:Subject:From:Date:From;
	b=e116hQJBIzAcPc25OlVvGVpzVvfAYwzwMSO9NYW/4ovcz4WAmHMuwRSX1b75eI03d
	 z/jOJhbtEnGrNAxIk/sXeXUdcJp+m9v/lxOsFNhyVttk/RYAwowEGeGipES+02jXKJ
	 jci6qVG7ifBriZ5DV9YuLXdsF7coRfM0gSmwuhhCqCGBEj4b2FnquDENMdzJLHm+JO
	 ht65d9bL+szBE3Q+LX1pjTbNb5W+iJDVfgFeIDqdClMGXNKtgCTI+QJRI5oOjX1sZ7
	 A26+7BMcgtUMMOvpXXSDhFWvVhPUl7e7bnbPpm/Ans2gHU9do5aIVLYENi64+fFaIo
	 U9hDRTSthrHIg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97970C3DA49
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172174235361.14782.8533972547500469382.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 671ab6757c64793ddacc95d9e0f93f0bf7a915a2ea66ab2f63a85316677b5fda
Date: Tue, 23 Jul 2024 13:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721742353
