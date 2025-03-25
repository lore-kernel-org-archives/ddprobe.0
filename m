Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4141E210FB
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 02:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742869194; cv=none; b=YNQS7tI8mM0Mw7o9FmGmIC9VYVwGKgN2i2N0JAB5wxnu5aTWgcyqNvB19DR6DSJQQ6Y0dcP3yOctg7b7O7biDNUzEmGniE/oIZwptcxezQ4i6pITPwT5qu+jnaKn36fxn1DM53rod7iDWneiriDa7gycU5nQlp0NJzt/zLCsunQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742869194; c=relaxed/simple;
	bh=q1rxdbv2R6Ez4D1f8PNI5cKQqtt+awNAJdUCtpQl+Kk=;
	h=To:Subject:From:Message-Id:Date; b=GrGz6HLlxHWoCUnxzawByAeMr0uqRBOpTRGLquy+7yGFa4TkwcaLj0FspBjhLr8wM1rBbEt2HnvHyUdnRubQ0KIJAdv97XoktG5HTmCy/59V7eNY/UUqPnZIGymbl+erTLcWRGn4bBlaPfDmFfID8PJpOSmd0w+MMzwIVtD6KMI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y4Uo6vOQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y4Uo6vOQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB34EC4CEDD
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 02:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742869193;
	bh=q1rxdbv2R6Ez4D1f8PNI5cKQqtt+awNAJdUCtpQl+Kk=;
	h=To:Subject:From:Date:From;
	b=Y4Uo6vOQI1UbyR19LX4ymYw5Y5Kq85E0AZtDtnQODAaNwUPByLaT3I4nVK/VW4DyH
	 wV/ZC4HApR3I1vXxmlrlfPo6AGDn/PKh6LsxhfdfIJkRYMZAjNV4AxuwsG3NRogGPO
	 71hjKnEOCbOtjoVWfhgAi834Az2TFLMxwa+W53eUTjDcFFTIY0tkct36TzGJq37d1o
	 y7Aqbp75XGYLZ1QhPem+TfatF6tfRUlBjKLGSUKhJOYuBhRDJxW7XjGGHQRjpIJX3r
	 AH32AYIUmFEZgxj7XHCZ8AHx0mkMJywGKOhxWJvkpOtuYSJH4kVipGPgV9a27PqlqB
	 EhI9ylDKVNMdA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D0BFC36002
	for <ddprobe@lists.linux.dev>; Tue, 25 Mar 2025 02:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174286919363.10012.2125067685440726386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d0c4c847248dd9569e095245d4ff7e9abeaa585569fbf41c6dfc44986c45b68
Date: Tue, 25 Mar 2025 02:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742869193
