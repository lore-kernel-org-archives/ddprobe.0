Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15D9714A4F0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766799834; cv=none; b=LuxfKtQALTuksg+M4SCJTt+VWzu+2dhbFCHoq7YpQIgIrBmCbV8V4EpkAoKd+WZXqyYIcPuaFfM2VEB3zdHMvzQSiPlCZJIByQIQv+MZDM4Y6nUek5EN1gtZTT9aGJ940fcbklX0pO8MXhPOESJPOBhd3geHA5785XzKleOW/2U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766799834; c=relaxed/simple;
	bh=Zu799a9n0WKXYY4ioNYtQZvo6PW539iOo1DHna4vXuk=;
	h=To:Subject:From:Message-Id:Date; b=qWWBKKINVD0qTu3lF7jPQO06nPpZrhD8GrBELSiyWNNBJWuDeBa5cJEa+frJPg5qATc+lu1opibhvz8qR2dIHvG/TEdErohPN3cC40KECHg2ebYwa4knVahSpybtZdTI4cuYgVGiWyt0fysmcj5uYXX565tpL1pJhUR8X4y3+0Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VexgK6BL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VexgK6BL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3281C4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766799833;
	bh=Zu799a9n0WKXYY4ioNYtQZvo6PW539iOo1DHna4vXuk=;
	h=To:Subject:From:Date:From;
	b=VexgK6BLd9xI2puOYEVnc4f++hiXR0SdoQyg5/wFfLbe9RkiM15I2m09njIGBsGdC
	 QGbcR1ldYkxatf0Wqr9i4TS1lztzn3GMjdBJxk1KFaVPRrCo0SW4NZnmE+aHlg53vK
	 bMPUSSERxhkuhgUeKViC2MI19FUuL04pY6+/VWBIAIOmE4trS+WsixvT7TY9GUJ24I
	 TTI7+yOLw93/I2vy6xUDH+o6vegBEaBq3Ux48gOqOh7nVp4e0ScB8lz6uaGVboI9Kl
	 3JQex4/L0XdqYF2X6wh8kCYB8bSLCow/1I6eRl4TcUoNuyVRtRQb795VWOEH0NkCro
	 8SBBcwsMg3c1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91EEEE8FDB0
	for <ddprobe@lists.linux.dev>; Sat, 27 Dec 2025 01:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176679983358.26685.12076215357073294341.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 434b049cd4edc8998c536507c1a6bf5ce0b5461aec9de63f8e9988825d0f2249
Date: Sat, 27 Dec 2025 01:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766799833
