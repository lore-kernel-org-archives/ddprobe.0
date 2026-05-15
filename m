Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E319351C31
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:10:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778854234; cv=none; b=uinXmubDOebM7jtD911MO/MExNGp8bIjmwevKRQFgtXwu+A4s3JzHQZmKdpeMjLF+nZGFU6zSKy16GeQcsbtde6I1HoUCZnMy+wEEAG0P8CC6m9mDnk8xcSqnVbkKRXDIDdzg5N9ys/jIxagtIrtpkV0cNu3YBLFAnDoKNrfNo4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778854234; c=relaxed/simple;
	bh=s2/KjHvyG7vvfeo43VO3mDjNBI/5aXGt5KldhVJJO6g=;
	h=To:Subject:From:Message-Id:Date; b=S4Ic5SbSKpnEcoZkth4/cAKCqrLMmbPQCU1hvPR1qefrSw9rOPuBrI2RZ+d89SiZv5IZ+YpEmBj20mFul7tOkqMSMV2SJCT/SZOEO8NScX5EIPjaXaJr7K7WuxMed/dh5O72yRJwukAUDjiVzyyFH7wq2EeQtRTyV2pkg17osAI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQnfgHRK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQnfgHRK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B89C2BCB0
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778854233;
	bh=s2/KjHvyG7vvfeo43VO3mDjNBI/5aXGt5KldhVJJO6g=;
	h=To:Subject:From:Date:From;
	b=RQnfgHRKXBI9BClrj65BdzGeitAve8nzv5ArRS/mDM527d4x+AsfVR87BRJ/6onLC
	 pV3Cv2TG55Q5izLQeTcx16PbODUpRQO8gcG44L1D8gIyhVA8fs2VBP5S3pl0u2C/1k
	 ZKsfdp5oSw18VBX5m9lgERWLdcfSiHKRPjr8PB7ao2Qp3z+KZlXqWgfqfKQpib1IAa
	 R2Fmf8w5znakOSRC4KEqdkewdQS1eoJaNCS2LMw3NWy/laIVCJxj50AxLAPHpK++bH
	 JcK/FBq0zD5TvULQrAFTNXibeLXCnMTAswySP+qW5Z8LnHtR7vql1JST2XFK9/3rfv
	 cvnAvtT6cJ6+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B2627CD4F25
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177885423369.30898.1845726837636479162.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 946665245785058f39ceae9e73540290e89e3dd8cee2a978179938c202e14db2
Date: Fri, 15 May 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778854233
