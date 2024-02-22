Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 11526111B2
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 04:08:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708574897; cv=none; b=Rk+V7bK7tm4bRWoSMYHQsatGe1XX/wQCM3rv0u9iXFAv1GJSmJ0LxqQZjAsSpIwrn8x56qM4qwvl9q6ONfXLQLri/ZiBGgGExhHUxWv7n6zteprVr9APFCNVPB+3J2eHCOScgYKAGAw9ChRV72LYK/cZiutjts1oxPEogudYpsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708574897; c=relaxed/simple;
	bh=GTRRB6OdsGLGllWQ9BNjaZ0FzvI3tsbblBlyEgsUR+8=;
	h=To:Subject:From:Message-Id:Date; b=qHcNQzaxvxcAGkG0/w+8yEm62IvVf2K7gIpbN9p69hNOPUDAIDPUS5FOoSZEb2AIreRSSbWh5X8gxViRklIJTCXqRV35ZydUDGpv7lM+glJaX4akf+osfEqnBlPUO8Dh7lJ02I9wkb0tUShpJYKY5Dd3Dw5LPGH23TOBhDrI+co=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bGgkPZIS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bGgkPZIS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 937ECC433F1
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 04:08:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708574896;
	bh=GTRRB6OdsGLGllWQ9BNjaZ0FzvI3tsbblBlyEgsUR+8=;
	h=To:Subject:From:Date:From;
	b=bGgkPZIS4ADtzYV50X1H8cOp370hjlgwWtqsE3Vt4o2Bl9etGPm7p2oYNzdZ786ja
	 mcQOU2FqirfKkNVFLkIHAH4mQZeIzgC0RRREBt4T0+cjuEyegL/Yd17+EtPreFX49X
	 UBW+srDuESYVWhSW+vnQfWx5R98kzs370yTqCLBxm9ml3igKOHoMhvIyYmQpscNByY
	 rlb1s/dTtwKFmZDjr4ZuSWlrmRkEoTDyZnaBhgTTp1prFLbprbXDViaWk6a7fvRo7h
	 EcqT7mPbKpxAtMg5AC5YnxnJ1Tn7LVcU7Mw3bnL5E18z+yTKjm5pr1dClxg1fMttEN
	 6ga6sxoKmIBgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 77462C48BEB
	for <ddprobe@lists.linux.dev>; Thu, 22 Feb 2024 04:08:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170857489647.24087.16191593024857244858.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 813bdef12fac46291e40f5aa434b9883c26a78e5732097ee8596c9e4adda3991
Date: Thu, 22 Feb 2024 04:08:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708574896
