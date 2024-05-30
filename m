Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FD0F182D0B
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717083263; cv=none; b=JNVT78NqhDUw5s0T45cFtLk+qQb5xlcvWznJZCvRqBOD6FxN/MDkNgWFExbjlQU/1C6/4de4BZR1R9ICN9OoWvtXCuJSHWc/0xccsLpnwhtYCv/L8S5PoBNeoarbrJ9lDjTEiQp42ydodjgQGSQV7VjjyDlZGoq9posnIOxfOZQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717083263; c=relaxed/simple;
	bh=IPH4sXYsqec771HfSTk5xCpxzoys8BePoRWgDCLfBwQ=;
	h=To:Subject:From:Message-Id:Date; b=kHpGzSa8Z6rDZTg+nhua72GsDzCFGcsESIWatBIvwl376pjfQuDBgfEFSB+/iFbwuzBvyQFh0zTB196ZZK3bz0XtYOGadPzGw/pv5Z+xcO8o67spfUhRa+oayshC42vrAk63RdZG/MiuDqfWKi9v2GkBB3RdqAzZeQwnrukpyVs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=A48j9vMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="A48j9vMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DCB73C2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:34:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717083262;
	bh=IPH4sXYsqec771HfSTk5xCpxzoys8BePoRWgDCLfBwQ=;
	h=To:Subject:From:Date:From;
	b=A48j9vMZDo01jYt/OXsLMSkJIh5w4zIKoMJ28vrdGwFS0Pm/OxT18lywWXrCT7CWl
	 MviH8u30amh1lm6u1/NUY18uUSUbkt2h2YP94Nq0qM9tVYwv39bd8q2VDw1bU41f/m
	 eCGB5VnfgWthx2mArEH9H835PtW63NKKeYEG5ye2/KVIhmZogE8Nl5xgbiuYANqC/D
	 l5Zar2WUkTdYMKRFagwC5u4d2TwEKeWnINbSsHKSIlTKTG6D/XtEzwjWPbR0aClO6e
	 nfcHGQUBHowHMER4hip80y/ua/dZWFMj9xijXAgekXLDAWleOLR1CF/yr8345Hm0bD
	 NMT8uEJtaaY+w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5B79C25B74
	for <ddprobe@lists.linux.dev>; Thu, 30 May 2024 15:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171708326280.19101.14333670501581705871.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 686e8255588567eeb612a02f8454b9f04d91eda4a926aedc123390a8cf01841d
Date: Thu, 30 May 2024 15:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717083262
