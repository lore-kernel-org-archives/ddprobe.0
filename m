Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1151437999D
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769670834; cv=none; b=ruWCea2E93KqBzqLc+cdlaIMURlCACuxiNV+Kw/8kuOYtQEUpuEkq26HjdrhIyk/ni6SZirxbJP8kD/G7R62v37kuIneDqlzxhrNkLi/iM4ysos+y4e1pYz7WlrMFBHbBjSQ+flcV5WDeu9IhZkusKmMjS8Zqbmc23GrQQ73n8s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769670834; c=relaxed/simple;
	bh=DUm5es1HQuUKc3wnUS0LRLxMzSzmlWjb2HztmBPnT+4=;
	h=To:Subject:From:Message-Id:Date; b=qAdH41S1yaogSJXdAbq1kOJeocCyiQ/ke5hMy3Mpuxf22+uB42xl/8LPzi/KT6h5TBDekAvn3qTzr33HcEH9FeffJYEzp8SbKpKhwdt6Hx6pgnnS5Et7UzCQrE10UsdZkzv2aFt4ypabZIb60WoevKP27uHFWVwj4Fy7zUWqkIw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jzPS8wM+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jzPS8wM+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1AB6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769670833;
	bh=DUm5es1HQuUKc3wnUS0LRLxMzSzmlWjb2HztmBPnT+4=;
	h=To:Subject:From:Date:From;
	b=jzPS8wM+X6Z8YDhX5IxoeyL4pkh8ma0qd9vfXoB7xTiGcewQvY75WLhu+dcOyhDLe
	 kWNoKQ5KdZvcYmvwo7089GB1hBIe4U/6lteZXnFNN1SfgNaSb4q3OdWk9GVV+yH4YT
	 wvM0C1nCCPPNgx5gkDxLy+upe5iJi8wt9Wpq9dZPBxt5/xgCgufFPt2CVp2/A1WpBr
	 83DuyGhG699/4CZAg+dFmNWYVmDWBLspfAndu9wb9KrAMGaZRCrnShpFnVP/rp1zxG
	 bFOz6do+xPiDqVC2locHhPtx1eUcXfYSZTbyRdPWkwpqFORa+cOrG/Mu3tvP3frhi+
	 eHPHc/BWAdAgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90CE5D358D2
	for <ddprobe@lists.linux.dev>; Thu, 29 Jan 2026 07:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176967083358.2287.17575530533346700019.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ccd469191c78bead1f1997bb56692e9b914e3c1b1bbd03b7351955f02169d55
Date: Thu, 29 Jan 2026 07:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769670833
