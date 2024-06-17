Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BDE2C8E1
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:08:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718640503; cv=none; b=NPYx52PziwyEm/mxZlHObv3LpTq3QRMPVAlTQOrYNSTJAhKNaMqDoiXzFDlmv2zHypVkPhwXBkjlVKa4qskJt7m3onJsBttz85D6BuSddnu/vI4as8rKEtInkXGXhL4XauHr/IJB2W6/u5SsA3PPIhf3w9yXZOsMLiBV2U2FHQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718640503; c=relaxed/simple;
	bh=bLNozzVy+y8cSOLheP/3IIIBNEUU4FkknILCBukk08Y=;
	h=To:Subject:From:Message-Id:Date; b=NU83c4hyj3f1FZpE78fxBV6KWOaFl1BHZv87yGxkMXWtjzSNJmgDDAnGjIq14Dc5e/FtAQLB/taHfQq7ZJkm53eBC941I69ErCnBLWmDRmxfUMYbJ0dskYy38ecGGiX73cFqTk5GimxCP5+oG5vXIn6zEpDzVhBlavhChcsKw6s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UzzCPz1Z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UzzCPz1Z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DC559C2BD10
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:08:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718640502;
	bh=bLNozzVy+y8cSOLheP/3IIIBNEUU4FkknILCBukk08Y=;
	h=To:Subject:From:Date:From;
	b=UzzCPz1Zc+3OgRQnXlPC6WcfktYdPv//6WaE7jBtWskVn4atbQasvf/v8FfsAsmLR
	 nY71hhnWxMNM1f44IdrLixV1YiUkXLZAKwRK8GG6sYeGUeWPf+h0bmXWG20zJOLlyf
	 dKZ4k3NExSxeOO5/RadwiNehOQgpZjMW80dRTu1mwVmf4Uip3yFOhBEBuAmZ8wf1ut
	 dgOyl5MdK/sOLM06j2EGz683FB9CsvmsQU0CePTNoFwSj6m+VCTwBfIxZ2phtMBcHn
	 xz/H2R/O8bEyTu9+WzOEiU2A3+L0tHhgQdKEyfkHtVfReykXiL3eOiVtMhOSDUHWJR
	 9DH+dyClhlq2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C81D7C27C79
	for <ddprobe@lists.linux.dev>; Mon, 17 Jun 2024 16:08:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171864050280.15993.16096117913684653688.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2407b8aead0cfee8af4d1408934624c5af8928c5c1fdbf322b59e3fa7bb82d99
Date: Mon, 17 Jun 2024 16:08:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718640502
