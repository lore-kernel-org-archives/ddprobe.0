Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1562B2C11EB
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760003394; cv=none; b=uKlbUXN4ncDVvPlk/Ei5+uONz1S6piD6dw2RRZ3QnVzp5dsIMn00mJNRRoZWaJtAdN0ZuMbkVee43Mz6AOfFODTfDLr+QIOILJVIGv6Oviequ0LjNHZ/AEN9BAEO78VXlhuvtvpPdMSmrORF3DmWTmTuwhAdvdzLoStdgPftezw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760003394; c=relaxed/simple;
	bh=i/4lezTZWydE5VUKLHDP+yw8KF8YZOKWSM9IijBQxIk=;
	h=To:Subject:From:Message-Id:Date; b=RmFIPL28FZeOWJIc6Hqh8tYOt9nABBNOhgUYDPO7A/B91Wt5E1MidQYhPWRaFGfJUcSWawZgsv9z0+FeeB7tvGGSHsRbw4i8kRAA5v32kgw1UZtOM2ZxQKOjZSqmvtgN8AVkNz6yhXLHK1azVg4E6Aqz2aBV/k/ZQ9GPiesi8Pw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RMaCWJV7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RMaCWJV7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A16BDC4CEF5
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760003393;
	bh=i/4lezTZWydE5VUKLHDP+yw8KF8YZOKWSM9IijBQxIk=;
	h=To:Subject:From:Date:From;
	b=RMaCWJV7zXl+Qi9HPwaAhErHtb51kPI6LI/UPVGP59v0d2PtUZn9V4cuQVl15JWFL
	 CkveV2Q6B8BkKFVUgMXKKVoyOP3T+oWMHnWYqDNUyWOcfbg/y00cEAm/yNXEJO9vxi
	 j6hCMigl039OfATKjygXN5QXlpt6HGs35Yxok8ePJaD33F1viPw0zsgx41DhDrdqEb
	 a6PU25T66EhJny+zsBYvOQ/XYKfYo1NasexBwRs7ujSiRLPq80CAh4An/UB9qjNRsn
	 sif/ZhYwcmj0sxpcdr+ctk1xcdi4L0qH0RZtufpOOKv8/pQKeZQryJL1zOMh9FUtC6
	 rzM+vZnnpAt1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F00CCA470
	for <ddprobe@lists.linux.dev>; Thu,  9 Oct 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176000339359.24086.15908739284302097811.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c05634b5e20e9dd36c1e1d299de72d9809cc19e59771d902bdcac25808716fd5
Date: Thu, 09 Oct 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760003393
