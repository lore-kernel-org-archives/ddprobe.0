Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DAE04330B39
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767045833; cv=none; b=f/+7L9Y7J1oajbudcJ3MYqzBd/XDc+dyKKiGZ/DOF56eSd9VaEDPZ7uk5ebMBYLbern+sgEnOd6K+RvCJSfDwXlqy9QYd5Vf+pOyq1XXunM1jqjLASt+FtF5tzS44BtKXeSEqCT63A3TiS0YtRfxh2PXiSsIlWXhbb7Vp5tGvck=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767045833; c=relaxed/simple;
	bh=ZJG/1VlLdsPl9sZvtHlGz4LRdoWYGJkSI2Qy8oF+XfA=;
	h=To:Subject:From:Message-Id:Date; b=dKzN3CMDatqD/37jByogKR21A3xQbGOhwKMgD4YM0cJP0djW8o7QzMO4ipc0rtKet5q6XqI5LFDyf/jhatMRrEW0/9dBObwYUvkvmFtOFJ+3j4KvVeLg2u4bUFi5u3HapZ5sY10Gb/Bm+ff5v2aDz2RV0A6hsukSktq88sshCXs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jPRQZcPP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jPRQZcPP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3035C4CEF7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767045833;
	bh=ZJG/1VlLdsPl9sZvtHlGz4LRdoWYGJkSI2Qy8oF+XfA=;
	h=To:Subject:From:Date:From;
	b=jPRQZcPPicO7KeqdUWyKiUL9eypIZMU3YOMU24uiUBwnYRikzXhHMgOTATC67u1J9
	 DM/YsIbdLxGHF73slDQYHq4eR1Zp9FYp5iT4uIQtFeWjl8UGL47ABbHCbOvit32iZo
	 MzKo0eeFEfLqhY5d12S0t/GcLZRSGfkpEWI48shbLDew+YVCz/9QZYIP0p1WG2dIoq
	 3Tec8yQD5Y8b2TLhKcVMqV48CmRL95l6AG9sKLfrepbgjuzRaEtPMgvDbgLQ81aK0w
	 txajEWFNRkWYNWBDyB6F0G3+4jBY5STEVvP4QB+zsaSq6Uulu9RY1xT3svU+2Lr0TT
	 DS0ZgWlFCZwvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95241E92FD7
	for <ddprobe@lists.linux.dev>; Mon, 29 Dec 2025 22:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176704583357.28525.15312041118502830109.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0f40ebc2ebe371097373b99ed385cbcd82ed231aebe6919c71d6017134c4eacc
Date: Mon, 29 Dec 2025 22:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767045833
