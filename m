Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88A07377EDF
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786170634; cv=none; b=QJ9PIgntrYrT/fEIGO7k40pk9lhtBlXwCjrojuPcTz2ZIkB9JnNCCxCV9LRnsoOdl1XJk/zFtw0P0VFlEvZ9YWTB7n197dVTUTNDx0MSbiHMoKvXEhD6UDsYOUdTB+hVcB1659Lef2AmZfmOKjLSvW3oteP+t4Mx+ycKoC7IM1A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786170634; c=relaxed/simple;
	bh=PFmBqjbe1u0x3dnFIToPvuQPOLp/j7pthh+BlM3Ac0U=;
	h=To:Subject:From:Message-Id:Date; b=YZE6GCMoM6gP+19j/rvRDITl7cLryaTuMnsgceTJupzfNQLytW5XYxNftw//IL31pglV+swYYPGvLJ/2yeo4uQPnRN9/EUU2M2kIetUayQHM0LZTmRg/gaiu5gQDNLx2gEdapZbrfChzQFB4H4xrl+51jW2qC7nWQLE6n2ZDz5A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j4wARuT1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j4wARuT1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F39D9C2BCC7
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786170634;
	bh=PFmBqjbe1u0x3dnFIToPvuQPOLp/j7pthh+BlM3Ac0U=;
	h=To:Subject:From:Date:From;
	b=j4wARuT1c13isvsn4JIQBwwxCCUD0aC65TQmCKAtZ72mcOcvejtdqJNI3orYfw9Rm
	 JJouSCqBlEZhxUE+eoZIysh+LFrHidGuAxoS8wjaRhOhap70/eGT2/zwjJueWxrTd7
	 QqTfaa1FRmeEqnK8JFBf0k2N9BbfmbF+fcA8ausUxDEcxggZX4TY9LIjaGvl9v0RTQ
	 U9PeplmKxbqQQb/ww/oDFGvJH5l/q5bQT3cL7a3JnXB4K1X2wmJa73yoURJfgDlY65
	 gbVq0+9qp4sFMLRJz9Zq8WKcJYMlVOBxa13fQaYW/WWJac5rYsFGcQjgJY2SZuCs6Q
	 YZIvygQdqK9UA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6924C55174
	for <ddprobe@lists.linux.dev>; Sat,  8 Aug 2026 06:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178617063375.1521.2505911770384659357.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0cee0c87120eeb3ccd87b590964f823d7ea74a4fab5f11605a3eacb11e49caa9
Date: Sat, 08 Aug 2026 06:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786170633
