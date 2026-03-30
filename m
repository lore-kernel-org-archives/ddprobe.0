Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297F3242D84
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:44:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774903494; cv=none; b=IP/8SyDGzqdHcDr9hfGfPih36in7tQeXnGubf4ndf4xGMXAshHMa9wMf/N8/l0rrSVsdAd+ypMRr7j0RMUb5oEeZjXjHKcbamqz36EK20aN3awWrkD7eG45UEabqrLi5UL6kMa9ULZMm8Rao3jrcVBMexVTSz1367nt9cfRjHaQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774903494; c=relaxed/simple;
	bh=ATrvlvtcZeqjQ7gee93McPsrs0xy+XSECNboCJQb23g=;
	h=To:Subject:From:Message-Id:Date; b=Hj1Wa+LDs3RVVbkFVNjvQhTW793IPEzNjy7TpHvnRJGRH2Sz8oe55s3Z2s/Wwn+bI3cYWDF9BTr7lHhsLZYOVwVOgOLrJcI4T/MC4n0TH9EpqXAjRCQlfvjm9YUjAl03nQjJcRGpcg1fyccnPsn3Sa/TRIP7V2CZYdm51IVrBXQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CYdQppgM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CYdQppgM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4612C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:44:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774903493;
	bh=ATrvlvtcZeqjQ7gee93McPsrs0xy+XSECNboCJQb23g=;
	h=To:Subject:From:Date:From;
	b=CYdQppgMXjD1gxKqXDe57Q3wbBHTxaXJWZUZx1/GYtvdlOi5MlRPcHIeAf+ZX2Ngu
	 pOdo63KU8i61yLcxEXwRUYcLwaOboZOFaK/wM1xK5TYGGz4UZ5lY/tUJcV1EbYN+tR
	 qbTo5nWIMQUhj1T0b6lL/SbNs3XmKAHikgwcLilbYIPFY6OIu4mkdanlqG6u+Foz27
	 gDZnDzzdtmDSiiMW0NP7CS3K7zf4th74EQLimnwXFSJ8dvPtFodG1656WewPGMQzTH
	 YZ559KUrGJr9y/3hRGgj1KAjAFRmJfm9OaCJD46DRoDsHYTygLqVuPik9h11lq0+c+
	 bTxQkArV0MiSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 913221061B1E
	for <ddprobe@lists.linux.dev>; Mon, 30 Mar 2026 20:44:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177490349358.16548.7809177181886844497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7bf7d18ee7bda64dde5764a780daae45cd9244084c9b432cea6d39f2a8906f83
Date: Mon, 30 Mar 2026 20:44:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774903493
