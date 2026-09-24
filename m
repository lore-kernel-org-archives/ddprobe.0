Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 71D4D359A70
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790224234; cv=none; b=Rqobx/T+eg/qwuMs+ns90EmlW3vAkFKbB6MGfED511C1AUM8FbOoSs/sOc+WuwQzrBKFsWNearp7/EcSy9FXHSeNvCXw3Dcu7vT4n43SHxrnZqPn74CvhIGe/sBRMrGJ2Y2B8+mw3v4QOzVJE8ucKmB3cAOzkTeoPaHXgAqMHDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790224234; c=relaxed/simple;
	bh=+nlOcFgYqmHdgJNE+GNo86HtpjHyneoJ1YpJEbS/tbU=;
	h=To:Subject:From:Message-Id:Date; b=WCIa/udeUsyllrSCz5Mifxz8MxJK2PPge4nCxTGziaQvQ//cApS3mZ9PkwWkmKNJ1WVqt/WW2JH28eyuiTj11SE7aes8eZbowzQ3d+HZLuuMRAa52K959rnuL6yndBCcUpaTzX7oCCViRtxlEZUGC7UKKixHdY1O4Yo6LHXFwQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hj8/yrn8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hj8/yrn8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E7E75C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790224233;
	bh=+nlOcFgYqmHdgJNE+GNo86HtpjHyneoJ1YpJEbS/tbU=;
	h=To:Subject:From:Date:From;
	b=hj8/yrn85HBAj1AOXykSgOP7AspU0CuHg+WxsroFKWU/4MNCYhsLvNyCN5JKd0JPo
	 yFlNU8rewc9cIyI1qN0aLRnnpwFAMsrcrur3QOVJyQcwgWrW1czp68KWRbwrN7WaQA
	 YdaroWofWz2poshMS9oKlkHWtymhpoFs/fls2XoM+PGH0FOCMNzP1NOqte5SKcWNQz
	 VeJz5lKc9xCkw/80jyrDS+HBhY1HtLEv/drVHiz93eIXhN7eBAXLrK2t4EHj/bu8C6
	 FwVPPZdDvBI/WETFC+pRgKI5CpsUAfMMSk4d3EobeSGb1z0QSQ99hhTtiCnkER5C+U
	 bBBXeiQWFXMDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C015BC98304
	for <ddprobe@lists.linux.dev>; Thu, 24 Sep 2026 04:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179022423374.26008.4042256456199305908.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 460833245f56dd6a10baeed84934fc152ea4eb0c8114371bdc2ef9f0b5449f2a
Date: Thu, 24 Sep 2026 04:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790224233
