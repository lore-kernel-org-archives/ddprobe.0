Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 81D442475CB
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788569434; cv=none; b=pPRGcr1nUAANa7cNdH0uKndQGdORg594ig8kLkJ/s3wuJg2+LyaXHcdgYTapoxle5qu01I45TPtTgX0d6a1MU4x2C19vSFlel8O296LcnyrbPiTIvNHrJ+S6LTtZFTbDQQniEJ/2pziSjIHGdvd/oOABjfVIL5SqQYL0edA3B2k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788569434; c=relaxed/simple;
	bh=TWRUS4ipr/sjqRtmqFslvGlLi0ycINOgTaiIeK725wo=;
	h=To:Subject:From:Message-Id:Date; b=BdRT4nb2fsX6iv90WwF6FRIcmj/4YFUvrICdyK6C/LfnQhdlbaNXWxcsirOaw7mlPV5xRGO9v1UiGNCpO9EX/sdri5NxqsUdftvE81XByZdGVo6sUbOqO1p+CkXpjMlaxhdW9XnQ9AFrOt1cMg+rIrrSnwNyVfwK/AJpbOhpNzo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ano5ylqv; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ano5ylqv"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7416C2BCF5
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788569433;
	bh=TWRUS4ipr/sjqRtmqFslvGlLi0ycINOgTaiIeK725wo=;
	h=To:Subject:From:Date:From;
	b=ano5ylqvdo5SiTUJR1Ir4rvO6arpPH40/Mj5VMtZ6D6GfXmBJ7s8SlndT0rtI6Vrr
	 Htt0DqKEV2PtOONa/MXu71wNiTnWlxDq6jhGmvf/Re2/fEVKEyPMWwkpn7Mq5nxhAW
	 P0+23QmSxzDGCm0NhEN1M515cUtzx51hbe2hInpZVIldL6+O/cm7U6PcpXjQA66Wus
	 LPWrkeYNxbn/HHL3W3sY+p+EnBSFKqd42z5Q3uo9dLPTB/BL/TFdZHIVfhsxaQXQop
	 FJZbs2l4lmsNWgUp7LyJfYa1tnbu8zmrfp1IgknjrFXG3rrDhG/CtoVVceEpH2JK9g
	 xfQQvfPSDbtDQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1182C624D3
	for <ddprobe@lists.linux.dev>; Sat,  5 Sep 2026 00:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178856943368.9531.3574381948540864262.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 782cb72eaf56fd7e7ac96202585bed8ff5bdf3cab25bc362f6a81870866d43c3
Date: Sat, 05 Sep 2026 00:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788569433
