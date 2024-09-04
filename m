Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34AFE824A1
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 17:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725470154; cv=none; b=aCg6ywP0pIHaNWspxZvRY06sPcLvNGVfAK8txwpgZMqMYpNMqTRD+t8paTH1dGbDREjdSh4tJMHD1yJY5wQi0ug6fCGU5JBtHIfwpr0b9FGxBsd/thsl0DFX1uvjce5TbxJIoifC2olU7L1UWQiXvquttfLFPUw+aRiDTC+lB1w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725470154; c=relaxed/simple;
	bh=p6nnLrZMq5ZpSbS1VrMVhj26ztTz83knfAPGiPIcnP8=;
	h=To:Subject:From:Message-Id:Date; b=g2QT2wggfxpsRmIBBzv3b5W+mnuT7oOXKYxe32ECGhOOJavbdM4wLiOm4GFRUDvLndcsBBhevXZOlbW8Ni8HKBm10/B0lg3SUCzwsph3NNYZuujmTVTughPipFqZgL5vhtcUHVaTrAkpl4A8f31tfmW+DwMUxg42tz6uwzKVQvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=njz6IgHF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="njz6IgHF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9DA1C4CEC6
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 17:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725470153;
	bh=p6nnLrZMq5ZpSbS1VrMVhj26ztTz83knfAPGiPIcnP8=;
	h=To:Subject:From:Date:From;
	b=njz6IgHF4ZREWaiVdMwOJLBa+bbTYFinvMIUQDHtd+R/ed5aL8kdv97ZpD5hbnn6I
	 sauKAelQbShTphDCDnckGvBRNatOtg8RSdeXwxo5F4EWoFkPvCBSmv1ycd8ysoKtTC
	 VZ+23K9L38bwItyJ3Wrun0H3JzZHiSzpePKyNrUlqeG9oPYaLl/vVh2tRTp9FHcYSH
	 IiqdNPOGYuklgfdwfrr3QGazlsbNUpx91UT9dhf+k+gu54mwxD5FpyGlAXdCPKOlrX
	 grjijSh8s/tHnltJiUrhsXW80usIIQip1xj+oSmr6b5AgcfdE5/tG+MCaAUSXZwD7q
	 weO5SkfcM8JOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8ABECD4853
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 17:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172547015368.6890.10008170056709233803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 519fac84fe8ad417658eeb94850b3d0dec1af8ab629b8b31881c66c005a8658a
Date: Wed, 04 Sep 2024 17:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725470153
