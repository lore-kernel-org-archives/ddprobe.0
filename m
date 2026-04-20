Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 113ED39A7F8
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776705454; cv=none; b=DFf74/ugfank4PzYV7YHllT3T97muWcqxNxDW6R8dcSFKT4so8Z+PbAwnmXgVRtXD45BabORuFBj7+RwjzLTv55Y/XIGlZPYme+FcePBIZOeppKZKfcNgIrwk2FsxLdeyCVl1oCWJWTOnlU3C+QswP9bQIuMS4NlxwDb6r0Pd+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776705454; c=relaxed/simple;
	bh=Xqp1gpHEgQBtC/sNiXxVg6B/bzP+LR5ppN94u4gutWk=;
	h=To:Subject:From:Message-Id:Date; b=hN3+I11aTHpFkt2hoLC3wA+c31xclDzwnwKRPtnzC04znseqOPxmv/BsKNEUQKB1O3Oosk5N4OLlZJvU5H7/lCj2eYuntbhw70g0zEtxwdi8q5imBqQYoFnkj9NVR8IJWgpzO9lm28zOCl47cXB03Db4TbzZ+nz04o8SDhnXIjw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UlGi2TTu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UlGi2TTu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B89ACC2BCB0
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776705453;
	bh=Xqp1gpHEgQBtC/sNiXxVg6B/bzP+LR5ppN94u4gutWk=;
	h=To:Subject:From:Date:From;
	b=UlGi2TTuC9wMDXlcGy2xF7HBH9kDE8DrSmAPc4C2qkyZ1fwp+pn66vKfOju3NTbCQ
	 TKNfUcqM4jevihm9nGttqobpqanML4rct549ixWxeiQztDAtJ9WPniKSh3TpB1IlH/
	 88D4nE0tgjEyugOROzFNePNAwQNQkUk61qAAZvoSOxV2Q3byJc+k1YB1PWyWmj1ATM
	 lT6ZRaKSvmZ2hZb5he38LyOxYvVB/eDGOCdl8XIXFAoS7udL/rOlRTibF5bAnVmSXf
	 wHL8TINuzfHONc5ehpcfd6VGWaeacwBge9JpFwTGL028C+thJPR0f+KGOKSk9i3jJQ
	 o5Z4MTifE6jSA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A998AF5A8A3
	for <ddprobe@lists.linux.dev>; Mon, 20 Apr 2026 17:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177670545368.3139.16441048124256205421.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 96ac4592769bb80e840b1726369a11bfdd28c6f110e34a09395309875f833612
Date: Mon, 20 Apr 2026 17:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776705453
