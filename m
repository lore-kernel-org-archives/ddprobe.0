Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1603026CE3F
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770476034; cv=none; b=Qt9KPQt93EyQ3CTgRDIIT3h0tTR53TIQ3y09mmCgEH+sE/Qo5qT9pPfXHdMGd4Ax0rK7KSUxzqEKw0rpi9cV3KAUw+6eDNzcRBmbBJ2RDBQp4Lv7c6R0HFWa8JNy9hlVBWSStn5clIXEwAn6yaI8c9Q5g/LYumtIZ7H2tzwAL0s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770476034; c=relaxed/simple;
	bh=wvZlPf2iiasZ5eoFCe16W0E1q0sOnPSgKYFjmLII4Qk=;
	h=To:Subject:From:Message-Id:Date; b=KSlhQEBBPYEJkG54z/MiqEHO+G3n8kUqxVI4Lq1ZloWHmETb4ju4KrqN2HA5NtxCrAimL5sTDIJJ/bVJ3u+3zrh+Obe5KRBL7y21rHmwGL/mwW/cj/dPZd4l/Ccr5KdNSXKj+qVoDsHQLkuiMd/xThW9hPXDvWe3RB7W5hD/FCc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rxZZaNqT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rxZZaNqT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACBF2C116D0
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770476033;
	bh=wvZlPf2iiasZ5eoFCe16W0E1q0sOnPSgKYFjmLII4Qk=;
	h=To:Subject:From:Date:From;
	b=rxZZaNqTYf4YGuBx4dTNZkEAvmGs/yNaafnBpnPtYg0/Mji3LoDebBtAKyi+l1R9P
	 m+vQsxcVFu6NsSdLrTWJjhGD71fyHYpOPYBHi2ruZf51DaZl66IZ75afxbaEIhEg6O
	 PGptQdLvEaLA950MiMa8PCMyQ9qZw36si03UYXsChyBB6DI/cyKfzwXA9sOC1s4vlU
	 RpNEcuuS+YnTFYVRzyuqEtCH8DK+8wzJajeEmsEL/Skuo68a1/wdgjFZPXNioViyF0
	 aeEOy0w/WPCAzs3rquYhGUVg2Feg5ZD2J3NApQmLMUh8hM+6j7YAwpt9f+FyPHfa94
	 fYIxAAzVsKHUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9747CEE0ADC
	for <ddprobe@lists.linux.dev>; Sat,  7 Feb 2026 14:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177047603359.3905.15206852864531416197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f12ccc7bb6ae45d84aa663aab62fb32d077284dc4a532865f9743869f179774
Date: Sat, 07 Feb 2026 14:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770476033
