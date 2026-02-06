Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22CFF265CC2
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770348834; cv=none; b=GWOe6jYn3M3SbD+986Frs/iBJ5JBMS8eDOSEcAxW0ZKxL47DBCj5/QZIcP6fGGZllyR05VjxKF8h9pFIPmh+7aIWCdmjPVt7f1QTqqzy/JmcNyEEPF5J+fa9fh3sJ0VeI+hC8Sht6Ku+EG87MgFSI0ZTA7HazaI6xejOxZmPha0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770348834; c=relaxed/simple;
	bh=uaPh5kHrgNOO10On80CLA2d5NkkprtHa7DGnSgUpDnU=;
	h=To:Subject:From:Message-Id:Date; b=Q/UzCTwDnotDgtsBADEDeMn0Xaj3YxN284BxLzYLPzt5GCihvSok8pIO7FgUfSnE3GxkzOX4qfrz+E5PAMoMXItB9oe26KgLt+dNJQEgP02+nS+mKQYuPccvXFBi/U9Jeora4m/55QhcEPi059g0HAWRfw8bqeW/OBnX8/OLC8M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YZKRHfeo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YZKRHfeo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BBDF9C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770348833;
	bh=uaPh5kHrgNOO10On80CLA2d5NkkprtHa7DGnSgUpDnU=;
	h=To:Subject:From:Date:From;
	b=YZKRHfeoGDS3UXNUor4rNO2ZOIymuDLc63KatsqnJendA8W8wKJKMOuhFDegbHx2C
	 Bj3h5PY4EESDffJl1RSFDMGDn/yJGtNQBPRk5R/JYrHdwJfhouX9S3CzSn8mBjsyyZ
	 p/zyAt1sKBVQYdQE+i5yICZ1Q9/Xgvtz3dEeJPyi9ftR16d1eYulwWWYBgI6SixNvg
	 z9aDeuj1UYVXsShccRzbeyOlsxEqxN8wsZrwDcZCiQ0BUyvP2DTkP7twZo8i/VVkdU
	 Gq2slXKErt6QsmWTH8wKSHQcDJVi3w7ev4x2phwnVKxxd9ZGZOpTYUOvUmTpaHJaHH
	 d/ZLptxpUroSg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E09FECD9BF
	for <ddprobe@lists.linux.dev>; Fri,  6 Feb 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177034883363.16076.17947996095125745106.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c2eb2cd0e6b6bd8f05e73d69f4ad2064b07d1a94a2f9b0edba3c8ecb457f0179
Date: Fri, 06 Feb 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770348833
