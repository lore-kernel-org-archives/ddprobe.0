Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B75211DFC4
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 11:28:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705490896; cv=none; b=KhzkD8hFVDHFkkjVQUxx/IqShr0sAkHEJ6Jvux0PHyebHnHhyButMIGKbn6s/M5heENUHF9vIG+EOAfjScFBhAgOOy0iaSExIIBef8wZY5Q8VfRIWJIuvfbYghBuHTwpt2qoDda0ajENjZftDgIrymQ0JDJ1FubKjIt2+qLIxKQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705490896; c=relaxed/simple;
	bh=LSxQwMBe7QBU8iy6jwS6MhTKiIOlt4DE52dfxeLULDg=;
	h=Received:DKIM-Signature:Received:To:Subject:From:Message-Id:
	 X-Rtt-Probe-Hmac:Date; b=ukMXsjyf0AaZsrz9JQkjfTShkvRgMTZ6ymqn6+9EmGmtgDKQ9xmbPVW6WAUJBe/r3tjoGe9JOiwZxRRXNJupXmomNDPEORNdD7mtE9BHlvRni5sp++7HOFSzEaqmLwwnxXkba/t/OvIEigXmT6cGZsdW+DhRAnc9XxAbsNTyoec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OY/jBPlJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OY/jBPlJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 756A4C433C7
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 11:28:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705490896;
	bh=LSxQwMBe7QBU8iy6jwS6MhTKiIOlt4DE52dfxeLULDg=;
	h=To:Subject:From:Date:From;
	b=OY/jBPlJeArXV3ohlFoiSRF2PUCQzoNNLiw4kVW60zCn8stAYvXMLlDnljSsRijIt
	 wzXUvOpdWVbeMlFFl8GRkEIEFqy2Idl02/G9XQKdlFV3Auk3tvkXcxN8ucacA4jbLs
	 QK36brX/iOydwDXuj5AqzHYGFRZI7CydvHlryS6HX6GNlqK+ZA9/1zx9iU2GLnDQFa
	 XAxsAS/rKao6kHrE16xb7FXVO9FPVtT8gHZouXTsFxAwaNmoHaMbgFjz9mEsijqQoz
	 RFngbUS1ES1vUIVb45M1CKCmibCKaQVkUOjy94dollZ2wm8Cw/rVuj380ShzfkpBXS
	 uCLJMJno7taEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5E156C47258
	for <ddprobe@lists.linux.dev>; Wed, 17 Jan 2024 11:28:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170549089637.16705.6154773111708678843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f538f87631ba5aea0321e2c1b246dc9884e215f64bc62065301996b0102406d5
Date: Wed, 17 Jan 2024 11:28:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705490896
