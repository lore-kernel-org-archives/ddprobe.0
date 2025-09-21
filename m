Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28A5B282EE
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758418794; cv=none; b=XrBEROrbEnQUSBgooSbWhOADyp37tJyJvGdx2+DPuSBfxP/EYRa1BFo2kBm/sfG14MGzLlinQ2h55zCMMhFxmbq9ULrtiwsZBPIA6T1xGNZW1COrc6GR5+f+sT0+3W14X/kMhe44hwozpp0SgIbAhvLz5ZV4cBCgrLxsUfQgevk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758418794; c=relaxed/simple;
	bh=ScEpYzfJNgXk4sY3kdwSwcTPBQUZN28+sZhZnHVRReo=;
	h=To:Subject:From:Message-Id:Date; b=uGoyEjzXc8/Bc0EM5L10oH6xWsoSoDw+mAcOnmZCxLAsDCOUTggdVf1orjyvPDSSh6bTyusg2PgjVi247nhFumzXUbHJpeCIsF85AlmVnMOlO6nYAshAxc4TJtISGau+Su8pn/vt2M28982my5ucKmryJKzs1Yp7c/X/JTrjbWc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LVjs0n5i; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LVjs0n5i"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8192C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758418793;
	bh=ScEpYzfJNgXk4sY3kdwSwcTPBQUZN28+sZhZnHVRReo=;
	h=To:Subject:From:Date:From;
	b=LVjs0n5imC1cbL+BroiRgj9MD38gt2gzcoR61D/axT/0jmSuV0idktYO8Szl9wJW1
	 kboQNWeDMBu6ay6FZOdjhMvASKCJIhxlV12fAjK9iulanFZRyIzxccZ/qDYAs3I0Lg
	 zsTw4b/a6hcWz60qUipsy+FHgz8PPUN7k+dm5RWuxXJjeA9SGatHy7jVrtZyNb1qLf
	 gaHEiSopyZTHCfjIEMCve/TKqjUdLx6JkBe33GLYvB4N8kbFkmEUd9Cv6Yqe8K/yKs
	 useLn0IlIjAhN+mdW0CNjDVvlEe8g0+EfruMntOhas3hnMCRdODTfsadte9rVltmhy
	 eyIXsOacN21KQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EC4CAC5A7
	for <ddprobe@lists.linux.dev>; Sun, 21 Sep 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175841879357.13981.5525610213761774689.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2cf78d3296ce823b5ee03a80f4a658b912214f043c1b618561f16f64349f8e4
Date: Sun, 21 Sep 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758418793
