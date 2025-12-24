Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 00A4A23C8C7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766615634; cv=none; b=MsimxdfhkMx0XxvKs//FtxsfMrzlYCFg/7XI/yFIWzqn8jQW/bLqj/NkAhkoUOv3b8q5pjb+URlQ/x8kajsSAins6XhTWuGdbg6vYkKqBgB8WutPVVVAnEAmrP0zEzacyOIBwYzPR0bixxT/ZwCskREldFnCIbgSokN1Cz2qhZw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766615634; c=relaxed/simple;
	bh=j6QoVUAuOFm9K6n9cjsdTSeAjuIVNIkBS1Usjx4vmb0=;
	h=To:Subject:From:Message-Id:Date; b=JDR3nL3bmK7abZtuL0wIIildJVV7z2e9w8Ql+kpReFQ3b2wJEK6dMOgklankZwRdclQhNZD2uTeq3VnhdTi8kd4okTt6owmtZ/OOl6eOp5W9I7tAOE54aKRdAE5weJjc4/aT6QF/cA4T5EpPYzRZ0pktZF1NNdwD9EDSnqml2lo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kfYzuuPk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kfYzuuPk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0C1BC4CEF7
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766615633;
	bh=j6QoVUAuOFm9K6n9cjsdTSeAjuIVNIkBS1Usjx4vmb0=;
	h=To:Subject:From:Date:From;
	b=kfYzuuPkQNIqaGfCAduUfVw6v3CcaWqUHlGNlQGqo3KGm9QsBWJfn7gE+QRO1bFYo
	 xwqfS3CkIAW3gM4vCay7em2ymzFDoCsmwyImxu0owhub3GN2r13zlf59MyFF1Npnuf
	 Jq6zbLxJDe6MKeE+OuMooDcT1LI7ZqZ6k2Z4ttVf6Jq0iaUtwUL+BOLgxlEEWukILI
	 TfMO1MpI8QhS2HlSa2M6Rsk+/duyaEswvvaGvFAyiP1nJQQPh7V2phP0HBjzTsEths
	 yr2t3KRwZmCklhdX0LV2AAdy04Qm7IYU1if/9Ylpe+2qbl44Kj80ePhVXSQ4PhM+Ow
	 I5R9K/OizV1hA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F041E7849C
	for <ddprobe@lists.linux.dev>; Wed, 24 Dec 2025 22:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176661563357.17648.5176957755544227704.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 807ac8e2b836dcd6b1859d8f65989126ca6476fad7e783f01a02a3b9274fa973
Date: Wed, 24 Dec 2025 22:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766615633
