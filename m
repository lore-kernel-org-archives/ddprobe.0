Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08B851A23B9
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:32:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1764048774; cv=none; b=JeP8oxRZ0/N72xPnvD9VGDipYdW3u0x9RHA8ekESoA2GvYojj4ITl3l2l38mcKq7TLkWoET49K0oedzjqC/Ksv37MjzMmVXKD1dlv0J1GCzxKqkvAaLIfz9trfdTOW190NwhNPBe7mow90paLpd7XHQtLPA0vB1kZ4GK5m5XP0w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1764048774; c=relaxed/simple;
	bh=amHYxwRgh54WhXxP3Js+m0svIA6JGf3WLSFiylLXfSQ=;
	h=To:Subject:From:Message-Id:Date; b=ln/thse02eUR9UutDFkPfLIo/5QPzy3+qU7FjyorUP0GKuaqdQUP/CHaE9JOXC7YDCBW3IL3sMR6U8oQaBco5B6OfIB7E6HpwdvDfeJLaPa+mEr0rzZgPQ5oYMZ4Wm9bW22nkR4hd/j5WBc2EgkVMsWtYSlJGI868THl2s5o5AY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MtVsmQTt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MtVsmQTt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5B50C4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:32:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1764048773;
	bh=amHYxwRgh54WhXxP3Js+m0svIA6JGf3WLSFiylLXfSQ=;
	h=To:Subject:From:Date:From;
	b=MtVsmQTtKvmOu/LFvFUiRMlKjZFL8gN4aojFdeTKEUSLuBCkzeFZ1oCwJIE08tI/j
	 qV3uU2v3yOkXg66fA0a0kIOI6j3sYl0AgnPE59BHEzC68sp3fpx4eNxSWRM3CX9gfs
	 KVqYAcctuJWqpcbwgKyr224FoX171hV7Q4TkOp1Cfx+Dbkzs9ysBWuzhDJ/qBTu2Jx
	 cKdCWU1qTMTs5ZUldQg0d4VJ2pMJ14jXXM2HONbkaAUPPWCtv7J5ZMn4uYOOBzUfqt
	 +EMUJaaudRRBMYU2FzTXfr7k9MEmDYOrFGsTnkWGxEmHg4jCaUdbaGATf/BJAFJY39
	 3vl/hzCiqDfpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93160CFD368
	for <ddprobe@lists.linux.dev>; Tue, 25 Nov 2025 05:32:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176404877359.6298.11800403618425751176.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c82ecd46f141a7b0e54b8ee9321836987609dc183ba91443bedc177de311e8c9
Date: Tue, 25 Nov 2025 05:32:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1764048773
