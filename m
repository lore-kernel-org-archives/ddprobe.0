Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15A60273809
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770176034; cv=none; b=tDXyqkwoqy0d5LZtBDuXwk1sLxfDlvKPxybyqpWxCubhgSg5aS3strL/l4f0ie8vCm3bagcuZKYQ95MQaFNAzIYr/Vo8xu2twsHAkf+CG/fgziHzwM25SVO2WpJsfjpisnfEwNL0hTX2YrvsZJLk6hbp85ooT181lqoWiHUhEzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770176034; c=relaxed/simple;
	bh=/KacCrZsOjQzGMCCLfT+kCJJlVYP5esvm4uhxA5zNT4=;
	h=To:Subject:From:Message-Id:Date; b=ZYrjwfsTJ5zpibpush5GzVY7RVhsvi86Soy3gOImEULTFHp2el4mbeqFroQOmHFS3IokocdQtTUOYKf8T2g68VrfTFPgaEHYoiFPJNU4i7i/kWiJPpmBw5/KFCJQJom2Vcy1ZcYujkvrf8xXtEsZ06QiYjElBfQNz8D+tx6ZcEQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lxqwegid; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lxqwegid"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B47BFC4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770176033;
	bh=/KacCrZsOjQzGMCCLfT+kCJJlVYP5esvm4uhxA5zNT4=;
	h=To:Subject:From:Date:From;
	b=lxqwegidTxYXwnwsxTqZgr7fJmHMYeeHu9LFzzfCnzsHmodQ+LYD1bIyG3qPirBuE
	 2pzZKR6z5asKSjOXWjaicDpUIRsAXjZMnf6oebKoBRSxqFMTz5vzavEYn5uGPrDbQ1
	 t3mQOk23csPjVUh1p5CGIk2rKx1RtNcm2K2Nck8adivHpnAWcPgPFej5Edo7l+sjtX
	 cE899ogigWnDQoEaEthBzgrGotcfOCy0T8t393P6z7I6CJ+4zhpXHOhY4nmmgYmzbq
	 r8NUH3cvXGLrWFArMrJjPWyi0kyBpH1b0iJjjqluJLUHRBGNftMPQouROcYXsASYDn
	 +FTskW0OGv7iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F2B0E8B396
	for <ddprobe@lists.linux.dev>; Wed,  4 Feb 2026 03:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177017603359.6175.2512725566063719651.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e6a965105783486d34d26d9221a15ddc818708b45ae5cef3e02c3de9685979e6
Date: Wed, 04 Feb 2026 03:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770176033
