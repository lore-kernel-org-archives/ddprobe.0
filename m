Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4619B13D891
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786814434; cv=none; b=KNAbTkUms9IggqgFhouShy41wzk7t7icJmzd7ag2zCfskGatt0bdRTPS8vpHOigM3QfmpaZph88DBy7CMH5yhSnhcn6oDMgBKOtPmIjNRFYkRnm2VFSk3WGor/yqalnjHebTx1Dhb+zN1lRZDp7UOwxm2q4lRrp7/0fS/4/s28s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786814434; c=relaxed/simple;
	bh=1EysjvucZc/U7TOGGu63OB89seX2KYJ6wuW1L44FXPM=;
	h=To:Subject:From:Message-Id:Date; b=JFyVzIa4ztXUQZxk1raJjL+kzoZ/V/T1MWF/5rEUw7zISew//BSCz41ufjpqEBc2GQkpIeKgeANB8kt4bI6rVng41xPqNJzT0KLuohgljLQAGgAmlRiUuMtYJDrF9eHYlaGPPAW0W2TapXlq4id86T/Y8PwW6iPHPX8vVrDiQog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rf1zwL6s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rf1zwL6s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7405C19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786814433;
	bh=1EysjvucZc/U7TOGGu63OB89seX2KYJ6wuW1L44FXPM=;
	h=To:Subject:From:Date:From;
	b=Rf1zwL6sZierizZX3guysXWtwdDXJ9oXwIVUoRLXQOiVnFFB8qwKPJB7f9cCwINBS
	 4q9BsMMQnSG2AmAh5zXKApoFdWmh/UYsFXWwlHvwypaJ1rQdUvURzbK8t1Im/LwOX3
	 DkCp2CefbAp3CX0jy/tevWAKBLOWuI398KvedpKNs2WbFBWcCS2moxfUjNOpxT0xHc
	 ourJ7muaOmM+466ZWQLe85FSzYBtUrPhkSe8d5Xjl4gset32h77NJxsJ7nIMl5acDk
	 lPzcroCuokBs8WzShFPMZ91p55tb7weni39zUQZX9B/lXFebYvaLvfFUhcTntS2A6F
	 x6TBGK0Ce/bTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1FA9C5AD5A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 17:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178681443369.13005.6953677190439915075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d24afd8ab25d52fe113a9c07f3c3040c2025bbb47f7b8adc35f5df7e931d247d
Date: Sat, 15 Aug 2026 17:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786814433
