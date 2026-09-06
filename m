Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C01053403FF
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788668434; cv=none; b=dl7kuO/WsFsUp4k4Su0QfSL1p+TkYgH6jVk30gTMcE5y2wa79uSqjhPaO9YVuEwV67Pa9EjanH3+K9cXWqtmh2J72z2nrm8lHbT0zmLFOEu9brZ4soCVa9n9WxQGbhVCibeh9ZgcayhH6AxVDUislWrceJ6Fk8nFMAkhJShWIKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788668434; c=relaxed/simple;
	bh=9O1QLQHS2vgn24FyfvfXJv/du55aavYWvGU4ckbiVl0=;
	h=To:Subject:From:Message-Id:Date; b=X2wJOH7SLTlH6ewi9i7A2aibNDnX87hzga+PCw4sFLaHdDXuik9mtEG4RzdsZGzjGDzWo2GcwVBeck+wiRgQ2z5UqMxfX+3AJGTqVhDx0mmgH5SM5u0nFQidHqPygMMbcTHISAPYEmkNfaJ/KzT08nCQExTRu9bfCUNpY1KRLmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AoUHxxtu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AoUHxxtu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EA3A8C2BCB8
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788668433;
	bh=9O1QLQHS2vgn24FyfvfXJv/du55aavYWvGU4ckbiVl0=;
	h=To:Subject:From:Date:From;
	b=AoUHxxtuQSF3S3Hoivx+JcoI59ca7ijXGcgbSWy/SOHm4P96T51YwRebg2MVLTARC
	 uX19ahFjbOEbQigTur5ZuJe8aQHg6ODVO2MoNlEDAPu9la0RRJnLh35vpBTVaMPEB8
	 IqXqP/IizyO+btk0+KYArQRnvkQgJFNPjLvJerZNX8bzgHnOXb4C0gg1XP/33yUbib
	 ltajyv8N78lHXBep47qjTAn/kFSnbolRSzdVGugW0bWPe/JGV04s/HJPO7e34QT3rA
	 kcA4nYgb+rkB533FggODd0T1WsCANRmi72TWE/wRxYiLHWIVZ2dJc03V7a34W0X0QB
	 Gp4w1De/ag4+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BB679C79F91
	for <ddprobe@lists.linux.dev>; Sun,  6 Sep 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178866843371.31313.17391247798247894712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d573d3c20f1e7d844fd5403b03db7c204cb448b22ef94c9e5acf9bb3f1271a3
Date: Sun, 06 Sep 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788668433
