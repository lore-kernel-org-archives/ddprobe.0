Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22BE0194C77
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734896154; cv=none; b=XkomjHrApVgf6wd/Nv4YEbwVSFycNTUsZepYiaXk3+5tvjjN55M8vyWnc8CRPEIcUr8KxwT4hi5jOkCpuv9z1/R9+hXznbz/khuvUHhqnP39zdEqJ7DGsLfmfKR1Zi4MOgWsmYLUgIX1TpntYXQqonD4m5brrJODAyPPpbZXM+c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734896154; c=relaxed/simple;
	bh=JjQ0Pns5qYhvO5Oa2tsE2B6gcixb61u5BzIt/mCiRqM=;
	h=To:Subject:From:Message-Id:Date; b=qxpnvkps9t+VrU3GyrvlaWWyMuY/FsZz84FWV2ZA0N551SHo5FE+UaFMzOKbzeEfE8b2HU2bzFo5LSbgFY6ID+18SJNus6aBzNaCqcG3YoAZIunCT8QjnARoJoUUlAbE4zZllfJ1jeX2bFJdTH8Ugsomg+AuEN58TRA7os5Apjc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O64slDvR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O64slDvR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACE02C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734896153;
	bh=JjQ0Pns5qYhvO5Oa2tsE2B6gcixb61u5BzIt/mCiRqM=;
	h=To:Subject:From:Date:From;
	b=O64slDvR4tg8LG4G1InUlQd/mgiRCAxlnhQiEDDTz+vyc//xeQWJaYcLYQoDJu496
	 FZIieocp2l3dks3kABV5cDt3v9iGjJjOIjEBbGNDjx2R8cg/HHCCHDecex2fERkDel
	 luVLI2Y90tK3LAIToNpoEf4WnEvVVBXGuml1we20S6XwSDyQ3o4hA+rzZb63lFTIdy
	 2M1L0uC1hupe2vuaJaONxjacYzSIO92XrbA1ZGc7ODVaz8xXgcfN5AQOzZaVGAtObX
	 4gQtuOHjlu+1papIt5hG16p7erdeq/gKmrPRph+bM/20JZnRf/88wsKAajmABLmfj9
	 kVsLODxcPayww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98159E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 19:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173489615360.5997.8884254400890558075.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9456e16e1d5b46b41f1069f0a4a84b1596b17ef8ef56c46545de083a905c98
Date: Sun, 22 Dec 2024 19:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734896153
