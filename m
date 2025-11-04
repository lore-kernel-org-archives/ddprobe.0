Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2732C32E731
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762266594; cv=none; b=eMXJFgW5t4NO8Z8yHG2l8rdHpAEMA+v/kYhsSBQslR+iAZAF0Iz5mPnnBm2LsvprbXMvwxDw9UFcG1DMPKP2s5/fqucQ/uG56Y86t/CfHvOpaGsN89tkwT1jcX5CJYK4BgJdnqhNvurSGGPAekDMAjl5nxCF6VTcMVX92+6eH4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762266594; c=relaxed/simple;
	bh=nkw6FRqbrsRlVYongbyTQqRXg4lX9ZxIo2w3KHw1ejg=;
	h=To:Subject:From:Message-Id:Date; b=paC3pYqcYz6MRnD3iNbVQIP/5rf4nqe7UyAYW/AFzb1stJ9KACCNgJOfMEYV44868U5uhW5zUWSpkdO/W/07ItQAFO2j3lxRN6x/io0/xNUvPDDDcJxiRuMx32I+l81hYMqfM880Uh7OF/OixLo88wjuuDGHWzaTRnVlQy3hew8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cf2b4rUr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cf2b4rUr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A18A5C116C6
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762266593;
	bh=nkw6FRqbrsRlVYongbyTQqRXg4lX9ZxIo2w3KHw1ejg=;
	h=To:Subject:From:Date:From;
	b=cf2b4rUrsW5x9LTAWdkK4G9gwkeBGc7q+5tGI1tt7a+XS4vH2PTvTTrC6u+piB8gu
	 nLHCzYVBUuOCr36M3j8+sqPSBz7n9UMptP5O0gc6odMAguAuIrcxGsfXspY+e0GRh/
	 NTAQpAkaKRdI8423up2g9bhDlZoHRzhlwNGVgOCLnFDmtl397BajzIvMjaOTJSMRA/
	 9xNMFfMHfFCS4ud10W1hWwuVWif2rwGN/J9oJLboRnMIoWdBZaOr0njK7qzumv1Ytb
	 hz8Ju46HWYNZ4FojR6FuLsk3MOX7qgviq9leCdq2WEsZbtdNtcHbhFffDNoP742PsP
	 9rAMQ9N/6y7gg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92A62CCF9E3
	for <ddprobe@lists.linux.dev>; Tue,  4 Nov 2025 14:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176226659359.11732.2354209028024610313.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e2b78c0a03c1eee287b565738c33ac408e0b6e675de3536c9dd7b6a65989261f
Date: Tue, 04 Nov 2025 14:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762266593
