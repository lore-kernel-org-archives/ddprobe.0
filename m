Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EA1B134CF
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750636194; cv=none; b=GZKsCiNaky5fHzeFTWLjXZV2WtJ6kb0SE3thvlPMxXHZWOCtw4aOft78Xnbe7OFCy2or+KF/dOPfWzwzudmcHCMXiUG4yn2yDlt93wpLtLXOTqao+EcQxgtDo32DBrKfRKcQ30NA6QuhYou1gH+Kt41sYteHZ+oMgIUMdHHjT84=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750636194; c=relaxed/simple;
	bh=drv78Xng/aAQuIthoUzgMgvdG9Qa9lVTyIIkxBzOTIY=;
	h=To:Subject:From:Message-Id:Date; b=b9X007e7WJweYzbGp+JILYsn7VuUcv6Kf+CMrbxTAZWu+WFMtLDXhxo8Vx25YOxbuRrnnXvnJMetkB3lS/ih4mJNNTDr+3Kjrds8sZmiw8AXEgWkYfFL9O9/XH8k7/hn2TF/OyxCQA1L+VIFigZ/42Imctnsu/vuFONvpDfQhtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kD27E4Xh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kD27E4Xh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AFC26C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750636193;
	bh=drv78Xng/aAQuIthoUzgMgvdG9Qa9lVTyIIkxBzOTIY=;
	h=To:Subject:From:Date:From;
	b=kD27E4XhKZ4JLbLrsn5/U+fJRDDz3Kq7ltQNpCpfGXahBy4pCks6dcvkUwv3o24bd
	 Ufi9WCheTjPAfIDUvN7uBkp0Gb/graIG125+fPV6DlMNnB1PfBzd8Wr+ra862V6D7n
	 QV0V3yVrRLh6veiLNBJSMvGpRBdXyQjoXubSFhvZeevwdXAQXyh9mV6K5iHJ+obJuI
	 Uyg1RuMdK/0wUSHVcptrIDIEP7c4tsdRFsLynp8NVEmhofFpCZloZsGutU4vdz6fVz
	 9u+lCFUsdUhVI/0aZK59AYgKDFZpIvC8qTJliPj71em/mT3HNhnEzrMhzuXQbFNBAS
	 n7o7fWYCgcxtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93EDDC77B7C
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 23:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175063619357.28103.12322089159969060728.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f8489fa2782f2feed3ee924d2cee41c707aefd5f575ae22a30f6434ea2ed489f
Date: Sun, 22 Jun 2025 23:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750636193
