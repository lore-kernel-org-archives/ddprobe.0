Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 68F9327466
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744578594; cv=none; b=ZqoPYB3COw6VUeqCpTxjEWzL4fRgElcf8C79f0kBseTO8dvkq6IeaX9xQRDhHs3BgxKL0W5WHQfEK9o5WVraHri4VUYd3klNlqQWuQ3jhuYo+2Pj0puGkL6q+H0uo3SG1p0RoqLWY/jeA7XHZtOEAlf7dbP3kB6OMk+H2O/ITiY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744578594; c=relaxed/simple;
	bh=Ua4sr+dKHklOIOtZyX2aOyddGxu2Y2EmGjaddaoCxxM=;
	h=To:Subject:From:Message-Id:Date; b=YNs+aMLLBwHI76NbMYLoSzitWCvXEYrQQk5MnSaLMrrrKvL93JDpQktfePeszzGdBCwdOVdjgFOnXFYvingMhrR0naNapbbCnaTuXYWlPBzKpwz98YGakdvpiZVrcbWjQCBHpevWL1YL37Yrhjbr0/tLofI7eygCnEinEz4oADI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=drV7UWBd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="drV7UWBd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF32FC4CEDD
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744578593;
	bh=Ua4sr+dKHklOIOtZyX2aOyddGxu2Y2EmGjaddaoCxxM=;
	h=To:Subject:From:Date:From;
	b=drV7UWBd9I17b5Bzm5HBNkmmolSH/kW06meHbH4eYWK8L00AtQiltZr3mpgwWoZ/+
	 Z0X2+FlVB/tTQL2n3BiLZ9royXRDO6NUhXtp381SaQ/hw0Kxbof0THSy/ZIvHoa24R
	 KV/X7BUO9I609yqcuK6HvuwiO3aKH5kuP2AMemvUNNRKjM8H7unSL7LkXobLpc6mp2
	 XGrrYfs05JAbN676QK9R8NDvyNvuNqIs+Q5QqM2yk7F4I+zwd49cqo1IC+QiKkEYMA
	 JXOkK7bZWazc7U/Zs1qCDsQuDUcjqEi44YBxqfMmdXle/oet2EhgoGoqPleBrkaC4e
	 FwTcqIOXqoVBw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2FE4C3601E
	for <ddprobe@lists.linux.dev>; Sun, 13 Apr 2025 21:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174457859365.9008.7139775918417529009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d12b122a64fd48852028ca4dbc435359c6ace5d9d101f9b20be11b15a0ab8d6e
Date: Sun, 13 Apr 2025 21:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744578593
