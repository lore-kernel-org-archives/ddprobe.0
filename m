Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 515814369A
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787677234; cv=none; b=pe9zic9cmj/FhBqeERUkwkzv2ECfysoJA5zsSWhAa1CZeSSih/PTw62u8c4DesyfoLF9x3aRWGzOZGleEUsVpDnQXPw/XqE22YIr3PK0ZnDtNAhAo/Ke5EInyZLaIh1kj44gvJAtz4pN9EIDA5JB0IN7/ksCaFyYh6xbRCZlyJ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787677234; c=relaxed/simple;
	bh=WseNRHqby1k4V7TJPQOAkP20XaVuwlPo++PosvIoFXU=;
	h=To:Subject:From:Message-Id:Date; b=Dk/6b72XsIGccVwYvHx2L3FM57KMhi3ZPljBx8e7zUumKZo5wWjhwqRF9lE9beVU4PFdcZGBP4OYnJb2Qe+pAG47io4OvL2sswiigk6KcGyE5VaH1EFEHJfykN5wi8JNBBUIUvarZco40oDSsBsKKBMr8Ociz/BCjTZXTrRTQrU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=q03CFWxm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="q03CFWxm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D637EC2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787677233;
	bh=WseNRHqby1k4V7TJPQOAkP20XaVuwlPo++PosvIoFXU=;
	h=To:Subject:From:Date:From;
	b=q03CFWxmTh10YaQhNVBDXTgandtCoTp3Zpq09K7NKSJKSOKkN7KJWsmpt659DrEHL
	 MfZ6ScNgEG4OamQUWEaosI588bBfRVY1lmHs/2aZY039BnmlgpszGHs0KAXvJtZ5Y9
	 Sw9gM9jsnacq8R6eOgF0JNIrK7ars0MnMuhnuS/o1VV+uQ0d2sABz7kxjHZ6nxSTWj
	 r5Jmn4qomWmEEFwzSMhlVFkdTLS8C/0wLKIz3/sQH2cO1gp1xwl5dYUvs0beJj6w/N
	 elkxphgvrLv+Ah8Uz/W940RJoyP39p2D48SMmZOa97FwJNUUc7XleXgPcP14JdRF9v
	 q4ZDJXdpED1JQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AEA05C61DBD
	for <ddprobe@lists.linux.dev>; Tue, 25 Aug 2026 17:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178767723370.6142.17145493038609597387.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6947eca1ee0a6a2cd108b60177bd10221b10119557409d5fac6dbc371806542a
Date: Tue, 25 Aug 2026 17:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787677233
