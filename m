Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AFA8136E28
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736061354; cv=none; b=MPu8DLcz6sPSu32TZXJQ1SxvD5Su1yCcW8VkL6H4OQ64iHN9ne6VFvPjO9nXsE/SWq36/f05jCYlLVwnkJXwjxNSQvOjrul95F0rbFGgvjDU1OIO8Y/fAqtEIKFj8zglFz74l2v5RR0lLQ5ulE6vbJTv2ssWpUQy0dGPu13sGYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736061354; c=relaxed/simple;
	bh=1KwKz2kJItjXRCYBuzTg3uw6iWFBeGOl5jqK7mBAZgc=;
	h=To:Subject:From:Message-Id:Date; b=H8JZugVhEW7ESiEM6A9+5WWHfRozX27pDlKXZfQm9YHeprjeksoTcEpA9IuYHsAb8KzF6BJWp3KvzKw1Rw1CgpCTsg8rNHMr6jqOk6AfSIVntmKOEAyzFSC79B8VzTRFmV6rpqVqDD9PAThtHLTjt/Gp2xfuL9cPRfF3F8x3Q8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UXnsAILd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UXnsAILd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C1CE1C4CED0
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736061353;
	bh=1KwKz2kJItjXRCYBuzTg3uw6iWFBeGOl5jqK7mBAZgc=;
	h=To:Subject:From:Date:From;
	b=UXnsAILd/Q8c7HQmmaqUkYvtWysIrFGopwgiMtTL/H944qZbg+3aQY0R9Dg7vmyoq
	 z1jqxj34QK/9QWL5CZXjEXH47hKT9hTyqoFBGYm/9wCrn+uJCvVkKwnceeWnz7dVwh
	 LQyFwD9i5hmES7pqVSpWANRTT+3iWoonES1Up01L+IaE7q01PVSiRtDcd1guKM4Hgf
	 weOdPa+x8xQbLruILL8AuOJAKGq1Pr75Jhrxc4kQyEZnyZqwLSrN+QYyQ0gEjJLm4J
	 YNQfWHabV+yKmkgpw0EggfWbMYyspCb3NQeuLk0UuuAzjAxrm5iRZf8tTjHko3PFFm
	 HXtnKWXZDCvgQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A405BE77197
	for <ddprobe@lists.linux.dev>; Sun,  5 Jan 2025 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173606135363.21298.8225314028202859207.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c49a646fb47c9fa09cd1e8b044871589d4a45f487378343a269ed37a2bc6c13b
Date: Sun, 05 Jan 2025 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736061353
