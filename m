Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C28A627145C
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758398993; cv=none; b=dmFDV4+Dz9BHJFBwQ3aF1/tv6Zh43QabWMPKAdUzfIjq6fvHsuPmhPaHySqLMX7yhJVGE470mE+qDOphiKCgrirvm7kYPT3KsCVUoJ0NXoK5N9mMIOI0W+nUEenZIWS6+IVwo0qtQIzSJXNv4ju3ZpplmZiAfHWrlJ+RXr4W5Uw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758398993; c=relaxed/simple;
	bh=9abb0oCUu4NFDbbfa91+qnJayKlrHc4RRyukPVtafjU=;
	h=To:Subject:From:Message-Id:Date; b=m1zufMsVO0KpCpetphyvyIdFMkWATACKA2Vd5o+vtLmWSbYllTdFVowHXx0Ix2sznUXvZn49BA7JuBr9gpwuSUlLlM8I+m7n9kEtdK1zxYUNORoJ5WaRtKvCft1VSEgX8KeOyXCFfxj2eEAkb+NvsF4OiSsmzmWEPu2As3UcFSE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q4OSvPRA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q4OSvPRA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3196C4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758398993;
	bh=9abb0oCUu4NFDbbfa91+qnJayKlrHc4RRyukPVtafjU=;
	h=To:Subject:From:Date:From;
	b=Q4OSvPRAd36XwHllTwqwN7mbKw7LDVEt3BvLiiznr1sahkjt1MMdXT0+Y8PIRJ2YO
	 QsANSNUbpZ7x9VmbjtvtZ1oTlKpSCxKQZKC16zmmZeJ6Amsa59/Y0rKqwOMpBBpZKB
	 run0IsIvHnm+ZTCIRhFVl1fpDrm/HOH/uhSPaFzMU+L0cJd2ipm34D2l+DpKc0oZ0x
	 zr3CzyKVXX7VTVmaMIdlsbWps6YNYYbgDO7YLS2mGTHaprTnH6RK0gaW81/lhk/VGZ
	 v1On1ReyFr9rDFbEb+YTfUCk9KmFCJ+5WEhmTYh/imxrD0zixV3M5wFlClqut2V4CI
	 0c1j1moIIgKyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94BC8CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839899357.5354.651318829904970862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6b30bd35ea55566913240486e967d4b84f88a57dd21a4fc8793e6a9ffc380c37
Date: Sat, 20 Sep 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758398993
