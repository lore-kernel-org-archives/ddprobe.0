Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D9DE157469
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:58:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720785503; cv=none; b=Qnd/YvhUyYkLDSYLjX7y9nLy6UIzP0AGILr3P05yk8+uNA6o0PkGEHBwvztMuZB+gNUkAF5sGx+rmeob4R3VHhA2+iaffcpujfNdHUrLmEzBCF4ASdbT6tDO0E3zWlBxcfuLdwCBhUodhAl50L+o5fyA6dDmAqOoB6J+utfiQ10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720785503; c=relaxed/simple;
	bh=jkVy7VNOA5I6nx0UYGmyaaOWigIaEe3nDuncPINYavA=;
	h=To:Subject:From:Message-Id:Date; b=KSgRdgMuYwstypD/xSPHStVbdV9MJgWXJvb5KipPYH9hHjxLbrCeuB/2xzK7MgNRzeu681V8eGUqy9bcfijMT7aYklscjjwlAbKj/Z3DIADteeqKpEHEmqtoT7gt8o25uc4C2yVmkEMlYmL94u11ksChTn0PHqC5kIH1wDhHHVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HcnO2G3a; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HcnO2G3a"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0481C32782
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:58:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720785502;
	bh=jkVy7VNOA5I6nx0UYGmyaaOWigIaEe3nDuncPINYavA=;
	h=To:Subject:From:Date:From;
	b=HcnO2G3apLFVGflgUs7J6ZpG8oQXx893MrIqlmb524USE3S6LO8bmuyx9WDx0pcwh
	 j1WmIZmYVBH/U0o167LY8z/vicKT0ww9AXGz8STuMTk2cBw3dQUV1vjhLf6G2VOf+1
	 B0LnLO7GcLv4BTJWmc+l9NWm6zA+4/nIwLfC2PMxnUFRs64whpria8QOk5iqP3EnRD
	 vQWz0ClE5e08W/+2Y+NJZEUeAkyn0uTCzGmt8nkQZ8sRBwDSS3L19piBSDlX+ovtFq
	 8p29s1/RSUQFppeltkYYSJCQfta+9gilSrrMAJL9c9Jc3FwP8JnsqpVpH6Y4aRn4h4
	 twBjnZHG3tOzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C64ADC3DA4A
	for <ddprobe@lists.linux.dev>; Fri, 12 Jul 2024 11:58:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172078550279.18897.11807784132571781416.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f718752a56e126623ce5af9bf00aacba3eab86243144e21c42944054351ed81
Date: Fri, 12 Jul 2024 11:58:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720785502
