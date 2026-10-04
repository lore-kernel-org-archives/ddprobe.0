Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 502E81C84BC
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791078634; cv=none; b=eDuDzG0PL5skAuzHMy4CToSxJEORJqvf0ILxauaVBHKeVqxepB/QTRodyi1DG8EZyku9WSm2ayxqvTk+5YoASGtEf9x6eNdipp1mAUqEbcUtx5Ykxzo77FzACn8N5hzUnpF67BOlZbHBpf+CI339tlv2g85urrjrl4eNLknstZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791078634; c=relaxed/simple;
	bh=OTargJ4SLA8Pi0IL5TMyGKQHQp0GmpNPTUrbuqDMZ3I=;
	h=To:Subject:From:Message-Id:Date; b=K9dos00AvrNqKTD+t2T1FfZxgAkk2qNBWm/DgDARfuI5vGlhS3qOwpqUIcDFgZQN2zyWkMIad+LPPJnfBXFKl0KjxPpIyvKO5V8p9DtKO2eHJlQttD2HV8wHbqTDa0fxcxMFjg2s6hftE6icLA52p0ab8SN/sSDTlkn3cZVmeUU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jx5ocaUH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jx5ocaUH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DFBE8C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791078633;
	bh=OTargJ4SLA8Pi0IL5TMyGKQHQp0GmpNPTUrbuqDMZ3I=;
	h=To:Subject:From:Date:From;
	b=jx5ocaUHbInFC3INiTaZmWkzACT02MOLH6bToSbAD3Ksd9aacAIzKLRCPfU7eBm7p
	 Xbea7RrkSu7IrDtoSIuf+lMJ2yzpuenA2q/Rdukz7bGv95t2I4R/TdqklzcKkZiDsO
	 9zmxVWTgasZjcpnAj3AjsSa24fE0zbbvF7pBmaH1gLI4I9+6zg1JZWAR0/wPe6ddBh
	 /1joMaP0NH9/wA3igFBk4w0StRbVO1+V1iTQnD3Q9fG5Y2S7qJQ9BKBvpy4FP0BVgI
	 MoMQsgGkLPb1t2kJeJ8vKynfWunM2kmAkhwhI0d2qkpYujjRVCB7FLDfeOr/GowrS5
	 KTVG16f1LZlag==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B65CACA5FDD
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 01:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179107863370.22354.12247462255290694348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5aceebaf8b559413f39148688fedbf66f1aa263eb2c1d2f8c9e216b45ca1d677
Date: Sun, 04 Oct 2026 01:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791078633
