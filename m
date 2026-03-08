Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 219C9351C12
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773003294; cv=none; b=omJYISSHjIKAt+iWuPS9Swfnyb1Z/M+vto6QsHHksaL9QlRRRjFLSuI8PSbX88uUsAUjKG8ORHe28KiSJSD5drtdsFZQoA6HcPsFJe4h/nzuVPHine1tRoQB3+GXBJ6+KQIiiQF5OLolMPYaXHbB3ELF5Byg4C2NtYnIrV4XUbE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773003294; c=relaxed/simple;
	bh=AOo13y7KJ1S0yo0FYGgLUCtpOjgp0AK4AImzLfjC3pg=;
	h=To:Subject:From:Message-Id:Date; b=IBW8vVeKU7cSrMCfLzRjaWOt+OF0TmsyI7FT9KasXoiKjJq/VrjdDuqq3l4xYueKzcLA8EWJ1ti0DF2IOAyR3xk3+RVzAJhkmI5inTvLVoeGLviyMLuKyu6NV+R//n8E2Cn9icLj+xbXqX2CEFtp9fgJ5XBrDz6TteERoHmd/KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FGFxCI3p; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FGFxCI3p"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B26E2C2BC86
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773003293;
	bh=AOo13y7KJ1S0yo0FYGgLUCtpOjgp0AK4AImzLfjC3pg=;
	h=To:Subject:From:Date:From;
	b=FGFxCI3p1JvZRP/2TK4qbXdj0uDsA5epn1ompeWu0FncAGzJSIfE/RFplkZg8BwNy
	 7zOhYr+TontMzb6rRjFGL0qd6xI1+KZMpCUB9thU+CmMpwcWUsOothn+LiakxLR581
	 Dbh1WjaUDHL5ThIIOQLK0nJWp6INS8AzkAMZx0OwCDj4jpbBnEXxmXMC/UgUldGPuZ
	 ZDKOono+mPh6TIJeaWPslMhwGEdVilhDoosdUsiJxgqV8P00pZ9ftOq1elahqUk9qx
	 7OxIQC55hZbQLOY0OWkZEQ0z2V3oQ5qIA+8ubiAaMU7MdAEGi4+XzqYuI05CMY/nhI
	 s+zyKhEKN9iMw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CB7EEA8545
	for <ddprobe@lists.linux.dev>; Sun,  8 Mar 2026 20:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177300329363.1711.17778132675486743264.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8125a82f756b47113134b7500312d4b263c9312199fb406908d6707279ee874
Date: Sun, 08 Mar 2026 20:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773003293
