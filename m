Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2745D2367BA
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:10:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763295054; cv=none; b=qBJa2SbSmcnE5gWfzR7UnZ0jfRStMKr9rfTnnIAiQjj+h1ptsW4Bb7L+5pl0Cm+6RI7z5bWbEeidauybbJYPywS/wKKfPx/vERVkhdSTBYyj6QkbFvABFmq6aKgnrWLLsswMBrPfqM/8VR4PvblwJswWXzNUdMIiMj/C4Eis4/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763295054; c=relaxed/simple;
	bh=cGjm+C11Fc5X0F8k/46gCohQzg/RaYOgUnAA9d2DnTI=;
	h=To:Subject:From:Message-Id:Date; b=mdBr7ZMzjPL7JeFDeeq/pkpoEozGXCCYiO+Kg6LSPlJGDnkv8eFVkdulOSxQLCpB1L667nMFHdNZE0rgH0f4dzUHVu5awHeepYnVyaxwMI8isPjmSz4Xm0S6DfXcnRgFWwK9MdO5pW5u/GSKza9JGsfKioaYFDxYuSCt2c6shK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cF2tWdif; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cF2tWdif"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EAE7C19421
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:10:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763295053;
	bh=cGjm+C11Fc5X0F8k/46gCohQzg/RaYOgUnAA9d2DnTI=;
	h=To:Subject:From:Date:From;
	b=cF2tWdifWhwdUcowSAJLA0oo5pa+tCBf04dJbCKIwC5t5P7dan85hyyfd2I3+sbCN
	 5p5ozeeyiNrZLXUX22DIvHCJkXRSBcjmzJOsv6HVkI5olcvO2mks0v/UFUslEjuOKq
	 jKRypjpbxKCpepnFDdkTDyhg2dB6+J9aGilVLw6CmZJ0u2TpeChE1pd/JtN8VaghRA
	 J9kS0llYQkAV7LM7lVupHsz+oTNk5KcuEMiUDYrWoZoepdQRQ075Cr2I2w0Cfh5IG9
	 ucBaPI/jxS5fH9Bze8UO9alc+2UhHJTzIon0077Nl9pA3+lJ+G7DXAy6Kooaa6IFWf
	 zdmtYbCSRm00g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB5BCEBF61
	for <ddprobe@lists.linux.dev>; Sun, 16 Nov 2025 12:10:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176329505358.759.2814418241829426725.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 95e43936492558c08e879f73282061b96f58ee2d02198427a277b3e64edc4f70
Date: Sun, 16 Nov 2025 12:10:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763295053
