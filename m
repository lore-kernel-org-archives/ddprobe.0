Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67B0237267A
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791083434; cv=none; b=k+m2+Ss7waLUzBhAtcCzk0Ye+YuKgandSrp4EwyhSwm36MJ/EHNxdwODEeEsIjXFV+xw6uyGmqdTuPyAm5EUm5VFdml0WjyWa4cmKE/GqwOJpihtjUF5xraSxvPDp5bzHaWgCQUIjWH666BdKFAq3INo4sAv7xBSVJYWxI+azKw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791083434; c=relaxed/simple;
	bh=L3qpviTxIe1QTHrrqO8TP/vquIn9dqEUCSwbM+EEQPw=;
	h=To:Subject:From:Message-Id:Date; b=UGbVR4HMMJADHgOtK2iiBeDWsgNU1/z/9LxbFgU6seVCcy/QFFAFxX4p7H+hx+vymKQyU4gaU0nrL3pm3e5qjQDOi34kEbWWTSPerdQPTQVGeemqbgW5dsKeS+bztjGl2olZJaPUS8nZuFRdCODfCw9QpQTN+jS7oFaf4ANuS+c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TnElcNVG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TnElcNVG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D9BD2C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791083433;
	bh=L3qpviTxIe1QTHrrqO8TP/vquIn9dqEUCSwbM+EEQPw=;
	h=To:Subject:From:Date:From;
	b=TnElcNVGJAlOEndeXLTh+U2MBCZcr1nqyKjF+Hn7ybVv5ngvX+RhtPcNwqodKr3QV
	 Xsng/fBqI/LPIb3Zo74BFzmrC/Qb+1NKE+XQQGIvHuV1UfQtdYJ1htqzVe60utCAPR
	 xC0qnJrhCbOFyMC4CnmOr/Cn45AugO7mSG6rhm4TJgfMRQ61+fzZl9WhWlHiQXSG6Y
	 WLOyb85O6hSbEeaNQWBg6mlt1Oax0erCWkotcr9BJhaq4QBLf7SAJCWnB1mSdARTjS
	 8nsatuDqE8bXeq9juz5oQCMlovvamDSm+3vwyVVV9po6ryv56tUQRS9OHyj33gDwHk
	 n+takINplf2oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE9A7CA5FEF
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 03:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179108343370.7978.14981057135352809684.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8ac1fab6066b88d207319818a7d02446531266c4f31c2dddfaafaaf20338f0e2
Date: Sun, 04 Oct 2026 03:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791083433
