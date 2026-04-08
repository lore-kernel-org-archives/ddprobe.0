Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A11FDDCD
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775609134; cv=none; b=j+TZ19Hz2U/zSml05p0+1ZHstzfu+5Tk9wBAYX07IyRK+7a4U+EDenPghy+h0D2TbJEve5VuoFjP8LF/J3e7eAWSET+KxSS9aLbjEhkDz6mnRYT3OEFLdiEMGpBnOnlaM7+HzaoTAfYJhOJnwoXRlT0xczkknfMl+HyxD9zXIr4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775609134; c=relaxed/simple;
	bh=DGuxZi20uO2A+8pT8bbUCTdb1UyzXm/mrAmVnD55QXU=;
	h=To:Subject:From:Message-Id:Date; b=V8suFRuBaaFufDSxiHbdkP2W6I0zQ6SS0UzZj94T5xutJD+i4eWJUu1t3YgevnkXH9/fWscHHDCtkhp1uauzD5/LB7KTmD+On6e8CLE5HDBIrw1yfJ1HnW2E7ei5t+S1IldkxaUiVCVD5uMqJLunfhrZfYsJvxBhiUdezr0OruE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=s+Dlynjh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="s+Dlynjh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9460C116C6
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775609133;
	bh=DGuxZi20uO2A+8pT8bbUCTdb1UyzXm/mrAmVnD55QXU=;
	h=To:Subject:From:Date:From;
	b=s+DlynjhasbWbbSFnCuF9WpBwdhFXkT6clYpYr9zf9ZBo21S5qPuv30eTA7e8GaJS
	 8ZE0ooHFPcfgdU4zTleKu+wI4PCTFaTJVTCbI2AQyCHEdHYi7kwl+0o+45s8neKtVo
	 8qtRFLwikz/Ga8m5Hb57AvSay8t+BasfS5hAIBLxCKJwZ4z7Ccr9BJv/QkvHOyFyS7
	 Z0bh+1m6LqOMol7tcu1ZBtMv4DItUpof15RVDO05R+qt8d7jB9cJxMCoDOiJZvtCyr
	 jUyusncCtB9Y8/pnKLNvVI1whgBf49Xi8hcqsM++7arvbVs7qMEf/UxHETPB48DdvL
	 szwQEkiTL22jg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6B00105D98F
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 00:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177560913370.27877.14476980382214637953.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d6e51e5b1c2ec6269c6f9eb63fc8db9c6a955e5e3947d8e2f316941abc49129a
Date: Wed, 08 Apr 2026 00:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775609133
