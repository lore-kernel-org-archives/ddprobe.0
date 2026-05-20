Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BD7B2EBBA4
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779235234; cv=none; b=W/vRnCI4DtrOz1T8bFfLIdaxo0dKDQA2hx2xxBQTN2IvreEqpiPZPO2IN4Au/J/5iYIbEy1TjqIFb/W78ctUHoUaM0dxKAXCWKylNtdTyDwPPLWqXHCeLb0iTnx7i1By2McPTHpS4tZlde8P4zk/53PwuohH6ocDu3GBMJTd0kw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779235234; c=relaxed/simple;
	bh=hqeZCtga79f8o01XnM6McTmCYUzqLwpIUP0rus0l+70=;
	h=To:Subject:From:Message-Id:Date; b=HQwD0KakMRy6YNnyfkddBfot9OxmN4atf8QCWGahgBivKwgllhjNDCNIhjxHv+/3AjRalEF8PK0xG8FXESw7nXmylSWL5h8hWcP4PUmbIaq2usqp/2xeP4r4vbcj7DV3DsAn25icuMPfSSq/TF/2yHZqHCerqb5Yfa6xVen3Tss=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UDCBj+k3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UDCBj+k3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9DFAC2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779235233;
	bh=hqeZCtga79f8o01XnM6McTmCYUzqLwpIUP0rus0l+70=;
	h=To:Subject:From:Date:From;
	b=UDCBj+k3HFlmDzY9nIfdIXKedzu9kok0AwEtD6QKNDiPuwXxVjn3lQvinSCPs6hv5
	 x6nwPfzZ5izGgP4wFDCmBuUOLfbq+2ZWRUi9uKd26EVdpDL81VPt57NASipsLJdIcI
	 P+TjbesgdzSfXiHQfdpoG9nzj37f+jwZdSBF1uAGag4/czOcNKtrPWSQKN70qCBVaK
	 WneRMYAtCoWNyxEdtBX/2FzF1ezDCcAtuKQV0Z1XL1v3nr9FAuBWYF2ayaR+hCkz0V
	 KpUYdjjwaRYyWLDG3CW6eFVWtrumqHIgxL1IifvBn0XYTvryb//Q4dnxdSjfWFn/pM
	 ZmTfJJIR6AJ1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD1C5CD4F5B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 00:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177923523368.17949.2294357217105967599.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3e914f918b9dcbba30b921874671e9f9ff6f9eb1b098dad21a77e6f6a48e3175
Date: Wed, 20 May 2026 00:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779235233
