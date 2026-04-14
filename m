Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31100199E89
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776199054; cv=none; b=ATD7ArGUHryDBLTuzPlnrkqxAkQ1Ipc7IdJr3qtm2FuSAZVPUUq8NCuJWHKsUS5+N8cu0xphRnj4hWc3ZTKiLvLUf8RM/3jfEaecbW5LsFCOcon8eMCVXIKEnaG/2Or8uHSF0BURoHbqMXauUP4N8i6ODhUIK+IVKR2kXQ0boLY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776199054; c=relaxed/simple;
	bh=Szkg1zVQ+Omo4ORgYNSRS9L9sPPUTGPXdTaTmErRles=;
	h=To:Subject:From:Message-Id:Date; b=lGGW6bTG5szg0QKiYBc86ojfMpZbgQQJVbCi7InzL8TViFaie1YF1EUDW6/liAM3t7mU8giQ7tf38EASZbyMxTMnFt0Fm2e8563FuuYSL4otVATDpSJVGdC2YjgZw+PEIbPGRAEpXuaIjkpXpJRoUMVIoQppiAM8gEI3U1OH9aU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Oo+8VIxE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Oo+8VIxE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5F34C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776199053;
	bh=Szkg1zVQ+Omo4ORgYNSRS9L9sPPUTGPXdTaTmErRles=;
	h=To:Subject:From:Date:From;
	b=Oo+8VIxEUr2QlaT/6Gs2sdYjueu8SHnRzhEzNIO5iqkoSKF0W7pdlwy2dhOu07ofl
	 WsCYe8T4i/GOOKbrXwPGqPpxoullwF/lekROGA8IX20zjSt6qfPsmMBBjQJq2kqtHv
	 w/vIpQnCGBFeFF4daBXhgqaHfW75TfD6lU7srcae5jHivhh1ohLwMB/N00ervOu4yf
	 NNzIszQVu4sTx/IS9DVMmfgNezTliLLTvCIl8FDfk/ExorYUAmJBIN+YZbLRipsIRX
	 qhVLcIOwY7r40MT5El/y8hAKF8rUzomM8zfZdqX6tTTFfQ/VS/xiqsADSjnRt9S5py
	 z/2RlcKgiSaog==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2220F9D0F2
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 20:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177619905369.5474.11725071102296336815.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 438d4fdcea615281822af22b81b4d41e7d62928b614b173b0e60c9106996986e
Date: Tue, 14 Apr 2026 20:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776199053
