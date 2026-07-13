Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29EE7416CF2
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783948114; cv=none; b=p7MTiiajj4kLKArE6pnj1TPWHvgyyA0NIcq/mSUWBsDvz8tzjQmPtaWaMQJcMXOog0lbmugBB+5FJwLUr7+mxNhM/5hr+bmwLJ4FwKCF8m+0JL+gIWZbVrne3U01PrtETjvMu5wjAGyVZqQx9QzwwOKOv8Q/VTLixnqgY8uHN10=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783948114; c=relaxed/simple;
	bh=grn/BkftR8PnbPHUU26QFlQwAjPc8Yb0G9/yaC+4Bec=;
	h=To:Subject:From:Message-Id:Date; b=ZmxLHnaDPqfrxGWo5HXxK3LXFwGp/jXp67+U3oAa7T6jUzoyPNuVoRIGYe8dSH/uLCBf1O1Qjqgp3djqZeGNyWRNWbZpf2DaCHND570zbUHUac3zZ8Eog93UCGU80j6myVBLq94C8Gpl2INOo8CATe/WZgvFwk+L7u29s0NsPQs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTm7w6tD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTm7w6tD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0972C2BCF6
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783948113;
	bh=grn/BkftR8PnbPHUU26QFlQwAjPc8Yb0G9/yaC+4Bec=;
	h=To:Subject:From:Date:From;
	b=eTm7w6tDPayrlIKRpuE5jzTKwQtAPfsfPwJdhRHEmU5nVcWR0mmHL+CL8EQjqdWGg
	 uRV4QcWI40D6GuhR1V/Q04XMJBJu6womSCRm2NhUoaDqrCpveRgnZ2wg3tf9uKaGfc
	 Iac3JVRopudgvS/JR9i8L21hSps0VRDrvBZYbRQhvhJ+Qkqs0p6kDk5bdnS+zqZzky
	 Jd9MQMsB4rTFJSRajcsdU6Bp8qi9H67tAuxreI0qcvuuOccL+lBk8wKfiR1+42jgN+
	 2OyPxn4sjcDb6Ko9fJwncFS3QEJUcYPFaBslUBe7WW54EFJjvVY4UN72DUgc9NcWW3
	 ITbHeDUjww08Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A930DC43458
	for <ddprobe@lists.linux.dev>; Mon, 13 Jul 2026 13:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178394811368.3423.3748633084515086144.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2de46836414f4283ded09b8f46001ec988d85ab6af23b4d30adc0a80f55d926b
Date: Mon, 13 Jul 2026 13:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783948113
