Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A1C152FB630
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:13:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769210034; cv=none; b=hACLpIA17iAIDUwpjfiD/1fQvIvGHvJ6WfBeT7aZe8u37KXWTxwDWjXpcau3BlhA6/yDaknGUl1d3L9SOnGjOTR0MAASTQIPt5x3KAWWEpE7FI0nYyTToGHo6JjkVksHLee36BOy+3Wy1p6TPojcXaocD6jhlkuhbNVmSY4CRkg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769210034; c=relaxed/simple;
	bh=f7OF87KNL3SsmEA7fZRf2bUHz8geKSZ7SFN0Fr3wCXo=;
	h=To:Subject:From:Message-Id:Date; b=JIRNl/6dB6fs6v++Oj94LXOZonY1qlJEKNn/W/E9lGQqeT76ZjAy6WPbutE1TJp05GuZisOk6HcH4GTGfUq6x4Yb9qXldx+zACLPdzSC+P14mQo2H8KiiKUaZCa5yAKI6OBdfuO4Z4yEfvlFTA4iV9VEYfJQnNLdxWwz7nU/mRg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dvWY1Jly; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dvWY1Jly"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1CAAC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769210033;
	bh=f7OF87KNL3SsmEA7fZRf2bUHz8geKSZ7SFN0Fr3wCXo=;
	h=To:Subject:From:Date:From;
	b=dvWY1JlysaF7V/1Rv9ymhtz2J1qbuGVyNoxMcuOMtQCh+CWePsDNsE09EYp+aZMGF
	 Rl5K0YTkRZWt64u8x+yI79N+g39YQR4vPSGVtYmQ0SAP4RPAHRlu3eamaOJvfJYbvq
	 w+5AkXWC2LtChyiRvPG4bEync9FnP1hXW0yW5L/sZBTbEn/WmcF2U4hHgMJvpoeoPT
	 OSON3R6vcyjlujsHoK9Ofn5bybxoE4kuB75d4mTnLjdxk7RW8ZL566+dP/egTUPRZZ
	 JxaVNPJrtC68FbXlELgus3GgrD1EpOaTLIxOL688b8Q4S6uCe2/NhIglsNL5G89+mC
	 CugyoNCv3lBmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 915E8D778B1
	for <ddprobe@lists.linux.dev>; Fri, 23 Jan 2026 23:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176921003358.19389.9080573046472107828.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c521d72549154356726855e1483fd2d203e8e970d0e3e2f313cf9501b4678f4
Date: Fri, 23 Jan 2026 23:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769210033
