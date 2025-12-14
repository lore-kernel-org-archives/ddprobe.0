Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB402D249B
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765675374; cv=none; b=SHFg4D8xQgWPYMFHL6MVzy7/iocuks3JHvurePlUt3373oNdvwd0U3irDjV6G4bZHJ5xvxlangfROR1rSQ3ARWc7jk6dNy8GX4dnBDo8+cmZnnuNKBYXTa8s/QHtD9cOODlD2UveXbtFOB71pgN4Xu1y0kUfGU7ElBcADh/rpZE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765675374; c=relaxed/simple;
	bh=fUmUtIO1cy6x4CCvAJlBuZwcn5no4b8vOIJcjAZbT00=;
	h=To:Subject:From:Message-Id:Date; b=Lju/wuhmBM5eni0feI6O8do/tRXcRAo9oQrPDyK+rqxhTDWUn4iF3bTrwSpxMkzHw0+J5FSoQIzuQqH4PKRr74bXNEjskRf9HaU9Tw+DCwNjPivGFw84tVgLCtIOXeAl0CljArLXDDfIcnlQPaH+LcG7+Z5qe41DLf+pXi53QDE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=feV1ci2n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="feV1ci2n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A94D3C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765675373;
	bh=fUmUtIO1cy6x4CCvAJlBuZwcn5no4b8vOIJcjAZbT00=;
	h=To:Subject:From:Date:From;
	b=feV1ci2nrmXJWY1Pil4HhtPiabCk0YUND/7qn5+mLnKk7FpSzSbrzCfLJqPn9MFdT
	 I/lGtmcAkOHFcVXXSyvV6tFE8J+g/InnPcguNOyTjdUSCOdHdJfgSbNSZOUXVDPJtd
	 ywu3amkLMqR0oyu/8CsVK6DVV6zgfyUp8L1tNmefXDzpkNfEG6uwE4NnoIx5+mnUVy
	 irtUS9BRbd0D32mXf3jBfIrvncngCmC15oZhuwGp9/w5ikMlrVvDXQUgTV4K7HDzOL
	 aX3F/cz8uhf4QNxFaU5q95budwRmMIt+pL127J3OUP5Alo9RMcZyGOk03ElTN3Ka3b
	 OKvEuJcoQW6ig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 937A0D5B161
	for <ddprobe@lists.linux.dev>; Sun, 14 Dec 2025 01:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176567537358.13442.3211035735578905686.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8731ee22fe73642dcdab9f4c8b49e6a06e6c115a41054ca87dcbdbf990678b9
Date: Sun, 14 Dec 2025 01:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765675373
