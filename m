Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 585733D5244
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792296634; cv=none; b=tZhGeDKui2ba2+puHaON45E2sncJrmLLaKlsKUtfVPmJP7OYmSrjRS3vVEuuGT1+HwA4Y/HSU/GHTeReb7P5tQ9uoVDB9E499OcpH3DuTJhBO/Q6jtVubU2inamgzQ6/maSaHxK4gJLSJIlQePeEn9fEngQC38AZWUUFRwXK9Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792296634; c=relaxed/simple;
	bh=gl68PvYXN6EWc7ydEs0dSIl7Ra+a32/7Q9+HD5C0kf4=;
	h=To:Subject:From:Message-Id:Date; b=tJJLD0naMtspa4gjndwjP6mAayuw+1foimGIDoe/Xw6kcExGV1+e7eexwxb1ZoPv2kaSq9kRbw0lryn2x97daTYgIfe9KHubTQme8GFRafy6xhpPwUYPzn54JPViE1+7/2m+tgUoQTRCfXzBlJBRrp1iPG252sm3v1fF6JNh8CM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=o+Adiehm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="o+Adiehm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D956CC2BCFC
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792296633;
	bh=gl68PvYXN6EWc7ydEs0dSIl7Ra+a32/7Q9+HD5C0kf4=;
	h=To:Subject:From:Date:From;
	b=o+Adiehma2QcTC1croNvFj64F6jZjKxN6oaXoBMbmuhI4ix197rzFWdvX06bGaY33
	 xkaUMIz3uODil2efwsdTktbCoFbjiMrOY58WyeinYW8suuQ024txXld22DPVuy7ThJ
	 6HDWLYqreeRMqhvTdR6DDN3R78IyEvZ8WpjZw+CTOPoE9pGLMOihS4Q7VmEQpReHtB
	 6SC/2jazfo9N2ov8GKUY3WSoa3p7BNLvTpR8phacHTPWsEdFQSOzZMtbfOvwXrAeET
	 IVYkF5zZHeOLe9mVNUeEpNHlg00mLWhJbVhgemF2VD8qcTVm3O+qwJMKz5VvyFrpM5
	 UZ7b0a9H2B+0A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B47D3CCF2C9
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 04:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179229663372.10659.5122499245702197387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f0bf370a3890ad7328fae100ce272606fd54f45635b54a4d6e6a8b566714d05d
Date: Sun, 18 Oct 2026 04:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792296633
