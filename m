Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15F4C296BBF
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757116794; cv=none; b=BnWuPY/nlRZ38gb54mmewu6cSP5gKmRRrR+4Uxw+rpTBG7KBDeBFJwmYzVMbqdWyplvpKOxkoIov03xcZSZ38ahEz0x2SkiE8Keavgb7q3c7FPaf3cp2u02IRSADvKW24VWz/s6WCaB5GhB4DAKzfchCDnVm/oJIcyQIMEOhPs4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757116794; c=relaxed/simple;
	bh=k5IfeANoCTxByQNaiGuAp6iB6rdumiLfSoztyZnUPlc=;
	h=To:Subject:From:Message-Id:Date; b=G9AQKUqeDohU63WKAYz8miPxllEXFe3FS0YfeLs/DoTqIuwO/gnqalrP3zvwRnK80jr20jLQSTbwm6Ci+Z14w/G9/Tm6DozC9yRN11sn3xyioJw2H7NTHzlA9MPqaQHwgU4CwKpSZ8GmlYA63F2VlLELsUZK+kPG3HkZGDywAgM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CuD2BH1j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CuD2BH1j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EA5FC4CEF1
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757116793;
	bh=k5IfeANoCTxByQNaiGuAp6iB6rdumiLfSoztyZnUPlc=;
	h=To:Subject:From:Date:From;
	b=CuD2BH1juTUE+WskEreY12J4Gsa9ok/FDA0OsZNzs0pXUeOV5EA2tnZdSZvrYKBJx
	 UgSy9Z7bbe8vnCiA/ikieM8G0kzZ6kf2gyQcvAnur+e5K+LHeHK0AwX16C9oIjU+X7
	 lYR2NhLBxHQVEwuagWBcZH9zKcoD7CGcBJ8Px621yE5aFmWaFNWSVYbr/XZpdK6SAC
	 5nyV6MtwhdfIOKoccc+5pthxgbfGx41VQaFmmHp96VE1n/359rVjW7zA9Udz3BqnMC
	 lOhAwEZzx+Yq9f5ZK+2tSQhrCtv2iSNlW7ERFWEjyglCXRXmVaWBhq1pcXCBAkvBwJ
	 +7AB0P+WmnE0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF78CA1013
	for <ddprobe@lists.linux.dev>; Fri,  5 Sep 2025 23:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175711679357.12893.11195921542503634592.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a4a45f6fef8ca190321f2120e9b1fcfcbcbafa39ee5ee4e8d37f9a1631453876
Date: Fri, 05 Sep 2025 23:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757116793
