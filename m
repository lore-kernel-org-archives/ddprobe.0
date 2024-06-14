Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FC01474A3
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:08:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718352503; cv=none; b=uUMwe+pd1riYyAuiyl5A7L+cngEGdelzA683Tn3h163JolL8RIKkxrV9Fl4f1zyLEoYFh646xvo6T3bpXBCJnPcM3svJHHj9JvZtJJb4cHQrdfkhl/o36d5NOSuXxmsGIiaroqs8ojXRQHgZZ4tA55DaI2tLJOxuJjsmg7USOwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718352503; c=relaxed/simple;
	bh=3rYTy2hJABDYxFtFPpbWIjQf2N74J6H0DCPRTd/VDxs=;
	h=To:Subject:From:Message-Id:Date; b=ul7afrrJzodjVFCE+jmkO+2Q6HHSqEnVSOUfm7Rf2DSGfqgCB+VhzcaXKK8DRyewSo4MpH4vSqZQD6RvuXAzdFoiquWaMBlJ/WcIN9HftQ1XaX5c5nG4ELSwWavIu76pXYcIo0h4bargKMI/tCjAvxGPRihnBmolmU0R+GqY00g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pxoG3g81; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pxoG3g81"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDB1EC32786
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718352502;
	bh=3rYTy2hJABDYxFtFPpbWIjQf2N74J6H0DCPRTd/VDxs=;
	h=To:Subject:From:Date:From;
	b=pxoG3g81OwbSzlVZFFF+Pwmm7AG1BGp59F0hLP6cVOsF/WRSYVhyPNxS4EeVvT4za
	 VKLPVbjkpF0JFkB490rCXoDUN+EH41hk0cdvW3kJdcUOblBQrjcbKRQlkl1GtOL3R7
	 H1DrYKXBna7gNMIRj9nJQ2HMhaUDPGVpgg+UNB83sxTazXC2MQSVw7/qTFGg0moVu+
	 +U0HTDiYxgEcIUHEae6UAH8O5H4227N5Q+mJz8l/ochRXMdlxvKjytdC0t57UIq2lj
	 Zt5NAteGb9PdaT0AqtM6KB9dsG58vNymc8uraZFd9WT/jZYG0VH4zyva3XLpjCsuFe
	 xwXSP7iHrNa5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA97EC27C6E
	for <ddprobe@lists.linux.dev>; Fri, 14 Jun 2024 08:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171835250275.5003.7719547090482012507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 59f2561a35db0bccad8da5c8753a6f14ff88742f985fe05dec27c65c90e8e9cb
Date: Fri, 14 Jun 2024 08:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718352502
