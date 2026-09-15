Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D21A2F7F05
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789434634; cv=none; b=ZyT1CCGNElNGCnY2wCNefTFNyRro+lE+QaE9yw0lcaNPoPa0zEppP5BwJhhY5Pcc88dVl7CUI3Dz+ufkqUvxzJDQkH+oojmhn5D0FNyKPXcW7Ogc08I0jTIRQr38mTtba29wv4IcpiJUlj/D+7qbNd4mBXDijSilrkSLpGw7QDM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789434634; c=relaxed/simple;
	bh=eLF5ezVf4BbgtIBDq3HK1vFMf1mEOBnnWOvjJ6fbsaQ=;
	h=To:Subject:From:Message-Id:Date; b=XT2W2Eh3XX0lNPl1acP5lo8owxlm0t9H122P2Ch6/H0/YY1n8uTR54ParsbNpfCmUKeys1sVdcCkBNmU8O7j+pM0p+gPo0XRrAKz2zyXvRFKpW/2aCjeZEugtg8fxM752Nb6viBsbfrRmMSFhEQQxUyROQDrHURflGpjVLJGtF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YR+L/UVn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YR+L/UVn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D087BC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789434633;
	bh=eLF5ezVf4BbgtIBDq3HK1vFMf1mEOBnnWOvjJ6fbsaQ=;
	h=To:Subject:From:Date:From;
	b=YR+L/UVndVtSmq1vSyM05dafSyY3LO+e3hyWdlfxsokCcoPdnQ2z/2/Hlfo1bn6yT
	 koOudzwXm5vujjr1z0U1dPdBM5BeZeKq5RQPJ+58CvvCelyxwzXc1lgfn7hxbQYd5K
	 mFu+EqQV+E13zjLnh1ZS4kDMEn2LjZJGAc+5vxmldW4s1kJDrnMDoZUKICwSsKc0I4
	 UsjyTZwOb2/c8xd1Ju3SWAmkph4zJAfUJ81wTQwV5tQ1+g/9I0Q6TBDH0CIeyDJJVA
	 uBzHXNu+GxtY9YMMlrEdOullW9U8uNy6iUIuKUxFhE/IqsMcDegdoeD5oYpzPKTTKT
	 PQG7hBDjEPNGw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF00AC88E72
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 01:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178943463368.9027.3710167035991297189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15a46fb7000dd6481ff41d73efbba7206fda5aad0933f05dce710d463e6493ba
Date: Tue, 15 Sep 2026 01:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789434633
