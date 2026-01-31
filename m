Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 313B834F244
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769883234; cv=none; b=Qe5uLpHngyZA92pMwZ4ZPFHd5ZWdggVclsbLp8YY8Z1eUWV5I3jxIskw7amM4UqYSU2fC/+UcAdLXH14VD7NVrJf+JaHT6MNNM7L5q1vNq5Xl+OBcquL6/bCVt2stoxmeQGrWWwy+yQ96UBisktmzRrtSWDT6DNOOUMQcnac2+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769883234; c=relaxed/simple;
	bh=0FMHgUnMsPX3SIqIxToD4QyWu1P06M6ynXy13qGDpHk=;
	h=To:Subject:From:Message-Id:Date; b=nxDGHAJ5jbZUr7yPIQWcyIYcB3ZVIzDJzPjELTW2digIMBd/oVo2RtKmEeL94bBvtEDHI1D2YAm+7DV6xvCS5pclyTZ+Nfxbq1kweS2wp4K5uResbVvcgcsND5YdgxxE2DskZThIWpVVYQupkrxJ7Hqr4B0AmbvB+3jvLqkMVPc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LE6RGUrk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LE6RGUrk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA2D3C16AAE
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769883233;
	bh=0FMHgUnMsPX3SIqIxToD4QyWu1P06M6ynXy13qGDpHk=;
	h=To:Subject:From:Date:From;
	b=LE6RGUrk1K4k4jxF/sc1b7fnt/cp+JBejdBbEhkqVnKesYmGSG5Gl0zyYxewcKR60
	 PUIAfZ5UcW3R0khAHBh+e3EcYy3WRI/xYkXE/4EvPIAl+I2rOaJ2DJBKjiiOBhyIfH
	 T4Ry86sh2h/x1amOHMLhLhzM+lUtw1MjqBTBrU+jpb6Lh/TNJlKxhigYWOLupMPcz1
	 5kNoFSAsCMnbyfSvcdYOdlq7n8WuaUuKpIIZ6tkngzfyaSwNPRtpWzll609aLPOkPd
	 kbLOzVrVdzGJ/AUfAE1lmLlnfOLGqkiPRmCVIfShMFZrkYwkL3OZhahUe9DFjeGbke
	 ofP9S4FutsTZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97FA4D73EB3
	for <ddprobe@lists.linux.dev>; Sat, 31 Jan 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176988323359.11225.1626268867228908498.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b65e5d53a22907e2fbf37f0b560d2300a0ba438b52dddf9acc0ca5107285067d
Date: Sat, 31 Jan 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769883233
