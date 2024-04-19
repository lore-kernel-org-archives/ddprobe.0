Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56D0413D277
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:50:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713567023; cv=none; b=H1MNSxyhJNwxJe4ikM5qXjw/eIcHUREX4hjoO+sH8BnUrPgerQ4RVLuEoc7uiEL7LiOXTIxC8f9sRaHDFwZBq5zsegDzrBx79ElMrhiqqN6/bCXMI1YrDEFiGfzvAa5ClnuDjabpJ3PJY/t/IW4y7xpCWISDCT/Dy328OcBdfkY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713567023; c=relaxed/simple;
	bh=QtqQ+qLF2GkiFb+vC2F/94Xc/Z13qWi3WVILMLNCKRI=;
	h=To:Subject:From:Message-Id:Date; b=Qh2Qdnzo32X4E7mRsMootS+cvPA0wIvdFOQn/k6uDyWRomfDTkQb8Vl5/MCdw1j95Xj1ypgd9TCIKyxrKixvv602IGWNLTSlh/7B1I7dtlQWlfvkjaFLsHoF7395Nm85Nbz76I5DY6fvIoM1pJvnGfEhWDoTvRuZt+0vCXdwKaI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BB0BdBvM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BB0BdBvM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E92BBC072AA
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:50:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713567022;
	bh=QtqQ+qLF2GkiFb+vC2F/94Xc/Z13qWi3WVILMLNCKRI=;
	h=To:Subject:From:Date:From;
	b=BB0BdBvM/elD5qYQmiKEeMLDCy9JcIUDoq5bM53NACIUdlZB/OvQAQ3ciM7XZ416R
	 2pY4GGzx0lO0+glJEMO8yAqZoO+f/hODYBlyPm1fLbro9oVmihiqRJOh8pQ6hoPF9H
	 +jPH/zlXCZXqSPTWt9pdCmxiJ4HHa0a5B840JrUhi89X3cKrenIkKFzezZGvQw/L4i
	 pCUag47J/VLEVYtkthJ+q3S+xiExcS8jV6ADUXphuCnuCHxL4xZvomeGqtJ/qWTYuM
	 ZQ3SkahlfKyKo1KtKeCJ7RKdmzImOAdOL0oij48eRsFnueE8WKOtcSeuviO4DqqC7G
	 VyP9PS56kk+pA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CD095C4345F
	for <ddprobe@lists.linux.dev>; Fri, 19 Apr 2024 22:50:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171356702282.29204.12650750089819314787.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 950c0237b543a7c3c7d76a901eed77bca3337ed3aef2582a0d81aff08da2979a
Date: Fri, 19 Apr 2024 22:50:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713567022
