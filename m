Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E6677E9
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735781154; cv=none; b=IEtzC3YLleJkOW9IiGganazfOuwuO4c4oB+yb659uo6yng+6wRJFursDULa4vCGhXdXGkJxyK0DEYA88BHyxcCVPjj7VXfNRk3fQyUUn8nnUeAJVTZFoWhELQTcDrCsTBsVshl6CmlDO3o+KYCSg0ylQ1o+++lItdY7lXKZr3Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735781154; c=relaxed/simple;
	bh=w1r83hHipzEXIKi758zi6Ops2cX4LgsXJRPN7f6YdVs=;
	h=To:Subject:From:Message-Id:Date; b=GkD9JNB/GkZDoimpdtf7VEy+dPzkYmcUKqax/NREBsDIq8e1UIiv5aim0MuaIGRGj6YxGCxR+xXEO1nh/bGU/LrSMwzp/A/TA3x6ijnmExnIibLKMkt7TyMm7W5x3Er59kQtMdpy9F0MnB2cH/2wVhu88ypg0+WDNBlJ5JfmkOo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BcKypTqr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BcKypTqr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7061C4CECE
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735781153;
	bh=w1r83hHipzEXIKi758zi6Ops2cX4LgsXJRPN7f6YdVs=;
	h=To:Subject:From:Date:From;
	b=BcKypTqrn/vrNUmb5CAwajdpjB4NKXROCpkImc3NuZ75YDBLpNtKKM5MNmSMHXK9x
	 UgwvVcwjznkCwCI+tVwkeRHEGTa4slLyeXRRe58daqMPwNy4ViU2U0fH6Tgurya61s
	 5IgLOvzUydsfgZFP3QHCMv1t+3PgE4oiVXfLEfaQ8t6D/H3x+kaXPJJPkCe+ZOqARy
	 YMh7TTMO81VPnvicU+eA3CAUoWMkORbBLuVMyPCgGRt3sJQU+tHGXlOaT6HB7Qb5vX
	 ITPCoBONWL6rA7nwD6PuF4cV4JJreafglPOU2tIUZ3wMLt6piSxcu4u4n4ncXZeMxI
	 C2K5t+hL0rMdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93699E7718B
	for <ddprobe@lists.linux.dev>; Thu,  2 Jan 2025 01:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173578115358.25440.3960629191712589291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bdceb6d947c58ea11ed7bbdcd9ce82bc4d7048a68bedb2b5eb86216289f84f31
Date: Thu, 02 Jan 2025 01:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735781153
