Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 512C21A2390
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744252194; cv=none; b=VCKf2yk3UpYUTpeHnIKpe7mT6tfaocugITYKIlqfl9pfio26STda8tF/DXQ3gQx+s+50FhnjMXJQEeo6afBLTQRk3PSebk4BL4DKt7dGPcHHSm3JqLSQ2GLNtssj8tA1SHOoj0e3OoaIf6k+B5k2jw0F4fP1lwF7K7X9XiwanQY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744252194; c=relaxed/simple;
	bh=W23KdVjvJ7nRbgEUS6oDd7XHxugOkbrB9PYTOEJ0Ccg=;
	h=To:Subject:From:Message-Id:Date; b=ngpv744yEu3o7YiZnOzqle/KCCoLqbAEt6RJcKlYzlwyh+HfBBfBgiOV0gvhW1N1XcR3dywCgqnpz/bNKRWnumBG4GOl0fkS/NtDe/EFg4Ff2Aw3EnGwnp6hxb2qVSD+Gr0W42ftSitoUI2iIxYOz9OI5bfHnkehwCWs+SHLPI8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LWgu40es; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LWgu40es"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B18C5C4CEE2
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744252193;
	bh=W23KdVjvJ7nRbgEUS6oDd7XHxugOkbrB9PYTOEJ0Ccg=;
	h=To:Subject:From:Date:From;
	b=LWgu40es9czq/P4MOpmnjt9DLwNPMEhDnMiYWw+GYunPJhAeaCvbQPsjcFaMUq3f0
	 +cSDequZz1CmQZHNI1kd2J7eC/5gUTlsHI7z3SpnGH0ViVNUtQvJpGrdT8fVEgdxmF
	 sOz3dq/5ZnEQ0ztwVEehww1QsAoW4U4ikdX3ANq6QqFhwnS31wgkM5Z9egkoxUyLx+
	 xVyoIPdIeKtF5mgPrOpq1G1H+Q6HZ9A+VFYQMAOWujPsYujP+6h8jybXsjuOn8hJ2m
	 EJVhpNHePCnoYwidWpmJidORteW5N6MmnJn/9lOA4lsCH5JtgZV/L2oOkNY87oH9a0
	 I2vobERitJxEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7D3C369A1
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174425219362.19370.4023124300678514441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ce697f19fe366cbffa1e1356a63d488e22371f0d0a9beebe6806a2018002b796
Date: Thu, 10 Apr 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744252193
