Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B58537DE89
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784935234; cv=none; b=iI/06hkWTaUd14zIC5ijCagVqyiT7ZzeMYypSpxEB3x1mcEHsDceFpd+DFmiHEAMASwr+KT/73YWlnPolHKwcw28ODcnykxUxMJ/1GLt1Le8fc+8DVCk/ZRhlT26y99I9/J3qT61z/50HrE3fFtQ8NzwYZQ2Hp4ejDGOvFgNXOY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784935234; c=relaxed/simple;
	bh=Zp8uPjFwEInl+G5LPuDpSimrV+lfZbmmGVXvQQzus7o=;
	h=To:Subject:From:Message-Id:Date; b=gII/7T3H31FJ3DtAZhMEVPFO9hgf2UyqedornNM4FwYvaKfGbspqsgln18XpWcESMC7uiQ6hbJrCsT1mYFF0aLCWl7PzI/Gj4AQC1sQ4y9B22SJhtjOf9XDUsdH98VfSsPvDDFPYn9+wYoiRa9wtw0p2u8sWiLVDj0jLlChUAew=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a+gw5ooR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a+gw5ooR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD477C19425
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784935233;
	bh=Zp8uPjFwEInl+G5LPuDpSimrV+lfZbmmGVXvQQzus7o=;
	h=To:Subject:From:Date:From;
	b=a+gw5ooR/ebP+/vIjawSg8tXB55i06Qj0ns5w5j8rGM3aPkSrBLg/EtfHH+Y2BRT1
	 QuSQAk7+00AU8pJXaHOEaBoetJnIklUDtpWKvU/TXC6+46DhXQqhMe4WGfVyOWQRwT
	 0imChQ6bYsGMxfSApGLV5QPh8dZm7DvGkrONYCIFJgdTIR/VsP1lafOclhn/KPNi3K
	 pOm3xfAg2JF8XDsVqIOcSG3CJbiyS8GIArMX/est8d+uRt3sx6RvpMxbklhUMmqej6
	 yOEuxhJHuE6UZyA3RyoYYqXIN0y+p+H2C7zLBiXD7C2CDhOTL+hoc5eG5KUexgJ8s7
	 L0lQgIO+uvyNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9108C531F9
	for <ddprobe@lists.linux.dev>; Fri, 24 Jul 2026 23:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178493523368.2822.17213196824932173685.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8453bcc7ff2d9fde6d783e77b012aa74eb531735a16ca3992ccdd4c846045d3
Date: Fri, 24 Jul 2026 23:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784935233
