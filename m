Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0B53E1E505
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766017434; cv=none; b=UgBdGJPQph6luJp8Njsz+scgyZa2qM3GSUWvpaS/s/kztNy1Wcgpd2nVNuJ9ASBh7FFcsL6NSO1wDqrBO97voPn4vr+e8abCzqx52A/giSnx7mQFjdxVJzuJs8JZGT0RcxuM8b8r62gnx/5df1psp+ijNfszSzHWKkO/9cs0NIU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766017434; c=relaxed/simple;
	bh=Wt+zWvVSgwf3Sjzu6puPvpTKFdHCAcaDchbwQli0FH8=;
	h=To:Subject:From:Message-Id:Date; b=O09q7jsJ/N5xK6vokF0PdhTesIptFKCvCNmZO6c/NulphpadEHJC+YG121MwueYKwPOfE7Y95uP42DbF3kYaAlvJl9clvB0IS+thOaVwjCAmuQJo4XJEpCCEvt3iDWaJmHsOVwc98Eg4xBqfYYQlvHmKPnzu1wt1WQFAPqphHyc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bG/R2nMZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bG/R2nMZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A395BC4CEF5
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766017433;
	bh=Wt+zWvVSgwf3Sjzu6puPvpTKFdHCAcaDchbwQli0FH8=;
	h=To:Subject:From:Date:From;
	b=bG/R2nMZgd3PLu9ZgBw8UJIO8EPvaGrmM/lyuISYz8tmLbF12AhIKGKxzWc17uwvG
	 oekdDR0SnRzQkkgXV9mXoZGXMMI/OSDdvhhv75MRptiM3akGKoWEi/9rbjXwSGHz8l
	 SN4azGHsFN2Ia+ZkFVQC/FplXmxrDnpg6/w9QGmrVw+39fmY6LTPudO1OaAGvEbQ5C
	 mhRoWsqpQBXtlfADw76HTom0R/swcYlEUhPVltIBMvxdxt772KkQsx1DzV9RHegf4p
	 8sUMacpfNzxifIjERZJpAmKCzTj5QI/0cTvgnJ+tqQSU5GBxkjpe0DqrT0zr5/x49y
	 pwpnBwlArwmtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92F9BD65C7F
	for <ddprobe@lists.linux.dev>; Thu, 18 Dec 2025 00:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176601743358.29731.11902570735696187833.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ec010538d07ec8ffcb5789854f3ee87e9b9d33f227d63a68c0bd749bbf8075fd
Date: Thu, 18 Dec 2025 00:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766017433
