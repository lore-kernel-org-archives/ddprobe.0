Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2929574C08
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 21:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728337554; cv=none; b=L7ICS4qfMEiKQDbC81KQl3AvKPNRxJ5GzOAkke++ZCuTyQbOgV6sOCdajo2sW7MpEFyugBCzrMuTkMCw+BVXl3i3qbYNmGHT2nedJ/j2kDVoN0vxKl+DRROdyz8XcICs6hDUK7UaxDffU6PwrFHU4Q6LQmFRVNIC/Ex1AYcmySI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728337554; c=relaxed/simple;
	bh=mcvU2Ba+Lw/yKTfoYx1UNCfwGrKvpUGVEqECsnuRcA8=;
	h=To:Subject:From:Message-Id:Date; b=giVHSCi2lNEzg/knLaLn9Bdz6tpgQIx/b8lMjznJNMiRqDmuncZed+cr7GQL1x9g+8VOUZ7+ot6vr4KIP8ECTqRtpX5d5zXbehv7sjFzooUYb+UTFtgUjCILK6aA4LnpLDs/4ZGP2rnqOkRSr4htxoQShuyMDvhGt9PBgPMnWgs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k4RWtd2D; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k4RWtd2D"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1CEEC4CECD
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 21:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728337553;
	bh=mcvU2Ba+Lw/yKTfoYx1UNCfwGrKvpUGVEqECsnuRcA8=;
	h=To:Subject:From:Date:From;
	b=k4RWtd2DLxjMGGYCP4a/eXIEgYjCjpFU+QeXiQSnC68gL5EpgwtiT0YuUb7i5OzeU
	 rH2ZNBqeQi0ZQyBdilhigPInKcS2E+Uo2aE1Z9JUt5jBpzKs8sLnFw1j6Dj7knusLZ
	 EzBOcm2p3lbSyUOD5GZ0Sv96vUZEuO4Y6Dn3eIO39MR9pl1HAfFk6dQ4i0HPYOSDqV
	 WIvMDNxQdY3ZsNE02bFGX8wmUYYAzruB35ajhJ9rJnbSkSZvY0xmwKWl8JYAGcyShF
	 OZ8njEtoERh8sqzovGfuHleQq7RJ7k5yRoVYYAawFDF5l53YySLmmqWTKMMEka4tfJ
	 sYiMIgXw40Xkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A596CED243
	for <ddprobe@lists.linux.dev>; Mon,  7 Oct 2024 21:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172833755362.5350.9770887681503372885.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 57919750440894be4d525c493558ab01b49b97f3b7ae8fa927dc49cb6ced6579
Date: Mon, 07 Oct 2024 21:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728337553
