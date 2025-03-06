Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56939280417
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:48:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741304934; cv=none; b=be0FXbi9PzA/fN1GC1U5fJ7pBSfCQ1babsG4IpkGqJU88IoWj3GKCrY2zZmRJmEJQubKrvSLa8pRB+yDhTedIAW1PKctoSPE0grL/6T/1fMZp/UI9URnSV/fYgaNkFdB6uKnlkCUiQ/Q9YG/DTOo/NZQmAxryc7FeDZ7Uu+A81s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741304934; c=relaxed/simple;
	bh=+ehRjcQ0p5k2pqs9advRjcE8SkU8iztLY6BWPoZf0jM=;
	h=To:Subject:From:Message-Id:Date; b=cOUwS5t9WKBSWQ/vEL1URV4DwkQbfEVUAvR/ltprxI+/Pr4WySfnNO6M/dfVcBKFWn9D06QA2cf05fgft3zmSyaimI5EpTtAgSXmFqmbVJtL/0e1WE34//8Wkm7U43gdwy8Q58QKicr9unrEFj1K1+kq/TazuB43FL5q+HYVl54=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KJyspSkh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KJyspSkh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8AD1C4CEEA
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:48:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741304933;
	bh=+ehRjcQ0p5k2pqs9advRjcE8SkU8iztLY6BWPoZf0jM=;
	h=To:Subject:From:Date:From;
	b=KJyspSkh7K8Top8lYIDpe2kympZeSFxcldM0+YjSLDbf/iBTGIorv8fQLC4WnuFiQ
	 g7QtMBTobjHck2czTzDj8aRyI0jCHc6F8nffTzgcOp3gTsNyLLrqnC9Gdwhah7o+D0
	 bl+tCcRILraC+p6JN1dbzMOznCkKQSMREANHbR1lcrN3MGG8+mPACuU+JIVGhfz5fa
	 VtGRFYgfDMC294+Gzk1MV7yL7Q2ug+lc0aPRGcPUgIHvcDr9zCukw68fsnCQcAW5my
	 tzaL6kwIyB+xMrmSAKMRFv25kL8IBcmKt7ZLdy4UxcPDjNPXgaXkQuF2nbigfgTwnt
	 Up+Zx9/5vLymQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B6CDEC282D1
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 23:48:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174130493367.686.12938802496043536703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 52bc37acff395d52e9a4d0d7e51df60576bdcbee9218f1eb3cbfbfa06b131c2d
Date: Thu, 06 Mar 2025 23:48:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741304933
