Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415E0EEC3
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777614454; cv=none; b=n028VDnPf6EAmOdjBKn9ENonMKxKiSpz3k18EuejpltWnnLHWzXlPT7gV7L3XHGcm66u+l/pp65aNRtb0W5uweRUsl6BCk2zkKDAaokLazqdrMKFNpjnOMAek1bj+TdeKugIDaHygtyVjvT/cnXi4CqS1PhTaASa+VDfJz+9jNw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777614454; c=relaxed/simple;
	bh=VWqxbMh+4VGAwF8+wNAeo2/BjFMeuQCP3F27kipWUSQ=;
	h=To:Subject:From:Message-Id:Date; b=E9hSxOu9FsFVlmO6TfWtyRWTK6hdRpnoYvj/iE4GjZRiou/7fzvJEWb+HJiWtFVEPUu4YbUioYD8Fy/32P1jT7ksKlZTji2abLHRzQAqC0BlyPDHsjXlSVDDo4gBS6jUyeSnRyV5w+E6vFJrFLiBELKhz8EXWm1ATAxS8zXhn8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CHP687vy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CHP687vy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3095C2BCB7
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777614453;
	bh=VWqxbMh+4VGAwF8+wNAeo2/BjFMeuQCP3F27kipWUSQ=;
	h=To:Subject:From:Date:From;
	b=CHP687vywJJM70trPMN2Ifm1DJv9hRXuq3j3Bkf1xxCjNqcLs5T74T1t3XTtQ9Aye
	 xyJZ1QLtohQN8kZHsUG8Bk42ZglWhUQeyTiMT8Hwh5fqztpcRkAfWVn2AvPZP+x9g6
	 +L+/nXBUUFSPKAIF4Br+ZlJazXsdnv/1XkLxitg2HnA02TsL1UUaiSlAQueVHFkrrU
	 7l+dJjot5CyeYu4yF394bZ06FZCw8bfsQy4aLHOAR+eByW0JrrF3stUVWeGOXVWmSl
	 wuEQX4mL/IAE4Tr2XaCZ3CWBfIogvdgswXGKaW11dgjNL0ihPw7rBJAJ/NZYmUfM+p
	 5xOQSxKbgwc0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE794FF885A
	for <ddprobe@lists.linux.dev>; Fri,  1 May 2026 05:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177761445369.20947.1789413202798616632.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d1205924b7c41774fe0f892acb76cf2a8a682c7f2577783e7265e7dbc635d4
Date: Fri, 01 May 2026 05:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777614453
