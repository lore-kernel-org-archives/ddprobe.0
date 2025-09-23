Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20BB39478
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758593995; cv=none; b=nKFhE7wa6Lcnimdsa3rxiCWRaR7LcnU85XzF6JZu5NK2lY2hi0clBPtSQjQkemKygBlWNb6T3fiQaOqdup2X3pQVCzdEBd3Bwys+dgA2tawXbKlECSjc1I+InwAV+NfROc7U2jZ1Yg97fwSmAxkqDjk0IVlY/ESYx1M6sm5IyDU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758593995; c=relaxed/simple;
	bh=tNEcMhszRwPPaUs6sOeRpZfq1igDwBDWl13I+ugpjFM=;
	h=To:Subject:From:Message-Id:Date; b=MF+THaOvimVej1xhC0N66qkLW8TMxmr+beqxnhkAwFsGPGhSnSpw/SDlePy1r0ws3rt5YwChq8KGyDsQ2jSWT+SlUeiiKft6HCyUjjtDAeRv5rTc2iRQcfY7ZMTTmsRL3AdU2DVG1UkXeNg1Ckno3smHSSEtFh29v1UeHThSgKQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TPYPhgNR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TPYPhgNR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A411FC4CEF0
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758593993;
	bh=tNEcMhszRwPPaUs6sOeRpZfq1igDwBDWl13I+ugpjFM=;
	h=To:Subject:From:Date:From;
	b=TPYPhgNRe9n4Pn63/rwTkjwdL1dKmghx0erI15Nc1Ceb8VJPRyUiqniwbwI6HWxTY
	 N9fFtYLO8gbv4p7GPFPzCqViJBK5Nc/fIWMaP2DA2PbldiRspiF2wtlltlDBk34D+G
	 BkY0rJkjbnLacnddweQhcrERjQMkid61KhQK+XdzpeViYFTUQqKXkOwhOEFv8d2hCo
	 FgjoXIbtpDK977KmPRPA/plafi8NahsJJV++PXXXXQD7XIp/vldPX+RVSH7WkmIRNn
	 b2Ihlsxn1vyiUUc9ZSyDK6XbRgYhfmVY6CviBAwINsoVChtiBxcmAEVzwdjl63G3hg
	 61kzEQZ4AXsQA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93E73CAC5A7
	for <ddprobe@lists.linux.dev>; Tue, 23 Sep 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175859399359.30805.17483268886378073688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7325d8f8e6a7f7506ff1355ed82f9dcac25f54d0d0f3f4b1046a88f43dcfd434
Date: Tue, 23 Sep 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758593993
