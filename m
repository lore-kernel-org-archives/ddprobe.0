Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06A7D4035AB
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774976094; cv=none; b=khJ1sXe4xElm7Lxn+R1Ad0w0Js+KvUy0DBAqdEoVzHj0OwRBLX7COf/zAM2lbO1e92LFoRXNffaSiQZZyhEpZ4udBf3Ej9uwaNT5FNibQr4jnXb/E6rO5mU91YfuhKCNdvJuJETvoBTdVDN493Cmec97ABsA+WYb31TtCXS/2NE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774976094; c=relaxed/simple;
	bh=2bowydSfJ8qJe6OQQFK0BTrdgjZftzBAINNBboZsBW8=;
	h=To:Subject:From:Message-Id:Date; b=JBwW6WhvqN/mHWRcw0cWQc3qvajq1wdUmeMxHzbiCP35YSJApQTkTwEMEdNXTc3WLz/TWRH97/EmNpncsG4ZwkSHKYymy7KDzgZeEE1Kb4uclPAQeioir+K84P0UTsXECARwzxTN2SO/piiiblBULoXIMniqBCZ2O/zs1GfC+ls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=m9RAqxXM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="m9RAqxXM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1E76C2BCB1
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774976093;
	bh=2bowydSfJ8qJe6OQQFK0BTrdgjZftzBAINNBboZsBW8=;
	h=To:Subject:From:Date:From;
	b=m9RAqxXMp8Iup5NEJZN6cPc1v4dpZCX1ezXa1BvHlg+okQsLdaSpU2FfumPDFMxYn
	 LMzcElPngr+jD3KcOCg/HE/zo24X8r4lWH3gLhnMdWSSbAhkd2ljXzaqkXEsqQZkEZ
	 O932cyUlRlFanCzJp8P+sqYm8o9BZkdZOXzimjfYxI1Yp5kvGerCVcS2O9kSsZac6s
	 q1OReiiIH3RPZhbByM+M+OvR7qhxH7fEWLINbFcivKaoc+EU4Oj1H+6z41L2rdcCHY
	 +dghcXWfmvNmuuXqpMSM/dzG7zkCZwYskZuJFcjdjeHnU6msLlneEmnf6dk58+SYdK
	 TAWdR73Ob9NOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9286410F92E3
	for <ddprobe@lists.linux.dev>; Tue, 31 Mar 2026 16:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177497609359.12648.13695140801496318476.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 814bd8ae95aeecafec97f35e8071246ddf5592a8ffe31c89c84f665f7a3b370b
Date: Tue, 31 Mar 2026 16:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774976093
