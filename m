Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 60A103644C1
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785480034; cv=none; b=FYoHkNrAnGDni2gqTfko+10gxKEd9Vookr98MbSuwBHHSdaLaLEG7ZrBj9T2PNbAa9NAWkajTvdIiE813wzQpO22iHEtx5NwP43E5CQKm8SNzitgiaXQlhJtNaobudnHZDOmfxwIOOcbmArWBXB9eDJ6D0uMkPpJq3fRSzA+FW0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785480034; c=relaxed/simple;
	bh=+PzVAgj0hxxJNQJxiU27MI+0iK4JqJdCdmMUWw9jjUI=;
	h=To:Subject:From:Message-Id:Date; b=Re/EeVbYZI8vMDnoRRdjOP8LQmIMzBXZNc836Uzb+yjPGddLrPFD4b0WM2PdhHUnczaNmOZAQW+mWXxUc57AnddVI+35vvfqTR+0BbA8fvH7giDJGvhVfohSn/1LpnVG+LnWAJESk0fEDngrfpimgm9vux8rt0ZUxWxtFWyWjEo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F3i4yITF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F3i4yITF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D38CCC2BCB9
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785480033;
	bh=+PzVAgj0hxxJNQJxiU27MI+0iK4JqJdCdmMUWw9jjUI=;
	h=To:Subject:From:Date:From;
	b=F3i4yITFvehH9Y+hwxSk2hukia2/r7+KSwmcWVNMvo62bkU143rXtM0L+t1hNqYgj
	 JGDO9KJj7hlv18shpXv19jJnF3epQfCYDLmEP52rhrjK1p/d1FVyBmxUS1E+6zyoxh
	 xrQnehenv93kOHHKE1JVMMIgYd6tLsrfKOmSLDWSYIS2ajRjY3I0yoxibKDqn+5Dfv
	 iMiMLTZlY542qKGes5jltcxUEBaLHT9uDI9UWa5mMr+hNwkzhPbWFU6tItxK+j3RIK
	 8j7G58Cv6f545YDef+wb/R0nPZYhn+4mZGVkEZ0tGopRh/g9X5rdzd/tAXVoEmbsjW
	 XP4UuIxjOJSqw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF99AC55167
	for <ddprobe@lists.linux.dev>; Fri, 31 Jul 2026 06:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178548003370.27749.15653980629320889545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6f31909180b271fb4ffe5f69625057f3f27610d19e240daede5c20b08ff616fc
Date: Fri, 31 Jul 2026 06:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785480033
