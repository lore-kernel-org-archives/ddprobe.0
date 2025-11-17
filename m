Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D48A01A262D
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:51:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763340713; cv=none; b=FqKR+8dFQIZhMGagB/3NuBAf2vJamkkYYaAuzCF13Rb0iy7eV2IxKWy9yX8a3lvEZkI+oj54/A+5I7GYuaA8dlR1BtcspcZdvT5odId5glJ095gr+O9HB00IEC/sDhR4WlaY5LHDEMmeZPWoFqiY8Ly59PBVxLDQ4blSOycpWRY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763340713; c=relaxed/simple;
	bh=Lni1PxIhWRfLNSuf/7jcLgGx3eZD6KCDf7ZdLsGLX4c=;
	h=To:Subject:From:Message-Id:Date; b=Zu84G4bocfiIZolbJWyn+a+8sLPXZKBNZ5C/uAI6PlW0kj2Um9oniAf7SJbPJ6oMoj6ssmWn0x8Bked6jOkCkHYe6EhzB+nasscklVyTFe5ba7xdE0NOqO2fcq8VSONeJaX7f6eM7gBSSQPqY91DPVrrKdyjGC7Mz6yVmVhIGEg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XtV0z1KE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XtV0z1KE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA97FC4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:51:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763340713;
	bh=Lni1PxIhWRfLNSuf/7jcLgGx3eZD6KCDf7ZdLsGLX4c=;
	h=To:Subject:From:Date:From;
	b=XtV0z1KEHZ2n+AOabGviYuxi4Qita4XFOsIesnL/hgEDVPbsQH7D691rehJVvm2Jr
	 +zWx2WKtTJ62Rcb7jdPzH3hPzccTjco7GMsBt1NdK+00208UbFSFZo1f/VMUHIoo/J
	 7yWovFB04GIxeWrvQSU4KLMoa6QIsg+ivX4QOd4+bMzHz3Rl05YYzIL9faQyIKZqty
	 VjzCJf6XjvQhBS+0HBTg0ihqyrbEbad/UwyGUUcvqgmENPg0Kl7fGDVnPTJ5YMK1ej
	 GbUZmSlg6rRWBhPztBFbO2vlIlfBKAanzZB3Ju4WfSTwbTmejRRuh11D6TEjFlcDTA
	 l2qrmD8nNaosQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C883CCD19A
	for <ddprobe@lists.linux.dev>; Mon, 17 Nov 2025 00:51:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176334071359.5847.2548817867977851545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fe7927f432cfef26e675626eb8ef40d9862b694fe989fecfc14900404badc019
Date: Mon, 17 Nov 2025 00:51:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763340713
