Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 319B1145B25
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743794994; cv=none; b=hEippwra6mqj5yB5fOWwxuHX9Pj60GSWRtEb/JPSkeBfceAlq+TwUj7Bm+yD+PluW4ffIwHFoCDB0+xtw+73AHtPhgl7uEB3bkCtNoc+PJgL+OVyUkObpo3VvOWFvl7Y5m648PvlKj69Jsm8OgS7IZOc341eYtso0EhX5IofeZY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743794994; c=relaxed/simple;
	bh=KJzKKzdw0nwVEpzBLxMtNCHg8ElT42CQbNiKGN11QpM=;
	h=To:Subject:From:Message-Id:Date; b=Zea1sAcNvKnrDs5VVk5z0eMWMvZF16UWi/N/1sgCihDhB9mjhKYWQI/ktREE3X+EapmrnKN9pATnhHIS1Hwe3ypwQoJs0gHu74nER3GqxYwXqwT8wGTlWNI+wbNzCWzSsmB7qyZOqVwzBPA6Fi3ZCjWmCeLOeY0KeOu2qeeLXPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QjFs0FyF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QjFs0FyF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47F8C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743794993;
	bh=KJzKKzdw0nwVEpzBLxMtNCHg8ElT42CQbNiKGN11QpM=;
	h=To:Subject:From:Date:From;
	b=QjFs0FyF2EGyu71UsU5wPi9CwrO+FEpCcDrkOJXj5AqjSlT8Rphjlaer6+1ezEDyy
	 uYIbRq1RTwruYiYe/eHEdMJImstWSzm0Ia9ExudkbtcOk9hoz7Pe6j2lsWRpZZg/wc
	 YjPaImxncil9yC9K4YaLNTyQQ4aH7hdVX8/4xnDKqIqGCpCfQ0ru0Jg5m80KqPsVO6
	 q4WvH3tIVOsDmgF0xKXmm+Dcbfyfs0V4hBwyZIf0cxZgzZE23KVucO+sIJHtXFpBa5
	 bJJB6xMuV6faty+igoexY2XIMecDARtB4jEvEk/N25cqfQCEfURnZmXIGR23AEBqD/
	 u+huexlHl/0Sw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 944B5C3601E
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 19:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174379499359.6249.4132101106672028899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 074d84a6fa627f31ae5fadc72d271de89f31fff98eaee826818c301e574d9369
Date: Fri, 04 Apr 2025 19:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743794993
