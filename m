Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26EF81D5AB5
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 14:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732631154; cv=none; b=YiKiNiSNIOmNEZdovgbzxmaEDU5uDDHqCvdDkWqEBiAvhC6xiXHO7PUGNKHiDKeU5fWYGYbKVgxU4ucRchlXa3C5F94WI2QgDgkJmk0mk9CyMIEKQ0v2lycC4xg07Gb9KiRBkFU6gvBc+wwrdAOmM1DHPAo4r+yo8HalpegfRVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732631154; c=relaxed/simple;
	bh=AgX15tX6GkTwoiHr/r7/2fLjpytGZFshyb+5lQNSIIw=;
	h=To:Subject:From:Message-Id:Date; b=DV3RaybtN+Nz7Jl3oMMttxj4a5JEX6NOScx+fZcvaNueV2IPEiMJHCM+Rhj2SRhr4t3d6eC3dfqYGKMaQcu0ANlwDlPwfkvnCsvKskZ5qdxokHmwMkF/l1+SRpR98sZuMHVBHiec6Ws+nWJpFUuIB2VOnrqMqEy278BdwYy4Ed8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/kxSoSZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/kxSoSZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC8C2C4CECF
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 14:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732631153;
	bh=AgX15tX6GkTwoiHr/r7/2fLjpytGZFshyb+5lQNSIIw=;
	h=To:Subject:From:Date:From;
	b=E/kxSoSZhoDiprM9+walh9iwdUIS8OxlxIdEZuBc5eQxsjXmlzUUsg31EdMwbZ4zz
	 zco03CJ51DJUQB8s/lFNIcEDDf+5kl6klk4Z4t1cvyxg5PNoPy7etuu366pNQQCyB7
	 HkBPdGUJAC64bTGdD757sreVazRBuLqDwcJs62I6fmlTg0ZrW2AgEqwTk9cD+evL8J
	 y7FpaQhzr6L+7UHaKAQ2H+pxxWZ9OECZaCPqLx8GDf+dmyH14vK+fqYfj3ostyrRwQ
	 vn1JgFXp3iY0gDVEx5pIXDAyoICFj0WrX3d/uaBCaiNoJgUMsWRtdsRZvJp9ObnHg2
	 B8RyJP+ptF8Fg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0011D3B994
	for <ddprobe@lists.linux.dev>; Tue, 26 Nov 2024 14:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173263115364.7980.11433486098240016617.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d951829608173ef2c9e4a83ea99e342ea4abbb69b4940982dec96fea700977ef
Date: Tue, 26 Nov 2024 14:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732631153
