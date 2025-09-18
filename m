Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A0881F5EA
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758166194; cv=none; b=mrfne2+UDOQQzanIqCiLaVIRQS+mUO5p0dlcF6Ee7jyV00mCEwnAtJtIvd8avqjTPQAauzVF2Fd56HW4wxbc564bD49GGSbsm/bY8/WNl8A0xxCR8e5R6IH2WSYFQsB0SMgWoW6Kix180Edqa8aiRRFcldlj4xAUt21elIX2CQE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758166194; c=relaxed/simple;
	bh=2OMFNZ8BUkifhjx1/yQajxapPTCLTQr8I+8dCLNgEuA=;
	h=To:Subject:From:Message-Id:Date; b=GrqSDKoCA7lKPjUe5oCjXr6Hj2A0qraZjMWkChHETWpH4IQ1c98SePd0GDysbGDpm9+bL/Liqvxny3y712I3GqChRTRQYodgOySOul2NVSBaHmkbkAoyGxZodeh6ZiKuWTHYHgmNBUzTOdavIfMdNxsOfhAPJIqv8F1djVVy8lg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LrH5/QNT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LrH5/QNT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA034C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758166193;
	bh=2OMFNZ8BUkifhjx1/yQajxapPTCLTQr8I+8dCLNgEuA=;
	h=To:Subject:From:Date:From;
	b=LrH5/QNTsVMlMSOuIKW1S/XUbvZQlkWRSzvuf2cpKWMvBXuR4/3aWjKt68PpvjSPt
	 0199PVfcvnsyYtgqi1arzZpU41XBAq7Mk9782YrUuWnViZaAxEJmn53uOQ8UiOXOmp
	 J1nGNDd682K9BD6QeaCnKp9yK9qr1mM1FMjhu8OtYZ+8K5LfGeGEeQ4QHV82Zrw/qf
	 uouBH0SuTvvoS4mmKR54ky+08abUtgWdrwlh4EobQaySx9XC7UJOGxDJpR1tZDkIWN
	 1iXiFNRjscY4IxQwtPHT/8GYKgSqYTVIbH6fjeOjzRVS04h00DlNgiJZvFIUZnwWe2
	 WTAUokgZQ/BtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94D75CAC59A
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175816619357.6736.10766895749349184178.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 37b60fe4b95031d9bab58273cb1703d22a1a839a353e9fd3182ee2b8aeec6829
Date: Thu, 18 Sep 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758166193
