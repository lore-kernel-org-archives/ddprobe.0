Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7922131714A
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792071034; cv=none; b=fJ/QR3PL/hvXzMlj/xufKXX3B9xcomhpcMbUUzkMgN78kENobFUsJZ/v9Q0sFDfijDS8AXgR5gu7Pevo/HRs9FdbNBUHBGKE2W7JB8CVPxMcVE1BK6E2b0k2l+dDiawP+Tf10+8tWuLWgDgdRZPn7eWqgdM6KITXtcat865FriI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792071034; c=relaxed/simple;
	bh=5p1YAHb57VAkjCBB1SIw43wDCP2oInnDmSqlK0KfOnk=;
	h=To:Subject:From:Message-Id:Date; b=OnpASdhKjIAfDnsvA1gLz4cps2PYP/ao3NcPqoimk+33rTPyvYRswFRTdkmOwJiGtseH++wPN9p8dcFTpNlBj0PVdeUQjjagoAx7F6oKr/vKWqSviqMle5IM/KIoPBKtTrFf2LJtZZ2jbh3s2QObPNckANnWEovD3BjK9M9sJPk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sCIdKjkL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sCIdKjkL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE7AAC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792071033;
	bh=5p1YAHb57VAkjCBB1SIw43wDCP2oInnDmSqlK0KfOnk=;
	h=To:Subject:From:Date:From;
	b=sCIdKjkLHKR1EGtE6Pv65U7d17KTXzU0gFqeZUzKdvnov/Pue3ZW2IwxCrihf3V2Y
	 prpsRfu73XIpUkDaW4S43xwFB1p2yHDFZTVwmMkO6zJZPS6WlxrjweQGFw+yZ9OBGG
	 NlnVpM4F88C+ou7muLhvafIE22Q/T3xwmr6Wsab0CrhyodE0cQT91aDnlxVJBCCjQA
	 mEd1Xm01E687bgvKAd0jV7pqd4bL7pThWlrEtUyOo5kG341fjc8iqS+N9Xzlt8oNFw
	 9M5bkRdYwwXmPU5fTuo42SojzW2HfaBetKW6dCpYytfqTpYPW1XnUJYRMXs6+p3rQF
	 EmxP8J8BDH6WA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB163CC6B34
	for <ddprobe@lists.linux.dev>; Thu, 15 Oct 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179207103368.13772.17284095325061204797.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d381e27d72538f33a4c6a138f14fd8ea8b8aa06b11e922bfb1103b74620a6784
Date: Thu, 15 Oct 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792071033
