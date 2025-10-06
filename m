Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A89C1E50E
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759731594; cv=none; b=oioW5bEoqVGYJ4c3aP4Mk8CUxPtawP1a9Qd+PttO6ftVAxmsJZNIWBgxTHqi2J6tP9yBEPC8+WTP7sonWfVQhnEdj82jdnl3p5o9UBuGXnxRzMw78m4LlCcMaPNiAXQMlYyhy85oj/8pQIqBeHCJlfVkUwMwkT5Z3FZeHx3UwQQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759731594; c=relaxed/simple;
	bh=jwsePeyRK/0ruSMQM1ca3zp6qeqUm1pIWdnqlDw7rkU=;
	h=To:Subject:From:Message-Id:Date; b=RU9CrzZtyW/phvHnfhCSDQblvLLlg/vzD62qJuvk/ijymKAQGeyxVe7uTle5mRHkxo1BcCU+H9DW3r7cexRw5SeQ4sNtUok5l+wP0wizzfZW9hA5sewL6OXgApKX97lWDLnQ1Ixrh04Ga+Xm5qg7R2JNH6Yqaf44CswIcU1/6Ec=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T+LGN11c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T+LGN11c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD877C4CEF5
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759731593;
	bh=jwsePeyRK/0ruSMQM1ca3zp6qeqUm1pIWdnqlDw7rkU=;
	h=To:Subject:From:Date:From;
	b=T+LGN11cMeIAdqUx3jachZyUgKN2JtKBHpwGBE0Dtn4C+E2vVMSe4TdMHMkGcEzSL
	 Xk+NOxm+8cwH49nrvHrs08w11GQHf4ZjBOwHXXpKjfhWzUB1ETInP6E6ejCo3hveg2
	 w9CZBohtKU1vFeIEBjvIDr1J4eh5x4YsbMpIF5OzWl0f+3NsCdeJpn+u0OusX0UDd7
	 nXzgQI9VAMYyEkL6MaRYnQqTrOSEmwQtEy5nsXrEbxptMWEn/sno8FPCTihQqQL9Hr
	 qKecTnqMu6QcO6vGlIhmw54mscr63+W1KVMDs5/FDcqxRn/4XAfSw198KG1L0d5vxd
	 V34xsEw28NsGQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B2BACCA470
	for <ddprobe@lists.linux.dev>; Mon,  6 Oct 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175973159357.28539.16158867791959480924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 552078701530245accc27bf4e6edbfccc2bb6ca16bd7dee47a76cfcd2aaea4ed
Date: Mon, 06 Oct 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759731593
