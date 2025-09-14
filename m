Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 38EF323A9B3
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757815194; cv=none; b=u/KeaE7RkVfO0ccHPqUma8fKydcy0MDgbEauOkqWvG8wnvPwK61O4us5osINwePh9p6T09WbAsxQd4fbzL3RVBwB+Ws7R3zqmwK9ojH5uhHE5gZZloAoZxVBC+qw1Tp77kqx0Y/sC1GhziwKr2h/8aT6ynBpEPZykV2IJ9gvu3g=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757815194; c=relaxed/simple;
	bh=u0ywE3LpTPxVFbtiUFL333SdrOJuk3M9UD+xHdwHvaY=;
	h=To:Subject:From:Message-Id:Date; b=Dh0ZafwwDjdvtJghcumQ0mFeybaZV1/7h20EZRU9A3TbCg7Izi5BI2ZtwlwBIIfzMrPEMx+GuS8FfDA9JyUhFD6zrOv3ixVTIn7wGlkpF+A/5Wlz5rIl6XHeuu6wLMiY9cZgQENKwoLx/r3erDu6e3affNJ2fpWbX+7U5FI5FhA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dm4oxTiZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dm4oxTiZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A504CC4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757815193;
	bh=u0ywE3LpTPxVFbtiUFL333SdrOJuk3M9UD+xHdwHvaY=;
	h=To:Subject:From:Date:From;
	b=dm4oxTiZhryR1Tb1eW+YwGCQKF8+4TVX76UTeIi/6r9R+ink1VSWdol3VsOeSF5Ja
	 92wZlH8GicH4F9JbnOqoz4pnBxCsggN+/Gbwcdgo6qF5xZI9APtadc+wLKkop3eKVR
	 PW/1exOrgykIwzZiLyIz77Ai5mwynMjmYF8zJnTPUhcOj5OgzA/vEMAm7wA19CHR2G
	 1BHZaVI2hwNM4Feyk45vtloBrp3nUssMWPrQ+PGGzfbPGCUlxGEWOOqWyimm4zLoZ8
	 gzxNn9jN+ptTOfkbCBRHwrYFEkAxm9Yp/C3LbS7rVX1GaUU77yh35IyldPZwY9lsvP
	 KF+8NcZMfAGHQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 920E1CAC58F
	for <ddprobe@lists.linux.dev>; Sun, 14 Sep 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175781519357.4337.5714272083767892847.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 65e806baadba5272d92e79a3bdd8a515997ef8ed4541f6419292047981d74517
Date: Sun, 14 Sep 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757815193
