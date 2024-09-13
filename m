Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16CA74A21
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 22:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726265754; cv=none; b=SWaeU6ba0lMYycPCQCmmo97VkSUEG0FGD/Af0a7yGoUArcLlWSsfsLELcVI2Qe3xr+Xs2Y6TgThHFwPIQSFV6m7slfHwjaHt9rWmZeMv9QvDvSTMt+k2L1IjJwy4TerKhFlMLQmkXcwtkcf1gXTe9iY4sIYJb3hVjUU1QCQK44Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726265754; c=relaxed/simple;
	bh=XR6Wsz2pnISL9oSoe7ZLudfHaSY8hHPk3SIaW83gQ2s=;
	h=To:Subject:From:Message-Id:Date; b=Bs4ugetpCW0EnmI3aKOmqatL6Elp2Tt4K475GYm+63VgSHIyVdOiJziJ2n26Iz/7eCsN3YOc58iqLYJcdBwuEqLtVlAPnHoszePim5h4IstuoG6tsBaMA8RFW2XKigtr5YuftB7QY1L+F2qMTsovBWUvQzOQOUMHm3Kr5Liugp8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FQS7Qa8F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FQS7Qa8F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3B61C4CEC0
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 22:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726265753;
	bh=XR6Wsz2pnISL9oSoe7ZLudfHaSY8hHPk3SIaW83gQ2s=;
	h=To:Subject:From:Date:From;
	b=FQS7Qa8F8d0f9Tc2SwzUFk/8lHOpWdSeyKJKpr2kt047FmBk3WnbX+dJfjJEVHzgq
	 u07l3OEsLO/za0YrDu/sd4ayT/7n7B/q9E/t3G9GdqZ92/C7tPNvfUZQ01+SDih0F4
	 eWoP771clw24SZzUxhPvlxNa5QQFuWEnG39XoWPyhmwviqVnHMP18gWFoKfvB1W5fD
	 B9JbIm4iY9nKxqPcDMjMTalz2nftVbQnkDBlj1ra4XCSh5xnEF67cF3xIhRzVNtKRw
	 6Gb4zMO/uPVBN2eT8aOB1aWsxbmmkUbYFoIuQDFytvet31jzQH89nOOroAvPLW66Rl
	 KRBpuX/k2fEeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94822FC6172
	for <ddprobe@lists.linux.dev>; Fri, 13 Sep 2024 22:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172626575360.4710.571785414982346196.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9039c65ed8f63f429801d4b51b6f0985a6c05360a0c7877f41e12c07caefcb7
Date: Fri, 13 Sep 2024 22:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726265753
