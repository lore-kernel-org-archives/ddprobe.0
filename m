Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E4C51E495
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728738954; cv=none; b=U2QOMDPXsj/aEoempjJzQVWQPFWHa/OisqGIS9J5WhdgFU6PgeqBJ6w0yXjGbMOJGThOcfu2pQSUlbVb5MrtiNGlrNcMn4L8CRc7MFBFn0KCPUfo4wHHO6kV1g+fO3hVtMlvEHCUtxLG0UEgGjFxOlMPC0Qjyguxpw8y3nsO014=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728738954; c=relaxed/simple;
	bh=pEvqHi5GM6sZJi8XfJAT6IncHQnD3fAEAuEOl8gKu3I=;
	h=To:Subject:From:Message-Id:Date; b=gwSApJQsiPo4gW8qRMcwx0jd0pG83iv6IFM9s8o7ZBhyizw6UWUbbTFIidADb3OJ1/iZd1W1arnqYHj3RghVWkj46UxhyzOZ3aM3JxUtQfxzhy6r+HFYew5NSWnyggusyfRJPn5h2bGHoPT0yJeqdn74/GLyawzac9fceb/JVcM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aSw06yPw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aSw06yPw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B60DAC4CEC6
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728738953;
	bh=pEvqHi5GM6sZJi8XfJAT6IncHQnD3fAEAuEOl8gKu3I=;
	h=To:Subject:From:Date:From;
	b=aSw06yPwgIgkkf7R1Z8WWqnd/jONgPPxblTepb5rUzuN0Q3cCzJcdfqHddihhgKpm
	 jAsRsmUGdeZLoEMRjMCE+Rd5jplS/RoiWbbG85YoC9JAiOT6zgM+va9Tz7f0eR1wO3
	 HaruGCI8LX649P9sPJF+f2T2wbkmysDCnYdQ+NXiyZbea1m9fGDLatJqh0fbQhJdcU
	 mK03wwTfJQV1z7InSL0K2x/sdiZSP2xNmXAJKtddMUcsP+aLN00pICGC2xPoLZ0vps
	 MkyQGEBsgw5eVGCMqveqPRFrGpYUxMXOMc1VlKEwI4BAmoT5i84lIwsuR9lvWcliIE
	 KR6Bai10wVHaQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A72AECF2566
	for <ddprobe@lists.linux.dev>; Sat, 12 Oct 2024 13:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172873895364.4617.1624189134954636339.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b9ddacad624e29dae6a44c087a2130cbcf4f095294da9d461b9d0d3a6f34c24b
Date: Sat, 12 Oct 2024 13:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728738953
