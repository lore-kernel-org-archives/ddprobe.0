Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26D1419CCEC
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743624594; cv=none; b=js6rtDMqGbOhgsOWwqlOVEJIkhcT1nIS7Xktc48P0WgmCwesZG7KagtY9UFw6ZhYpYVLL12LQc7OHPxLrBBlylHqyMWH7qS2n0zqNxutM6KgL2wIIiW9Zf3LxNQFfUA1/FNQrtIyVmGYxqiyVJ2vxcwszWiUxR21/imaH7UsiV4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743624594; c=relaxed/simple;
	bh=4XuWO7VzLxs0CAF2rIlEEk+7jZSP+xAxg3CddvG9r/w=;
	h=To:Subject:From:Message-Id:Date; b=tRS4vUUuEMRJyv66qNzgL+AypbTvOmJzs8Kne0ewCMGMOhCFoFLiS42Ke2oFtyBNZieqLw6QxdmitHagBtRT+sajqOV5Au3UPdbYusHBRdWk/nGmrOvqAaiHzTh14p4Xlej4jILi42oQZd69b7fgt2B+QpOgCJBqpJJIOyP2/Dg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KmUvNEKb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KmUvNEKb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1ED9C4CEE5
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743624593;
	bh=4XuWO7VzLxs0CAF2rIlEEk+7jZSP+xAxg3CddvG9r/w=;
	h=To:Subject:From:Date:From;
	b=KmUvNEKbjUeJNxmCdQX3Te0mNC/EaawvR6eqVmM2Vs0TD9iulPWmFYfWgvAelpF4Y
	 Iw66se1v9y9NilON1hMdaxYlPNJu34PMexGqTrTo7qbwndjDb29K65fHk/9TW2ul0o
	 1RY8YHhnudjA3ApAXu/ZuJRLSdNauWkplU+5fqQPB26/KXdmrsOb39UT76M2tyzdN1
	 VnR9EN+l9fLSwzdk1shm4D1vnC52nlHULygsugAXIpvGDS361/P/x/FATJGksuqM8J
	 TWMEf3ET14EyKbx6uIyYYwi2uKO+CMB/tiWHnQuGe1RVFF/x4tatnhz9gSCQnofKxl
	 JNCqsQxSujVNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91F85C3601B
	for <ddprobe@lists.linux.dev>; Wed,  2 Apr 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174362459358.24844.13246453679430433339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e27638b55a4e86488cc2b4563a3adca43856b7da97d0b47eee7604271c1e4855
Date: Wed, 02 Apr 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743624593
