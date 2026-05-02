Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 45867274B2A
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777718254; cv=none; b=tbzIyFVtIx0wfQDOlHzaQYYJcnN5Lczexj0tnQ5KAK1bMlV+WVp4yxTmY1OQiO6WVC/1V9fmQ19xkUQn8GME/PEEir/iSviuiJfAN4CpZxaqI9UyGCZSkeLUlb/avkGf8Lz5m1bfY6LT/RR0Dudjqr8MnKAmsOiYi79xctnShuY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777718254; c=relaxed/simple;
	bh=cmRlKp80os2/sAibvv8Dhjwl0zsSySCFxBbWNmRVb2E=;
	h=To:Subject:From:Message-Id:Date; b=jlkEdJ7sgOVnu7xvPjkwUSySHqHeIdy9A+fBoG5Y6VMM9I9TqXabgITGlLrctAHoZRMLAdNdewB+c7j++9M9/0bBLlRib/tKXeHhm4UcHXSUXQSEcRr9SaMwzMJs8yGGtYYqj33Km3NKIlV0ZZx+/LW1Ooxp0gDLaGbYxuONOlE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ObJXRECy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ObJXRECy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0991C19425
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777718253;
	bh=cmRlKp80os2/sAibvv8Dhjwl0zsSySCFxBbWNmRVb2E=;
	h=To:Subject:From:Date:From;
	b=ObJXRECyJq3uwTT7dH4Hw2iTHPx0SdjL/+ZB4ej7n7fiFWkg2kFrNmNZ6p9rz2DY+
	 M8QBlq1d/hw9jyEGIpOr5nOeBxHYReZUFLBTxStLJk1Zx7BTtXCRVDLGLSxtaVFA80
	 YM6LtbMxmJms1sQnBDjRrUAOTgn0eDQe8dp5/udS+ICiwJwXzcSIqz/eJmCeM4/S0O
	 iKPWDoi0Ewtg0r+XW0ZBk19uq+htJMWX8qhQWJITtsft75lbFjBdayoKZPyO32LfMj
	 GJ6s8xIZltZTUbe86fZXbBbObce3YyaUgTDdGGgxBmE9rGakR/sdORkUjipdq6ziB9
	 QcZTdjhN+uH/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B003FCD13DA
	for <ddprobe@lists.linux.dev>; Sat,  2 May 2026 10:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177771825368.7939.11326119724004122594.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3370f2dbf43c8813aa67df62a6c09fee6156bd0cd7d1453b0e7de2f329f3f235
Date: Sat, 02 May 2026 10:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777718253
