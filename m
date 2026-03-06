Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0578B328251
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772806494; cv=none; b=TciRBDqzI4nJOIH6404miRG+lKWlq9PGO91n4SydlAarSPxPq3BwzKG7p3Y0puRTXrWW+6JF3HO7iRjXnWp4M5KrsvYUSu4hsiZNC6KmwaZMy5CUOCrUBCd61UVfsNqTOT2s7ECZA0M+L3SwSqv2gI/XxlEjJwzhlEvRwmn+3WI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772806494; c=relaxed/simple;
	bh=uITabzJYKtqHGbbCYvWrCQqx6D/29RKaUyOjN/mixk4=;
	h=To:Subject:From:Message-Id:Date; b=d5iD12ia8cEnOPUy+ri5zZvuckmUbFPsox5t1lhILfv5KmPbPfZbrafMiovG/j1jXIb6zYK/tDkPWcPk4m2n1DBCTCJ+r5vZDgWQ7Msq9rSPgxBfjJev21A0/FCIIFgnuf6VhIDYSbxVCgaUk+IkLU7C1dTXl/lsqeu/NsxKw44=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jKulToTy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jKulToTy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9EC9CC4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772806493;
	bh=uITabzJYKtqHGbbCYvWrCQqx6D/29RKaUyOjN/mixk4=;
	h=To:Subject:From:Date:From;
	b=jKulToTyDK/e2/siJ2zLFPif/pcvPEJfUv3ZXrimIivGTxAq3UJDV8KURMcMRtS/2
	 wlnBtXoPxTrgGkfRvOl33m7R5gPBqewxc51BCvTiTI2nnouspbzQeEREZZcvAQTgLj
	 i6dHPp6LhFYugxeKsyk/BLY+uKo0eliqisW7RrvRjFhmomO0GYlymg+KDiwaSRzD0L
	 aazLXkH/JvV6fx5rTKGdOyzAuZp4xTFP4YOBRBnjJ7Czlr75xtbpw7qKgiPUG3W+Zq
	 z1XuBBBKKBXiMEhWayEw7Kx5xDlf4RAMX3+iApae15jjH5+o237z0jGZmtS28fztq8
	 di8ZgYJk6rq4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 900EEF0183A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177280649358.14972.12521087038269099443.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84fce92c06608076b514ee3e2b2d9a94fa778c57cce7323adad4f4c6930c58e2
Date: Fri, 06 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772806493
