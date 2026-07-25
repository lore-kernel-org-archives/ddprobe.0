Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 530C030BF70
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784964034; cv=none; b=iUd6ugpvAHG/Q5iTPZiemj3DLHoVs3sqBYl6U1mMF4EmBD3joaiNJ4ophwKkrOehdoV5venWOyH5jv4kw8pBf3hi2OA8NAk69h8RMoNlfUpJGABUdcKvCQ+llLPWShSvdFK7mIrZj2w7nZGxYD72rlAxr3lE+IK9zaxrQ5D8sVw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784964034; c=relaxed/simple;
	bh=5+NtwqFIbPRtpfYm0GH1eeaGbVJsvg1PJrlUBujtdIM=;
	h=To:Subject:From:Message-Id:Date; b=t5u4n/UawEYbCD+n7G4susZ8aooxi1CVMWelTfeMypXE/Kb7xyamfg6nve/vq4uwUEukuSoK0ZwkROawZhSMGOSRQb+WRlN2Y5ORZOdxE4OFjh0shGO+ys5hlUE17LOKG6N+L3gvnCMlVHwzP+7lURSwP5IhqaeRE92yFEtF2p0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ccE9METQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ccE9METQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D31F8C2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784964033;
	bh=5+NtwqFIbPRtpfYm0GH1eeaGbVJsvg1PJrlUBujtdIM=;
	h=To:Subject:From:Date:From;
	b=ccE9METQ8SaYWnpWzS6wzyhO/+rZJF92IYyL7foNV/Zs8te4Ga+BVly6i6y5JJ+tu
	 4bYSSKOoWbWvLGacHrFWKtNmXZTRZRZ7OxXy8IgGJuXMEN350l8gJpdFp3Oe96vl+t
	 ZKUU0aou5Oy7gbKnK4DegDjUm6xrUZ4U9OYlCLJWSkSXW8g7aSi38HkDP/IjVcY1rv
	 B+QZlE03IQwSCr/BTpLlUzXl1zMt2ntYOpmsgTfgjRV9ZIMuu1167vfRKRBgui44x8
	 3eUWl9Wt0m80czzbuPdb2wB5ssT5ZSwIh9fjAClNwYw52IquySn2io8fQqPYG6Dvzj
	 3uo6T0LLAkRBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A94D2C531F9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 07:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178496403368.4364.1318972713878545590.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 07d156166492b8275a127047b5c602810ca37abd0638b05bc0765110b0d72a76
Date: Sat, 25 Jul 2026 07:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784964033
