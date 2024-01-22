Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B7D83D0A4
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 12:38:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705927097; cv=none; b=sjb0Ut/EtP9dvIkfnJQhhGILTZEqjgJ2x7YOfE0BLohBDnRlEB0C8BLkA9WVQbDfCUlxJ3D/X5ZfCDZgGn2odBA+Ss+Il1LoEZNnOFgcE3jbMjAPVxmzBUG/dImHm4uKWEXB+5zBzi4+D7X+nF2apvWm7OsabwxyzpQfrBcZkvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705927097; c=relaxed/simple;
	bh=ZrNdcC5iiY2zWL46hAUNSSPlXqNUdjDZVpVItFvYb+A=;
	h=To:Subject:From:Message-Id:Date; b=RJ2abDrr0Sz7ovoADvjt9xbHABRiySKOC/VDylSoCoRahNDHvlFBNRhs31OMOtuHhpXSF3H0oSvs+dsGx6gdPrrSd0gFF5O6I1bxBlCDDBZx/9ls6Dp6Hpmb5xqW/oNRli20Q6V8zJZceU1MgIwWSuYGaVFX+5AWi/mAMtUknHk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QDBulWvo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QDBulWvo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 869DDC433C7
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 12:38:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705927096;
	bh=ZrNdcC5iiY2zWL46hAUNSSPlXqNUdjDZVpVItFvYb+A=;
	h=To:Subject:From:Date:From;
	b=QDBulWvo6zmMAiFRiFO/HM6n9HwptUSMKOERSgOEWvT2Z4sSaBnLs1KbbWlHmQAX+
	 aH8FkHyG456+z/lgT1qJZf5kbfmjKKM3yH5oJ3u/yDPyYPLo3xDQxSpn8czD5d1QcP
	 i7gv4EMQMqiOezqGcQle5JET7Swzy9COhRolhFZbldG16Cm6IejPfMiUohLVvOKuaH
	 ZiVMuOzY0FSwB4PlJED5elMKxCREQVqAgW3GFA9YuiS1rhA8eXd91OIA9tz+nqtX6c
	 v96tX2yHzb5Lly/4AufNixUDcvPVUfuHEYlSS/A3Ft3E36MA1Q9RB5H8OV0NXdbOxl
	 mqs5kV7WpKR9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 64FB5C47DAF
	for <ddprobe@lists.linux.dev>; Mon, 22 Jan 2024 12:38:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170592709640.30782.9577722286866444780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bb4e3ed1f58cb2b7e4e7c1719379aa7221f2c5dcb26659a16a43a5a45af52202
Date: Mon, 22 Jan 2024 12:38:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705927096
