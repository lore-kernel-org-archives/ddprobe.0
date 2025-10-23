Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42E5D292918
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761203394; cv=none; b=Q/zeXvsRlOkME/FGAJzl/cxmH+vrKpdviI7rJ7rmp0mu5wE0oGUOknQD3dULOx0kErGyZF34UdQ9008VwRcy2hYsSrXe5xUl5J7gOqeMPWcv8wy79+1TTFAMZ/D1lD6fomiueLn5sv6h4LNfgWLNFrpbvrIixEpiXkDNfFcK7Lo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761203394; c=relaxed/simple;
	bh=8zVCg6KguCzybVY0pit5Jq5tkHKCTVp2nS6Rd541c+w=;
	h=To:Subject:From:Message-Id:Date; b=T4RBpfY78t4E+dTUruAJoHlg07bJ5u+36kUw/7nmLOojHQMyC0AZYi8KDMQ05l0Y8E1H1uBkRjpy5IQHg2862HhNFqV8GKPK3PJKvTO/myv6j9qaC9u7IdzZyz+/Yk0MjqeG5cFeLflrTjjwFyO03f0OB13M/6d19dzy+KLH3n4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=thHlq7np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="thHlq7np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A718AC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761203393;
	bh=8zVCg6KguCzybVY0pit5Jq5tkHKCTVp2nS6Rd541c+w=;
	h=To:Subject:From:Date:From;
	b=thHlq7npNscQuG3VtDHMij6y8cu4BX8xW8WtvzkRdNvxfR2zH3SIpnxcvzsjZxMBd
	 p81lngtuVcU/dXjJd1evFZvOgVOKclxNKd2gSRz5Xvf7Q/yiWr+jiQ0VybRL/Exwnl
	 RV9G/qtNfig1AVdoWZCJPefjJF1ARIrknFCXQo48J4VcTWPJY2vStT9diIq3fVuESu
	 K2DXwwLazwXllFOMUr3HALGNNxVqgAPVWkFYYei2prDQT/i75Cvfys2S39VXgDH51H
	 gtFMm+xKssbD/R7QW1UvX2LNPmABd59z/YkC4YZI6Pw/GcL4J7o6hL7q6a/FMzeKiX
	 l4GJUubr8ee3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93774CCD1BC
	for <ddprobe@lists.linux.dev>; Thu, 23 Oct 2025 07:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176120339358.26137.2925459553145984572.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 264c1820883163a005f1e713a155ba9829ff6a36511097a1c31ad2ffd912672d
Date: Thu, 23 Oct 2025 07:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761203393
