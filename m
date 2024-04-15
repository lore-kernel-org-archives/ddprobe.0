Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08A987868B
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 14:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713191963; cv=none; b=s1nYZejRUkSOzv2mSaM+8nHKrXkIDO4sAPXyunwHdKnjuSptmTBCBCnJ+/yDJbDG1p4bPeWXai26vcGyCCsHpGGaUZ3NG1Z+DYatIcKi8BpMd0JpoIwkljtB3cJWeDUskwZcIKkOU+SgmhSssIVCvZNYObVouGCDzvmdLVbBPQ4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713191963; c=relaxed/simple;
	bh=+0hfTKMEGCeV5jo4C6e5MX+YutYUJnPlfj48jhghZmA=;
	h=To:Subject:From:Message-Id:Date; b=pp3aYdfQRTFpJd4w7lJo74vvt4BBZNyXSD+iyRV3XnRIjxcwIZyCagWmBeey/1dDYO6j1iAhCjcC+bazl1NmlR3vKADv+1Bx9amDBQ15mN8nynf/R9ZoayKwCih4M1A8Uf4rIakmPrKcAkT8vf6iY9to2VCF6YLzZwj+6srgI2Q=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AJH9Bcaq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AJH9Bcaq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD73EC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 14:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713191962;
	bh=+0hfTKMEGCeV5jo4C6e5MX+YutYUJnPlfj48jhghZmA=;
	h=To:Subject:From:Date:From;
	b=AJH9BcaqU9kxgZn0rlYQ5+lvPmYgSOXhrHvzqhkfqCh55H+TJjV2n11xC1Op5BLgH
	 3BUYprI4CpyHYKQ6KhVnyw70nFR6m9o8Uv61HVQvySO60fcbQzt/r9m3dSSmeeiBWW
	 rTqZi9UJOw3H3uvtTho0M8/KXBKoV6T2ZntUgrANa96AaWO55tnYESEyQ94vjFaqEx
	 PC06F9tP3rRoRB13YSxgwd9YrY79Zebu8Yh/tB8FELAhz+yUxNq/DHrAEY0to8F14u
	 EMtA7ymIOB9IFDclqFZ6yeRHcqK4E5OOuQa8VJLKliVLkZpIe8YyajfGA+inUAFotL
	 QApCkCpI3vcyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDC7FC00A94
	for <ddprobe@lists.linux.dev>; Mon, 15 Apr 2024 14:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171319196276.13634.6106835296276953294.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: db4c2aae05aff634449279c7aa98dc942aea9f34abfd904d663ba00cd3fe4bd8
Date: Mon, 15 Apr 2024 14:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713191962
