Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E91830EF7D
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771917894; cv=none; b=J/VOfS75r9i6470wqqox0w6DfwqV1wMY79hjQHz+u5OtLhB8YEv5j0FcDJiEhFgPn/Vcw7o5i3p5iHgdgHoQuXEgxmijyweuRePVX/Xlj+uvCzFmBJL3PvxSzCtpSzaptA6IQG4Ml/aXYk+tmuRdTbsdLefQPnVQYufQCOGOuwg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771917894; c=relaxed/simple;
	bh=sabVUUZ5P0KvpJo9aYijnepgfEpHBKfWdPUywmgDVaY=;
	h=To:Subject:From:Message-Id:Date; b=edhSgPupjC/WLIju7iMDM1o0AytWu+I/mz2yYAKWYhA4U6UMCf16pX46CMpH/Z7/r/D9vVjZkqd7wx7es7EmpAbh+FzZ2HrVvtWwSX0oCxlfegZGYtNbp6NCKp8FgiXYHUXz9r8CbXolOuBjDG0ZC6vLT6M+mUbRM/uU37/PFj4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6bbJkmb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6bbJkmb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A475EC116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771917893;
	bh=sabVUUZ5P0KvpJo9aYijnepgfEpHBKfWdPUywmgDVaY=;
	h=To:Subject:From:Date:From;
	b=F6bbJkmbuO4vbMJ4qnhA1mqs+KEHWs7U0AtqWHyts8QC7XXt4vfQdnEadLeFYVzfN
	 BrZqa85B43ZHd4ulLaunFJlKZYjr+UWVd0NRRi/Qlt58gCkprBfxDf6E/CYdNkOeRz
	 pD8NKA1nT+2M6PCeluPJQUiHmqfRvF/83hdEX05Wd5f1+AVS2ImlNTBxmnspsfwJVA
	 m1iYka0rzhu0kTuWtno6w8otdiYXoEzipvW9Fp7glrYBr7FK+YEK81Ef7FUIkIa2Tv
	 lSPEs77w4AVvyMeITjHACC7t6JwDjiuHoFPT9eNLH1RvVRC0GUQSSEb/bTZ8zPmCPi
	 DfhChPk20I8mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91FEFEFB7F9
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 07:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177191789358.2472.3799548052513151101.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3abc1973858f44b401b44314af371468a2cb7dfa8c6bb9329c9c6d32bd70ce68
Date: Tue, 24 Feb 2026 07:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771917893
