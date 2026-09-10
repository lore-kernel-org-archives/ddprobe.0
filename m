Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 51AC14825A3
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789042834; cv=none; b=C1brtLbwtLLUgaX23IuoanBt5zAglCyu1Qkmzj+Tu3dg8y2i7eJB+9fsCblaiQyhoGNzsq1H27ZUijUeQzBVJ9uBAtXcWED00n2EZ90waGPwWSCtk+3ff5ZYI0YZZqTl4PbA++tdEKJObNXrhd0GhanOxEmmtXD+dyrdaejAiKc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789042834; c=relaxed/simple;
	bh=ewBxbQ8XcU8olHPli3lbASWLiryTvH3I9VF3jM4yQUU=;
	h=To:Subject:From:Message-Id:Date; b=N4ESOQQ8A/9W1ry7FYt9J5dB95AxEzHTne6BLJbzlIN7JOAe2c9Sh5/jPSJ4eEGkhdcWmfcksUOEtfBOl5F/DK8OltDhCb4byzQdOmvpPgrf4iI8MvEU7snw0pyHzCIoyUXgaXTMULznUlYV86qbhYxXe13g82b+H9zPVm6fWHQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W162RaIc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W162RaIc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD1A6C2BCC7
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789042833;
	bh=ewBxbQ8XcU8olHPli3lbASWLiryTvH3I9VF3jM4yQUU=;
	h=To:Subject:From:Date:From;
	b=W162RaIcZVlIsz3YGxNSzSJTry7rNMO4M2CHxLd1vzTSW/3xBm2ZD5cbeML7TEtHr
	 Yk8pOlc/FEZlyM1DEUWtwtRKMbTI8pGL1qXMptTk4VwEQi5bC4s62X4oNwJK0Q0ZwF
	 L5zK/eIbMi05MI8m/+wzU5gtMre4zeJIiRGy38rHuHRKYplAgPNrN5ay4vp/ZdXDyk
	 H5Sisa1Se5hxlHqvCss9Xsnbfxyk3kG0qsCgrE+ijob9vFK40OTWualtQTUSCn1Ecl
	 siXo82LNX165olvCMvRlPTNPVok2biVic+OI32yX10KqW7V+4nu7iu3hcLYuqvuaIK
	 vJ9BnCz22gDhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9718C79F9F
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 12:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178904283368.24072.15351329277908288640.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95f488381fda6735e6b08179751b8834c16cd366442e58ce60ac25516a4ef577
Date: Thu, 10 Sep 2026 12:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789042833
