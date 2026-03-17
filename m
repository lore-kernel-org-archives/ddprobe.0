Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E916733C187
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:04:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773731094; cv=none; b=C+xJu50Jp74IeTpm92lO3Lr//djITIVldnAG8y/ZYWWOW4O/+ejzDRkxoPswOpEGgkApiaV6K3D8lbv8Xb6rzQtlOJkkyV8mKtbQy+ROrXdINuEOkQBb8CstDdasQsPk+Y8AwBTS4eIWSSz1YzsAustbe55bhw33LXz/J5u7Pfo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773731094; c=relaxed/simple;
	bh=Hp7V6OwXn63swj3VTiPUeyrOMI8OWXvDMGxYo8arfr8=;
	h=To:Subject:From:Message-Id:Date; b=PCnaVkmG1EhPO2QTlXTrwApqeeK7HxMyLxk8s0hOpCSxGl84U1fH5HgN8Jnt4/GE3mIrD82Qp77NPf8yXRBVCcXfLBXjkSyJsln48igx9hxTs0vueFoM7ymaWHzOH8MUFHxo9LefGlB4JiWFrKy+yqdATQGjvCuo+IX34Mugpxw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N1iBoToj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N1iBoToj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E097C4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:04:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773731093;
	bh=Hp7V6OwXn63swj3VTiPUeyrOMI8OWXvDMGxYo8arfr8=;
	h=To:Subject:From:Date:From;
	b=N1iBoTojeF3wATa3SYobzb5CN/eibetV2UAgjjslT8sPCNE+K4X0Md/NAllXNvscQ
	 SYlvnUcQ3M8EP0TTHHpk+OeIccmVTVATqE9nE04KkOR2m29HHZE52ap3za+h3lss53
	 5fwYy+JF6b8h0qjYrW6l98xjeFeoVImDtDquVIShMjHcHYfTY6sLUksdFOX6nXNRF3
	 l3GR3eGx39NwGkjVuoxclypaXcWhiyHNHgGS0GkrPd46MIFYCV+IdeKBIdosN01oZg
	 SbQt4/QmR+aCHdGsm/jSf7fFcS2munZIMEFX1UD+XWkam23PGoDAHbgQvbK7dndGiW
	 ZqpEBRDqa9ViQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FAA8F33807
	for <ddprobe@lists.linux.dev>; Tue, 17 Mar 2026 07:04:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177373109357.31220.2483852393210523612.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 082f33b4aaf28d8ebb45b2c939a1eadf1bf5e2d729b47790760bd15fd1fa2e12
Date: Tue, 17 Mar 2026 07:04:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773731093
