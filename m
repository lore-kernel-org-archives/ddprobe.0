Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 470F61D5ADE
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:24:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780957474; cv=none; b=gGY1rwuY66+jP2f8cG8HtAKXKfxU03oPxrbxGpqxzUItuF5z7ce+x5gnwotQVA9jQpryVSuHTQovzLs7Dbh8TF/3nwebq+mbN0ISf0G+AQ2V+xxoifkWtxCA7BF/DM/Em84Lyv876wOLxE90wuGbkJ8HZHlzziyj0VPCVOfo34M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780957474; c=relaxed/simple;
	bh=0u4NtEPBGLj649lxfFKS+OwwAZyP4HoiqMEGzF42aeE=;
	h=To:Subject:From:Message-Id:Date; b=GAkZOUcUIJ5dHp/888MkLakOrktiTDWSWeQOKc6V1Ii/KUL9Qa73JJr/Bd9TCOGil62rLEO/Q3VvRHz9tB74QZ3gT5IVIRhxilyTkCo9CNH3t2GqpE0zN2+W1V3CWW0Ezu0P5HA/JgoIdcGc8KDZpzqZ668kdKhwS7bf/8CKSYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Vr33gVLC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Vr33gVLC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBAE4C2BCB0
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:24:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780957473;
	bh=0u4NtEPBGLj649lxfFKS+OwwAZyP4HoiqMEGzF42aeE=;
	h=To:Subject:From:Date:From;
	b=Vr33gVLCsgynrAs6nMD/blutEju/0NqNivz865rfld6XLd/rKczplw45mzfLBg+2h
	 iP5cvZFLgxEfm3PzifV6WjmLE0NnKnZrlm1YNkafYMqgmFtykmA8uke5HVJ5fy0FLi
	 Y0UNSM6tUCF6k32wbgiibQH+Ql3uA+26/dZxu3xG70T7HSPOBDpcBBTCvQnB1/3XJD
	 oZtcMtZ+21v2327OagPgCWy/X1Daan07wj4B8tZaCgZln4elYXDpdeMPzNV/9S6OR+
	 mU+aM5hYfDG6cyyM7xPL7EXHgmWGG1CUaRoHCSjKgK4db9wa4ML1P26qZDnTZYzGYs
	 7jUPiTv5+OUeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BCAE8CD6E79
	for <ddprobe@lists.linux.dev>; Mon,  8 Jun 2026 22:24:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178095747375.662.13152615034910938408.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c89d45416fcbf7b12e499c230ed16e487aefef899ea9e98d5b4dd27db2d626
Date: Mon, 08 Jun 2026 22:24:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780957473
