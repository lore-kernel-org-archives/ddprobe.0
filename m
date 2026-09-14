Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5A4914A3D44
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789398634; cv=none; b=YuDdz972tQkbcNWAwwqV2qzEEEAe/9sB/AP8YNGL1gKwsIE8oOob0MJkP09YrUCaNvsK+hgQqS/Pj0JOlBMO0nR8vjz8UPqqziljqNr4N+vKmDvQuiFsfVCWU4Rjr08RmIFv5kNWGFd5KFzhFvgKsG5JlIP5QiIm+9VUelhEVyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789398634; c=relaxed/simple;
	bh=fyp8Aom+yc8rtrITTxqzvVYr9X0veovHXxtbUd6vgYo=;
	h=To:Subject:From:Message-Id:Date; b=uK9YqlHrLjE44WyyneokkTdEEt9eRzuuQyofDfONPpqoX0u+5riDVhbaR+laLxfusHol0FIp65MD3+6vF9qSji1X037AKm3TXA/TshiaLSNdV3A4PNMOz3gdLeJXnjFSTjc20XlzpmrzsouSIA2yJfWdERxAL1qDwkZSvobRE4c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zkxg3UAM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zkxg3UAM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A6DC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789398633;
	bh=fyp8Aom+yc8rtrITTxqzvVYr9X0veovHXxtbUd6vgYo=;
	h=To:Subject:From:Date:From;
	b=Zkxg3UAMIKhXJZutr2cChu/SMULrpFHg+hntLnqp68XbGJ9+ghY9MVyqc4Ff9Wm+D
	 1e56ZRLXiPXwD3TsLEQizvl/ZJXNl/kNdlo4u+PG9XgarwhkeDYknppQnSN1+2vBQ3
	 FYQhWf3WmPBwfHY20opuKdZc8amxriOngtPjKliZa7zhr1XS8snThuqkDNEJ2K1Va+
	 2Na6J3e/+cvSey1DjccYv2mGA54fQaZmDMh400H7MH9xIbhfuUfAK1YP7v/sAU11Ln
	 CRH99zThxDx5Jgl5ZTqDS66UCKIoVU6IR+LJ9DSnLAtmVYCR6E9ZEMNTxHqIpxtICE
	 PA6pJyCbkuWuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEFA0C88E72
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 15:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178939863370.6708.13832930107845961258.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1f022d55e188e486914d3e46bedc6eb85861daceb49334a2136999ec5520994
Date: Mon, 14 Sep 2026 15:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789398633
