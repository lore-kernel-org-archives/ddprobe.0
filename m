Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 210442DECA5
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769769834; cv=none; b=WnkVOW5AMJTan/c27YYDrpc5tmAVZWYXgLBaPYqV2n0GSRC4Wm2PPRGPdb5Mr9SMxsa6ugLDYBk07ST9OB71IwmrnjrqD1LdhbvrPcKHgZhc0qENKcJKOHdSoJ0/1axY0cOaU8M+sz0V9XYs10K0PdwRNtCYnNvmgnDZ/zGM8xQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769769834; c=relaxed/simple;
	bh=f4Qa4wuo63BpAXgDkeYyym69BCBjzjXvRdNFOQZbgNg=;
	h=To:Subject:From:Message-Id:Date; b=J7JkXsRDxyFEtrRBE3mK4lNv2KShSTAZ07OQu2+MCnPEJU9xgAtAudvRTDR4N4tp1C4gMu0I3XmM6p6ftfnW5nGRomkWA+zMq/KM2dmKKDeXF7XlB1jQa2Q2a8aWuqxbPHg0QLl5zIThAvTvIlUsfF3ZS1AXR30oBtUC2GEnck4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=amqoxoG4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="amqoxoG4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B21BEC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769769833;
	bh=f4Qa4wuo63BpAXgDkeYyym69BCBjzjXvRdNFOQZbgNg=;
	h=To:Subject:From:Date:From;
	b=amqoxoG4VCgLaGVdK6GvG5roj4qu8DG8zhV/uoa/WCusZaIQvNnhZw9E2aPbfnj/J
	 13B7vzCP1id+jlowPKXpVAJmoLcIn5WbInHEhWrWMie0xcZRFVBLzHUrfmSl1KpuNG
	 Eav1Zdr/zkuq+74ds8NbzzdkHcKZe/+UzrgWinEyx24cPaYuW5Rqci54DOOHEqNJwc
	 71C4MDKYdrP18cAbvkSAPDG+/TYS7z3AMu1aHOIwERT2/dt6O4cA4JKX3gZSdv83QM
	 OsiUV14VQJkg4V9o9xthYiRlGCIFV6I2NcOPpu2ET/6r/JxnfBnd/5pPoK4pwEYpTD
	 Nexh1zYEy0RTA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A338AD49C9B
	for <ddprobe@lists.linux.dev>; Fri, 30 Jan 2026 10:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176976983363.13275.8933144219184809955.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2f86fc4f50c5735cb1936ab46a197fa964c6d5a32a90339e56de6ea123a643f
Date: Fri, 30 Jan 2026 10:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769769833
