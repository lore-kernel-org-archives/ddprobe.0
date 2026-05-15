Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F6F33AE1B9
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778840434; cv=none; b=qnc871IigAOyt+Y4PwNfuAqv+vwBbawloJkF4K+KjYAMzQiwaD1X2bRrQ4xkR6Q/w9NcOUuop4zKwUah2+tq4rgYHO2VlaqLSghN35lpbFpPwtro+zo/uI/K9ijF30HAbv/+bzu3WgG7/eppveIU88W58fwdCRejvuvgN4UfyXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778840434; c=relaxed/simple;
	bh=rYizfAPmMUILXx1KNEtPDmgq4bbRrmSemHQbbK5RrWQ=;
	h=To:Subject:From:Message-Id:Date; b=UByp1qqXyKO5gFm/jh1fKWZj3gmuNtu8KG0saBrpArO3CcFXI0EalRqnJA+OrGf/uXXQdsqjZyTMLBeepIilSs79/6Nb9+cvevdM0bL+L0J+8gF1eLiv5bE5xa2cWWdMHtINiYqk2pVJMtHksGNt+uAV4hQbTLvWim2kmdPWbhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WH44dnjX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WH44dnjX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC03FC2BCF5
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778840433;
	bh=rYizfAPmMUILXx1KNEtPDmgq4bbRrmSemHQbbK5RrWQ=;
	h=To:Subject:From:Date:From;
	b=WH44dnjXmdFU5GNhUB8UYdKac8cQcn9WOSyT8tHF6dnSK+21T84ypOjXTxGUvHhRQ
	 MHUDRJ7IiHNN+fUWCEf+6zr0VbI4SodsEbQv7Ht/yeFjyU9OIrIe065KD3NqHZIPtI
	 gwPS3hZSFvqLNMuHxcddCFPrgj834l4NmCeLkeirxIJyaCIvIH/QA0CQa3U3gjQTSU
	 TjBdd7CIiTcoRsMSNxZZrfZh0/hYc4dqple7hZE8ZV6AnJedXg7r+zWLSUSIssnia8
	 bZyXiRGhync9XjaGd6f/LlehWSwvVhz+T40KWgPU4JlN5JG1AwVZqsXQX6nSICprXL
	 CuV1/Kv32c7hw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAA8DCD343F
	for <ddprobe@lists.linux.dev>; Fri, 15 May 2026 10:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177884043369.17828.15066987287212523114.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 551d11746012d14cfd0bbd5f01d3427ad750ef8ac9776ae3dbfeca7e28533166
Date: Fri, 15 May 2026 10:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778840433
