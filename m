Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4726E39446B
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785666034; cv=none; b=UV0bSWmcVIuWVLX4r1OEZR/S7/Vmxp5OPHFGMuMFDXCNRoPADmbXg8sbgIRcg/LQxqHh2TNpBQj9IAhRKrWC1ep+07JPeAaC5MEZv5l5sP5NzH4LB+mnQqnWQksD+pgBx+DLODwicDthCPQFc3fjRPTPfdGekUxYdHil89mmkYE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785666034; c=relaxed/simple;
	bh=B58le/sXYUhptNmjWkCaZGw/0MXytyg01R9muDBltFU=;
	h=To:Subject:From:Message-Id:Date; b=RvB1bEBRKzUGXxe+SZQduDIsykCke1bRLEaDnMC99HRTIF/TXXD56d5iidGvLZryEeFhQ96Gyct1wiU92i47UYq1ouMNsdgGfGLbHfxxyNP1hM/iWn+8stlL7h0sTZeI0dsfYtaDAn0kQpJULPoAvg1dftjL6TgqYKWojfP8iZk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TKU949oO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TKU949oO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9CF9C2BCF7
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785666033;
	bh=B58le/sXYUhptNmjWkCaZGw/0MXytyg01R9muDBltFU=;
	h=To:Subject:From:Date:From;
	b=TKU949oOpvagOErkQkS9A9OTsw5ow6NiRTE2bwuocpsRT0Mal4Vd/RcxkLoRaFmc7
	 Vb/i0Mt2N5Hf7mAgS9OmApt7NMjdWBCBwiVKRatyzJh0Dp8uetmgcvnxCQdU0O56VL
	 2wgaLaBOGFh6+/MyrzZ27l2GftEtK0VWm8wOBYS3Li6AO9s8tfUe+Q0NUBCnTnxrmu
	 Q7NAEWUcVTfQ5LBEpqXvgOPAin4GmB59d49AuLAy2bGXnBsS2TVjsejPwKWPPD/Tzo
	 GJ52ggF8O6gqByN0lex0NjMLSNvizZO5gFXU8eMzL4l1upXLVy8lOqvjQDIUZ2d8zF
	 9LqEeVJLeD52g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A96A3C55174
	for <ddprobe@lists.linux.dev>; Sun,  2 Aug 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178566603368.23130.16919681242176662371.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 162e3b89def0c42f50d66e7e2b2500161f4832b9c3a17dd30b648c0c78d4aa3e
Date: Sun, 02 Aug 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785666033
