Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 593EC107B2
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 21:30:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713562223; cv=none; b=bnHSfWTmS2lOMeMYpaO2AItI7wGBRRgZrUq+J4gDpgPOiAWBzDbHmBDCpE7ic40eat5FK/1nJRxbWs3xuK0sQun/eAQobnMi/TnGtyMkC8pri14WG2f4bbjRPW+FsoBmYw68sUyukV8n+Wcv/wwfpJdQmg5maBoELd/gDUj1PDg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713562223; c=relaxed/simple;
	bh=STuBQK6o3I/OEXStDRz68L5XL87F9AuTHOTEu1WhYnw=;
	h=To:Subject:From:Message-Id:Date; b=LkrW5433xG+n6By0WtMYOFu9Yw9V5ukLH8/aCxYIJ4SpvajQvfoGti1y2/zo2MiZUH3Mx6LJqQy6OlziouUGjxozBGUIRajFu6cxnELHyHxJXSeFY5hb2IOB8V1Zq4u60DpgDSv6WlKG3s+3xDT+QXPZVCs9VDERi0VSTJKn28Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MCpfQO+d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MCpfQO+d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7576C072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 21:30:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713562222;
	bh=STuBQK6o3I/OEXStDRz68L5XL87F9AuTHOTEu1WhYnw=;
	h=To:Subject:From:Date:From;
	b=MCpfQO+dH6q+su3v2vPxE014jGeOak1rbynuZDs9/0rLrIVjo/ew3WufImLljLX08
	 Lem6malXb5xTI7KpRlOjKii0I58GVymHop8ofS1lsnNUomlo/GpHWRhI9kAhDmQ3pr
	 fJA8xS2/a3pc/60SlMOzIWOiHwiLvdvEtRgcmkh7JgoH/Iq4YfR5tsG4ph2aTVUhPq
	 KoDPlSfLowsHwv4nkru7v/0Oz3T14WE3Rp4V2yH6qiHiy4Dot6BALe1/+Leo2FgmY3
	 QZ3wKRaomVRrKjSsWD21i8Rk9ju7Is76O0GCEv8exlSOlPi6kvWfabvZPOyTmjoxVH
	 /yA4q5qm+q9kA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD009C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 21:30:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171356222276.17796.8686600285300540354.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03ff40f9c77275c94d914f58d10618c4f5df1f06fdad0605b92b380ccc215d97
Date: Fri, 19 Apr 2024 21:30:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713562222
