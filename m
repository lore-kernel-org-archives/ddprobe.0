Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A44A2BD04
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753711795; cv=none; b=RkgBPRl9pi4YJe+8vfZe/QYdqBJT8ZQFtjxocmGnIHNmQXU4+2mAhotZEp9NK+6fgRXIb6FqkCFkv5XO13tiTP27C2leggmY0MhIj16HF2goeJFKVA7TzAQHqbzO7v1o/bePvDoM+jtEy+f0o7petnj7KR7D2mVgHo4A9Bgowmc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753711795; c=relaxed/simple;
	bh=gbqzP/TZvptfyViQqWh4/tAIdbucJ9LPD7fl4I9q/L4=;
	h=To:Subject:From:Message-Id:Date; b=SZEovhPX3lt5AYx4zi5T0CavqPN6ckJD5xWZiguk2QFzV2TPtfhhi3C6MxlLNNRWMqwN0VsrdsSO/reOv1KTzYQ3qySjkMduv6vy/oSFzytJmOfQXXX94yljBVwsqaS2c3dSVpW/tZP9JCK/oRpVl4dZIXZ3c/uMtEAvO4ijrY0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PtWXlDQI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PtWXlDQI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CB99C4CEEF
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753711793;
	bh=gbqzP/TZvptfyViQqWh4/tAIdbucJ9LPD7fl4I9q/L4=;
	h=To:Subject:From:Date:From;
	b=PtWXlDQI/nOOygnLT8kNJZhig72JkDA+ZSQf59spWE+6e97S9pwRff+KwJL6k7T7F
	 EXKQ16FINPyKRvOoRFstQlMnux6RKBbMgI7qQFYJz+p5U9FVsCpik0CIpyCMytC1wS
	 Xnir3qMuerta1aTUqibE19YVuIAegPz/sCe5HF0XIjcNOtoEmNj4S6LtwdlEPYQwPF
	 nk92wW7fXCKgIYCmsmWGdVksYqtItxhzVgPXkJqVRxaSR85xX3eyx7gXmcE0mBl1v1
	 FuC3yDfyCcK889prbwiEiFbYBUBDw6nOUoBVutk6lMd2Yw/PbGfIvQM2yGehkqVkmu
	 l8Su1+zGGmmzA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F46BC87FC9
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 14:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371179357.21831.15444630854519871828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f00e846607550e2d0b6c7fd419292da9fc7497928ff25da850109d8d673d4f56
Date: Mon, 28 Jul 2025 14:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753711793
