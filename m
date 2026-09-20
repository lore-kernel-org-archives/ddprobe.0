Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 688E33DE43B
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789889434; cv=none; b=BN7cK8dFQZm/g80bZAexSfTQ2VLzy5PAzk3OckvNVyBh+PuA+mpRXhc4TXOJzJ5ZBzUxuPAaKmfBVdwLU3XO1xcTDRCi2FeszxZOsnm8/i691DnPV6GIzPYDYIPNanlbcrYKZ7aZubToUQvAERSLPJS7vnfkU/gDLlaBQFkkXk4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789889434; c=relaxed/simple;
	bh=MZtNXxtAfyRd0CtpgSdYs3Lkmk4S8Y9LFiy7yFctccc=;
	h=To:Subject:From:Message-Id:Date; b=rWyFa1szYWy9rV9Ka7L+IzR75sAEy1KTzoEAKqRMOH3VC1FmPNcV2+oBpOiov8vupilCTwYBGIJmKqSroNRXH4RJV4DXhKGyjWKpMWdY5b9p7QqqQzYzmA7CjoFCZejlwzXdPsNwHZzKBwF/dIBgndNuIQ00Sxwb9Z3GETPj1g8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ORXW7fjH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ORXW7fjH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D605EC2BCB3
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789889433;
	bh=MZtNXxtAfyRd0CtpgSdYs3Lkmk4S8Y9LFiy7yFctccc=;
	h=To:Subject:From:Date:From;
	b=ORXW7fjHlcwPH9Pncoqklg53k9VqWZgdcC8Nmj2OVxm81rm1IahI4brkLPU8GQpdI
	 jscQGQu9SFVoHFqFBYbxTTIrBvDmhS2ysYUb0WiJngiC7bPMjOdTzeZtpVAUy2uTP6
	 bY04Q9NFNTH4+SH1//MrR9NwO26UlBNsNkFb/+Csc7jwyZ4OAUtOcc3Rwz8mrtb4zt
	 U0NDKo8xXWhI9NUFtVEly8BWEHTSZjrEhUI7FfJ57bd1SF5RF7PLUh0pxLoQz0zv6S
	 6zihefVLu5b0nBAYO/aS05+md7lXdCg2PBXSH0VMaXVlXXYKd0I0ftU4n+klAlPPy1
	 HexhxseLuvb2w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD9C6C982D0
	for <ddprobe@lists.linux.dev>; Sun, 20 Sep 2026 07:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178988943368.8974.9041834903526849562.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d9c149e529332c91081136432baa2a2c555a77b9da7f1811fd7b4cd2145006ca
Date: Sun, 20 Sep 2026 07:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789889433
