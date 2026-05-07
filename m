Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2BED726159E
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778132254; cv=none; b=b8U9APA+fAJsMsmLDlK6hIF+ayFlSAv19RXnsnh1mEXQafQD1jAY2XXQCE1k4buXM8ICKkDgslYKP8uOVXv6bdAnMqqqZhfio8yuZeBgBu4Z6Hg+84AnP2PwQultIISPn03m2LAQ0MA8FcyrlB9nk50Ye3PsU0j72e29IN27xPY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778132254; c=relaxed/simple;
	bh=H7MHR9exetTCiqAparAb0rMs1hU4kYeikIjAnM1BbEY=;
	h=To:Subject:From:Message-Id:Date; b=iJooQqpQktQGLHAzUqQ0bdMppt1VBgpYYsOtSYAmUng5As/Xb1e7+VWhY5uHt1PVW3F6heSFd8vpBxOXKZJDYNy/b+alCuG4e/NKyhXY3vWoEgLRoyMG6RmCpfsPwlTLcx5R5N0WKPJnKrMuFB1+9bZSvRmEyRCpn/UlO1sdgz4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=luWukKhV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="luWukKhV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9374C2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778132253;
	bh=H7MHR9exetTCiqAparAb0rMs1hU4kYeikIjAnM1BbEY=;
	h=To:Subject:From:Date:From;
	b=luWukKhVVwSlcs+3qFuk9MCGYaMKm2TebaitIi+OfOFrXRmID/1xstLdlcvemlDvc
	 KmJj7OPsbHkeYZSfOxh1MAr64BO2dza2H1jW2B+38fRMio5ODbz4B6JWW5/7rOUeqr
	 LmI3+pEHYf8UexM9eOrB4BF2oj15O6byvGKn80mR6OjI6CUelh7C1OVBx4p4Ly0l5B
	 cFxUnCqfsIegEG4MvPsUX3IqmhDufaGcavqAYHqeD6ucQ7x7WIA/oAQsXHWKvsbO1/
	 pG//eOndWygy6GeKoZ+j9vyuzCt/Re/DrvgvWdTu4g2ydbMMmidlTB7TigouINcl16
	 wwdzJHlbqqCcQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB665CD3427
	for <ddprobe@lists.linux.dev>; Thu,  7 May 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177813225369.5355.13134454103732758837.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e3a97b75f4944b9ddb05480c6013f13af8f90ab5e9c8c5af769777a1af3fbb64
Date: Thu, 07 May 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778132253
