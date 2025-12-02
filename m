Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0ECBA36D518
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764634974; cv=none; b=pBZQ0ogUvkcG2nh/v0SU39gOPazHIPfYXLq9zkIS+YhSQ6nMnnkkzzinq3PnBVr5M2q2XOxYwG7KiuVW4i7iLzhAnlBZsvpkwUDNCU5S7FrpIoS87iD0NsS2yIlVRoEHhq25vXc2pIObJcushlqEBzx+yBG87Qy4jzraChHHX08=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764634974; c=relaxed/simple;
	bh=A1k8ZCGogEfFTF+dNR/YxSEsDRZQjoosWX1A/4wPNYA=;
	h=To:Subject:From:Message-Id:Date; b=eea21T/+AjWlnZaDcmVcdkLLN4FZiOSJgFpBopnFT0i8AmLLHmF+LP+U7MGFji3oTWDahJT3AAPP9OT5GTzymCvQImX9NFPLLiOU35q9byxT/zKi7Ci1u13+6OAAewE2cyYNV4HdpZzrTDbcs6hTFWLYGlB0+9VyGphai7e0TZU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E980MO6B; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E980MO6B"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B5E11C4CEF1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764634973;
	bh=A1k8ZCGogEfFTF+dNR/YxSEsDRZQjoosWX1A/4wPNYA=;
	h=To:Subject:From:Date:From;
	b=E980MO6B3urjuv/Nofu0SNnH0l/j+NDzlNks1nr0M+qVoTX6GkjyCc76XS1Yieo0X
	 K1p5XIN4He/c2aiHk237lgxIz2xlIPnWOPwRzDjX7ItT6ayMGwNGCg5vcJ98NEOZEE
	 4wfOlru6qK7jZrn1N5TsXrHS37j2zRtIEwENqwk3OnqTJsoPoYrFv/NbPYYcowuk2K
	 PB166znrQRS3FLprbr0ukpdIMee+xYfm0PMxNFK2vTS3FsJ320zhomPEmZDyd63ULu
	 imPa8FQvTxBi7gJ4meCUUq0htYA4eF+4Y9rYfW1rhnP7DmUGF3jkdewVaE33ZqscEw
	 L+7/XI/n5L5VQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A371FD116F1
	for <ddprobe@lists.linux.dev>; Tue,  2 Dec 2025 00:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176463497362.27752.869618126372762541.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39f159038569dc9f3251723d0459c94287894245c2ee189d86d28f7e1d1965a4
Date: Tue, 02 Dec 2025 00:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764634973
