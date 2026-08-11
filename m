Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40D5A2DC32C
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786446634; cv=none; b=HfBvSbtWN4Vn1oQmgeO7wOURcVOYUwD4xX07UHflZVpailprRI+ylWfgMG7uTEuzB5g3zL5CedqRWup/Arupn9Ij0PR4J2cgUMzq/wVoythr9egaOiFPJ66cD/Oceq3Rjuj9tTe5xVP23IEC1BhD8k1zLDkP0euxHmS7NuZpdbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786446634; c=relaxed/simple;
	bh=bAC5ROPdGVeVqAdQmy+WrqmONEh4s7UjNvLQAsUHwPg=;
	h=To:Subject:From:Message-Id:Date; b=K0FzT+ggxV1Grp4jhSsICqvGaIMParVd+K0sJvkocErLqgT6Se4pHMlR32CowZadTroVqbqEMHPFBvriyO+P3Q5UJlILveOE8csV9edSi6N5C7+wmbH/dPgaouzGQbd559nsqGeIDS22WDb3/zHB3dPwjmDACIG0f/nFKtBZ4cI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lYOtjvsu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lYOtjvsu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8586C2BCC7
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786446633;
	bh=bAC5ROPdGVeVqAdQmy+WrqmONEh4s7UjNvLQAsUHwPg=;
	h=To:Subject:From:Date:From;
	b=lYOtjvsuwoxQwXssYNLOjXxxzSjjsf3V75R/SLACeUHCBx8TQsIFhjd7W43fHjEyd
	 4zPvoBY8/MT2KOtZXFglS8m4ogIbRjeAdoHRMglKuDwz/1KAEBea6irFZ5xX15hY3d
	 GnL0G474A2WqdpWkva6uYQauktGyTBBYeFT0GOFdrX2RM5bcXleL5MrUwHdcH3/tzO
	 iI8umrc31VJA0z32lDVSSjJ5e1jCH3VVSS308JONmOWKLQ7rM0Y9ugioAY4Gr2Io+H
	 JoJoxqlxMP8RHzCarEY/ti+ukoRdqg60L/G0DX+WoMdtfbyGFa6WNggFY5D3KwXEqQ
	 AfcAy1mSvW/Kg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A86CCC5CFC1
	for <ddprobe@lists.linux.dev>; Tue, 11 Aug 2026 11:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178644663368.16742.8463770077346523830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74b98887992f48df9784b79f5f2ee0b2a25c58944e25fd0f7e85d7c77f901309
Date: Tue, 11 Aug 2026 11:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786446633
