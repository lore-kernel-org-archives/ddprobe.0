Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FDD837B030
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787237434; cv=none; b=UouApoEHwHn8lO4P7SpbCtL8DPb5ss3kc4pALTxtcsCsWESUhdxPplkBiiUffxnr4L3wrj4ayYSSLEfewItRBjwCmMnP/DJvW8iFIgEkfKrnVXlZRCXG8Q1GVzsYsW5VzrCNfNvG7oyQPCodPrgaWhQvouHZqlpCp7FZaPgyjFE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787237434; c=relaxed/simple;
	bh=XyDHUzj9Ew73fvjvJI/Ia7C9OToH4uMdpXKi6W9c5Tg=;
	h=To:Subject:From:Message-Id:Date; b=coBSHOVNsHYXqqPe5m6wH+8CXaBNOWUix0LL82IdrD0WB5BYFMV7bstMqm1lYavfidpsjsfMzSOMnrbLKxfnfqUxKGVTzO2IVWM4gjoBJIZ1BRcuMy99NePyy1/OBvclVwlo4TkGDg1vb2Fq+O9V68NWecYvP058GtOa9sJJqEI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WIZbVX3F; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WIZbVX3F"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2CD4C2BCF6
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787237433;
	bh=XyDHUzj9Ew73fvjvJI/Ia7C9OToH4uMdpXKi6W9c5Tg=;
	h=To:Subject:From:Date:From;
	b=WIZbVX3FbgXysf8LI2Fhxv+83AVX2XlG8j3vFUzIZuekG/Z+JtbrWBjD70aGMo5Rp
	 M9rS18zTIfP0VPpjPjFaZWh7pYQi8J2dLVQgA8G1TwFjdGJqQp56KEbH7He3mMDNJq
	 Qyb7+1ZEHTDI+ENIwRzh/uOwcN6EEGPCFtkC6mhdlHUWN//BnRqO56fj5yGSHYi29j
	 aSoEpRS8MSTw6NXRMq06CJino+XXoBbmnUf90C6Px2v8Iz27YaAlo7mp3xxIJQWEMV
	 Tbdd1e03XWVNFF6c+7Qbqb22Kb6lEyXb3MaOTffGYjyYpIWcATW4UFvUa955z2B5Y+
	 P3eq1Ht4x44sg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B05ECC5DF81
	for <ddprobe@lists.linux.dev>; Thu, 20 Aug 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178723743371.24486.16645492609561698706.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d4a7b94ea5b411bcf5bc56f398b166a305169954f66f95292c5b7eff65b6220
Date: Thu, 20 Aug 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787237433
