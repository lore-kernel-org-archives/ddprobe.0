Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A1D211CBA
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771710894; cv=none; b=KBFeGFe5KQLFWZqdrq6qM5jzhk5rm1UIqXDLVRSYnVylJPSDhkIt2c8zjpZy9xl0kAZlV609Axwgdvozk3sVJ94TOXc1K/ByqFISIM3XHLhgDYC/qTC7bGdbMRI+2PJQRT5iukRO8BfdnfaU4QmX3siRF8AEKhujtm6g/phCyvk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771710894; c=relaxed/simple;
	bh=O8SqlwaRvIowlMX4lfvbdcca/b2IHxKxngyZEXqzR3U=;
	h=To:Subject:From:Message-Id:Date; b=NNpTh6uePwb4nfGRkSOZcOHPAxPXnC3hNtXLwls7EQuuHz+N6+uotgbyux50cZIu4IGGeOvG8iSQmgNgHNJzhWlV1+wprmnLdSEecvxLXlZ3EqGcSvWMQI6NYo6NWTuDlHgFyyAvltVNS+yjVxI2hzhOfacNHKtAH+Y3UGv7UKU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hcyZpQbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hcyZpQbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9FCEC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771710893;
	bh=O8SqlwaRvIowlMX4lfvbdcca/b2IHxKxngyZEXqzR3U=;
	h=To:Subject:From:Date:From;
	b=hcyZpQbEEq1WqGJp8vfGQvCgdrpoXcp8fPTiFJFvTtKKQxaaTP+ccYnz01xReSLWy
	 UJAYRI/b+C+ur09p9HqsuFgOqKRB/5DXKxAOUEmrKzo1RqCiF2pnNlC4j70VP6qWGZ
	 emIL5602MSevJdTYLE7OMIrm9jxfFecmn51RRcMmjK+xe4Kn4iWu3ovcqpj+TJ1VqK
	 4HG2JkOShqaw8Ye+nShm7Fjl6xNcbxC3XjOkmTjxrxULg3l2BPW/2tvP4dAnLXfE1J
	 4PBKNknqsyJ87E3YgLQ9Lw4yERs/k5OqNnwVSiG9DLG3aQ8HRAEJlkaClGoJXSMwsF
	 CNAli+opTYLIQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2715C624A4
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177171089358.23212.1327791860973441459.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2b6dd31a15b9ec47ab06d9e243d00a4f063e3f20b9b6bc807337e06540ccb3a7
Date: Sat, 21 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771710893
