Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 064CC33D6CF
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771499094; cv=none; b=htoYO2R9RGyCBOC+DC6stDv1ouNClaiBvcIEPWEHU25PJX8kPWW33dUFToP1o7Nw6jum1ZWMDrjpi/AUzGMLmt0lUNXYbKoqCysD/l099kipSjcipA26pYGksYtJhTLoN5Ii68GABx024GPIfzszEZJxf2kTOhQyxNldsaxanhY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771499094; c=relaxed/simple;
	bh=0D6J5c2mfqlsfgJZH9NBP1RYfEDPG1xKvyCgnqvj7dM=;
	h=To:Subject:From:Message-Id:Date; b=mTqsIGZ5sYuIyb9YKUQn1irTuP1PG+2vpx4zuk6n/pdubJ7VOczq8CmjSDKgkVWZQb9x+JJxrV5uh1FB384jATbsdHqi0P1ZwKJiKvGFw6c+cWhnvDjaC7v9xRQgp6azUPf9udYiPxKaNKSXTMyeDP7fN8lIzV/blpdywFgJnUM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RUHYCCfv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RUHYCCfv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A925DC4CEF7
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771499093;
	bh=0D6J5c2mfqlsfgJZH9NBP1RYfEDPG1xKvyCgnqvj7dM=;
	h=To:Subject:From:Date:From;
	b=RUHYCCfvvIOCa55q10V06SMN0Mevew0D8jEKSNJgXSwZpbrOP1RU7u+qOlfuWzL9d
	 iOud+pW0hz3pFCm7qBBChU1XO2/RjTfUTZ22Pf84tQ2iEB5XN5Gb9H7KZYb/sq4H8T
	 wYnr1y1Vqi3g+hDXeEt/m4dNw+byhUOaVPc5mC+3SfDTbBOmqFDX8zD3gOGg1i/cVp
	 lqvYapYxNGaYB9H1JbkI4GjVaGGEofk7oi7WIu5ooS08ChN3lNvLrpbb9GhB4pLL4k
	 jJIUs8DeWDAqAyvUbSZJndnvtooiDXAWSAZZW71tHNA3un0dx92d38ocC5F+Kvx0XQ
	 tEoh4IwRike2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92FA1E9A03B
	for <ddprobe@lists.linux.dev>; Thu, 19 Feb 2026 11:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177149909359.3856.10738787923499697729.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: aea98628c43931aa21862f0f10d4efdeee8ccc06409d4e959ec30aa0264f715d
Date: Thu, 19 Feb 2026 11:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771499093
