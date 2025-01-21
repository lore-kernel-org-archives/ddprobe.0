Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36B391F5439
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 18:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737482754; cv=none; b=r18EUsdxhHUia0xGCi02E3hNV8Z9af7YHvFX/uR0OmgivF7seb96jTcJ68rvccX8mbw5GNXTcJaoCbry5PPfSNArYyaUCkEjEnSwUr3vxjdC1H+mknebPD5bwjfDo5G5CH/0whjRDpI0ARgcJNvzzW5xB+hFoYQbFk9b9Az4s6M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737482754; c=relaxed/simple;
	bh=npoQzBq3zvkZRIpvctRt5FYBNer/PZwfyOyQtwaanMY=;
	h=To:Subject:From:Message-Id:Date; b=piwTd7ftj6jX3pqTt/FQ4+S6uF61N2zE0iztLkutO6LXnN20VxS2Ga5GkkhvZJxAkj/qrMmzok6DaNkCMynMRH2GPAy7M8uMaKeyZxvAjDhad7R/xCYpIkZDejqPS3J0n8jiV+aylL+wOvH+0k9tkjLivpkeiyl/ggOba3FKV3E=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oGO9qkvt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oGO9qkvt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B3786C4CEE0
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 18:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737482753;
	bh=npoQzBq3zvkZRIpvctRt5FYBNer/PZwfyOyQtwaanMY=;
	h=To:Subject:From:Date:From;
	b=oGO9qkvtGWpKPeR7ZGegB5uQDo3V+KP4XIItHJIoaEf4jIF7MO7cZOMsAfWSsSRpf
	 Q9+3cGQAJY4LOPRgmVTN/B+yAIFhSJwasVu8wkvfAnTfeuaKqkzBgvVehbaqRWIdB8
	 wewwuxyHmiySN6IOHSC74n3mj3Se3amCWYP31KGOHtDUcO6qRyofN+Qrhzhmhy6hqt
	 QBCZesJyRdudC0E+Iynh8ibEZ/BpobHlaNPE2WUwbl4R8bTPJXjqr/uN+xz9ASHncz
	 nOMIT5cQYReZnDNs1F4mIq5AetOIu22SYaBvUw2GNgbFCm6uLk2d/cZLYj384lltBN
	 gM1N/4nqtVvNA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2563C02182
	for <ddprobe@lists.linux.dev>; Tue, 21 Jan 2025 18:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173748275363.31867.6549626246655587700.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7e5943ab992a0173e6617083bf2d164b04ccc1377a736d36b75790b56d67499d
Date: Tue, 21 Jan 2025 18:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737482753
