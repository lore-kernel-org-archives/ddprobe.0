Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2035D149C6F
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766219634; cv=none; b=ubzHGURMwR9zKlM29xDQDBvTnIo8uzFAGv+wU7nU0YvRm6V9YvbiSvKbopJ+TCgNXe1sa625uj1exqPx1KBQ8ztpUBFdSDIpcrwSbieLFV4Vpx14tZsH2kn2nmvOlpVMlMXhTUNC9DNAAZv1hXtPQM01R+sWsqw5GwL8zvUBFOM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766219634; c=relaxed/simple;
	bh=pty6nacFA6F0P/Ow5d/cVtzzFA+Hu2T0mZwomshx0FU=;
	h=To:Subject:From:Message-Id:Date; b=Dol53cG1D16P755puAi+oe+mEvo0XX6bQhyyciiSlQ2/1kPudTw6LBLiz+ikyXjUvuVheEvHCfwtTo68UIK96vE3P3FJZZfsg0FQhXRl5wyIqdbLEHGSF0Pm6Roimuuqfi8Iib0IjAdXJ/XTwi0Q+HtPCA8sWaPfcHhBwIM1DH4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Rzw4taKo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Rzw4taKo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5066C4CEF5
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766219633;
	bh=pty6nacFA6F0P/Ow5d/cVtzzFA+Hu2T0mZwomshx0FU=;
	h=To:Subject:From:Date:From;
	b=Rzw4taKo5FVgat4Z7v0vXI414SLR6TiaynTfMqqAiD0+tnac7ov5X+tbXvDPXmHOx
	 t2ywn1yC2/OSoXBR3TT4RAXCaqGsnbyVwEGFt14O5duw4twin4knevXFADgbpctcaf
	 je8yoSl/4a9KsGJRkddpcM/3Qg+G6bRffPecvCU9eHaSOz/pgf78GG6DKpNi6yVMvD
	 QUGk0c9hV1r6Un64R6x++2hJxUr598LEKB/kXHNLxk8VgSR0RVvmLSyCyoIoV8ELOm
	 oevFCVBHrtefIi4EjOoTxKBcY9XEM1EppQfDMZjiGDe8AG3LibpPjjJblcybIHq0yI
	 3o/CPCLQ+S9OQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9643ED637B2
	for <ddprobe@lists.linux.dev>; Sat, 20 Dec 2025 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176621963358.6428.7784109605591589038.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672ad75c8d70cd6f26aa570cc996bab347c2249a194428344e095906b8a585e7
Date: Sat, 20 Dec 2025 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766219633
