Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D3E039E6F1
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782560914; cv=none; b=XOZWBEFoHAetiX1oa075GMd7GlqJlrA1MXMkAAxHX6ccqjgCWvuCPcf508r/eQiFkhjIU69+aoaJhRkIy5JhIPCQfKSQ04PQLhqQmDqrINCdJVBCgmqj3qCLnxo2TSmFzP0P8FqaRFPkCvmS8ywYAZvqNVvUcRpxCiaCl3qFGhc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782560914; c=relaxed/simple;
	bh=ifO7mXqOW1GgfxuWOZWkwjLFdckfl+bgzR0VaOhimo8=;
	h=To:Subject:From:Message-Id:Date; b=GE2evRzIeSJ8c0J6qEy7d1Wf57I31K19PF0UT4sDb87bwnLo65ns/mmi2KUBfzT210sHZUMH5J8kdt6oPa1IpXnLD5gyEsxKZlCaTnsmFOBSK92hI91mkH06IxCol73uYtf0xDRiipV4NOxZ+mIMNLUro4d1rXkcCPxxuyiTIE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ny0i30NR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ny0i30NR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9508C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782560913;
	bh=ifO7mXqOW1GgfxuWOZWkwjLFdckfl+bgzR0VaOhimo8=;
	h=To:Subject:From:Date:From;
	b=ny0i30NRXCbj7dj8Abu1ezNgiaYr6ThCfI2xtJq0g8CAwVZkNS5G0huuBmiRimO0g
	 adUtoGU2uC2OmztcFPAKDkoELBpX3Ld7/xqVPvPmT2K25dQj1iVMmDxkH5TL5Y2wlD
	 vYqOiZZLTh8OWnL5tI0X3crT3KenRQ6K+57vhK8mspa4Hafhf/JeQnhsChKCdlZeJE
	 F/ChfPJY2Dgz0WXLSFVaYoxkDdyIR4jnj7j0+qei9+PcuCsxp/vlWILTOpS6a+pqYS
	 QuCXzaPDXy7Fxvjf9IEobOeimdzJrOgsArwnYdDYK6hxuvDyHbd1FJs/zONCgnZGjp
	 Tvxfz/VC1X98A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE3CDC43458
	for <ddprobe@lists.linux.dev>; Sat, 27 Jun 2026 11:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178256091369.16792.2366060111015094139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c8f9d24a09867129ee14df967aec4dda25bf0618e94e4457898b670f85a0360e
Date: Sat, 27 Jun 2026 11:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782560913
