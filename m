Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2215F2BDC05
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:43:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780094614; cv=none; b=F4M/53833Wxm1vADmHigptVT/5Q4lHR4MwVCy76XylvG2SB/sW737cuG3dZvDbm+7l62DJXVdZKH463yeEBHjfxbeKejAA+EmYgCcHcDy+QIYVP8z7d1vDSfWBOlgfIcNEGKj1UsSGsYJS7iLa2t40R+YOm1RSw3Pbvq5T2TAVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780094614; c=relaxed/simple;
	bh=KckeuUsVAU704vVB6g8Qg/fX3KI+6v9F996zePhReWo=;
	h=To:Subject:From:Message-Id:Date; b=ASQrA5pODFVYoSe/M5RYm/nviHC3pFS5WWeJKWEGcI/2rA33nYcTgYQxA6Xh0bWlrboxpFAFCvQqzTXD57DrqRMgUw440kuVPUwwDujO3s7i/G3h8aS8NEgzt1FLNPMZwEeV4o7LaOyKCqwZEDt1lMhjrvNE5RN97l7aCPPbioE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H83Vn8XF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H83Vn8XF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1255C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:43:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780094613;
	bh=KckeuUsVAU704vVB6g8Qg/fX3KI+6v9F996zePhReWo=;
	h=To:Subject:From:Date:From;
	b=H83Vn8XFu8aYumYYgG8cClyxay0TNudzM11vck6cefBo+7gJsz/AwU0tVnLUQ3sdl
	 QRGi0GtOLrMzH5c2keHYsmilG53hggVTALpFMrhTAzVv3AptfGWWd38x/ekkLIMx+B
	 rRi+YpLo0JGxM28P0WpVopObDQNRtj/xha7/m9U7+e/CDk8pyBPB1j0OSIV0IFzlbS
	 Q2NcC9Ed7UpsFWY4E7/6TC+8+8DdHs3Mx522RtbcGYLo5irzdkEO5xadYVX1oJY7tl
	 JZUVjDyjlbqszVokmNkAbFx5hTaQB3ZwO4+iDg+sNmr74KzF/HAkSsnD/t1a2CYj8d
	 RarXaxP6Q0vjg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8A67CD4F54
	for <ddprobe@lists.linux.dev>; Fri, 29 May 2026 22:43:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178009461368.16807.12537401677573734477.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3be8ba9b45c5bd6a17f33e4874f0b3c8b1472d1f4aec43b5da053f96d6d3aa4
Date: Fri, 29 May 2026 22:43:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780094613
