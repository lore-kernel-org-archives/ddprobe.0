Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 336DB19ADA4
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747936194; cv=none; b=GRZeesM1Mg8RFvaIM8PP/RWG+COfeB3OUw0TC9C1Wlkij6TILNex651KsBDFCDtI+saoDHBigtoF51SLhqLbE6b7PIOk2pwCkoNPqhAGkd6d/sjP/NWGaoZ1LnveFk//8s9kEQYp3+yzyTwhTKc3yZbvO2No+nTBJTmkQYr8mVU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747936194; c=relaxed/simple;
	bh=qZWNa1ucjat8Ldeo5yjNMrwHEvEOQqK0BWQpQ399REE=;
	h=To:Subject:From:Message-Id:Date; b=SvQHulW6KcufPMc+D95Fvw7E/8EOHp7Nf1uO0KMzaqNKKVs8H8AHe0sM/3EQj+1T1elm1Cla35sykZ0cUBSJVpjBfm6Ssc23sYqSCqsZbtedgU4XyZtshQB0bUcU6AHsTx3e49ULukc6yZEIUw56LwKNaMhjLl1zsmBH96yker8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UHLKXWpZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UHLKXWpZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A47FEC4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747936193;
	bh=qZWNa1ucjat8Ldeo5yjNMrwHEvEOQqK0BWQpQ399REE=;
	h=To:Subject:From:Date:From;
	b=UHLKXWpZmyCT2F1KBuFLynAy5CG9YbMNRvdZufMkbjYs0jYUS7DVzQqstinKPaoL3
	 9jccTEEJZX/apiLly9HCjWyo1N2/eaA5w4SkZpPIiG1ZBPcKF7KkGosb9wnMofOBDW
	 6V0ha758HbjoRigccmHb3wzRvNX6jyTTUdck2+tKGgZDUsJGsv30l5Gt7B8ASddShU
	 HJoCfxACDDgXXwXs/dnhPVb+ivLonFmiphfSMS765iPzLwln2I2eXcFzbFkZEzHOy/
	 N0GCdYxzw/Um8JHj8OuT+Saegud4kKVyeg9VO7oiYlorJp7ZBxsBrT+W9FkYSl3epF
	 wjFRJ6jlChaXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90EB1C54E65
	for <ddprobe@lists.linux.dev>; Thu, 22 May 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174793619358.20278.15279746268367578597.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cba54bfd22e008017f8c3cc939522d459f0a4eac9653d1e49172af8fd335ba24
Date: Thu, 22 May 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747936193
