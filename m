Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18A482F9DB8
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759141195; cv=none; b=SHV9Pumuw9EkI86WcMlxgAE4qVV3e3a92euDnJzbz3MGhXQiFrZnybqyU7Y5UFQqD394RXCYVa29rj5xCk8skV6PszmE7H4LChFKIh/lOOVo5sgC5Zfizjjp/IBdhl4S7Yz50Dz34LTCb/CkDSNYkldyas+pqGHavQp6IW8e9kc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759141195; c=relaxed/simple;
	bh=75U4RtA+A7kUcscF9MDwrt4c3WBHMMf7Q/VhZzDbfXo=;
	h=To:Subject:From:Message-Id:Date; b=dHa9mh3UwjbthaO6ERe8X++GuJAhr50zhjtYOnNVKWL1xxRIjyKEmNgFSakZ+L+SjoBDIn6gbxj5tifRBRQ8aH9B5tW7vuA9Hkd0yv9VwXXY5lVxcdkEbMx/K7NGGRIufonoYwlNyPDo6HuEzUi86Bu5UDVRh+Cu1lLzCa3as0A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mof3foyv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mof3foyv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5859C4CEF5
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759141193;
	bh=75U4RtA+A7kUcscF9MDwrt4c3WBHMMf7Q/VhZzDbfXo=;
	h=To:Subject:From:Date:From;
	b=mof3foyv9qREycycP1+hQg08nF6ODnwKyJZT4SM/LRttTwpbAiMAV729B8xhoRyth
	 Qmf4t9T5ONtkIMmvHKr4Hx626UHeUHNOoqvWBRA8Xf4BTFfi5d3mU00bduBM7ZuHqb
	 wN9Cuy2/GyAuTrgHYSV3osjGOXI2nKv8rRmsQBmh5svAPsozNRBRuPJJeJ3hJzO/4M
	 0juIODWEeTPg1IMAi3vONnZVoTvqyO93MouuNg/cADzbqiyANgVIYJjK3Yp8iiup/P
	 m3MumhxVu4LtGPBGxY1FWLhuvxg8KL0Jxr62bF+w5q0k7dsXD+HaSUnUYxz49DoUrM
	 J6/bN8srKCHuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 925F8CAC5B0
	for <ddprobe@lists.linux.dev>; Mon, 29 Sep 2025 10:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175914119359.12660.11425958596868314528.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 470372419068e170cad02a9edca7a943abd5c6108e4b30d120c9ccef05214c69
Date: Mon, 29 Sep 2025 10:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759141193
