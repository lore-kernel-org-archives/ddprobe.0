Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A6C934A768
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761064794; cv=none; b=QaI4bpFc8EUAUZcgtM725VARTpWu8Mz1qKIltIMThguI0obrADZEdBDZ732d8MBsIjDSy7iDis8rjCx8DKUxiNTfP20NCwIJHZzNcr2zESYT2dzpgUSW1xRuzQT3FtvJIT/Lk07Scz6LDdlcWUjewbwBij0i/dvmCJh7A7u76m8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761064794; c=relaxed/simple;
	bh=xQPYhdKTSpMNBCjk9l2d8nZnKPCkorp//h03/bQphMI=;
	h=To:Subject:From:Message-Id:Date; b=q0ZMHlo7foNKxhR+40pkj3K8akeRcRPWk7zG15/siUU+H0WKFG3IPZGN7iCZJikDIRuXisZa7VhM8bLYHQVZtLvf0Wz0vp0W/OCD2jQ2dYB0u5TrTotzaFF7nLI7fxl1f/zpMk+tXCbENDBfvSunV5qUtt60IbKewfSr5MyMRjs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P53Rp8qt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P53Rp8qt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0B6BC4CEF1
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761064793;
	bh=xQPYhdKTSpMNBCjk9l2d8nZnKPCkorp//h03/bQphMI=;
	h=To:Subject:From:Date:From;
	b=P53Rp8qtY5hg/3dc1zclY1F5IQHrbx6C6wP1nitFopJpqgTFVOGHkMq4kiMHXvFwH
	 MKoHqMQ2TY8pHUoz59VlCYF9UC90nHM1xP8jRxKIFVcFDNFjyIs8cAIy60l+eXgqY2
	 MAJ8WZwQjx2rmpZSvh7/nEOkFLTVJGdICVHfMZYRXd3UKVbYBPHmMomfO8haru03zw
	 x/dGcgKyIdNxZEHOtjENYHm2H9KKGsndH0dBQVXuMq2rWR33GMWca/ffbuyhSRuo1X
	 QhVAH9UDZINZ65IgJRdPrfNepkpYrT5MrZDVfsPKSxc/SJPcWIbvY39rq0C4XoSqic
	 Bgyx9DVyUFg0w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE5ACCD1A7
	for <ddprobe@lists.linux.dev>; Tue, 21 Oct 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176106479357.12087.11518644616135066731.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d8db22f5bb8f86831c21141e7476c0743f68dbd2b461e7d97f1cd6e784a685a9
Date: Tue, 21 Oct 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761064793
