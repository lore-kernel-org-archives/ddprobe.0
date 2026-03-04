Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E249836F429
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772620494; cv=none; b=j5Sk9jHi43zUzGedErvPjXto87Dp1XaXs4Ggj8SKQzb/pDKnAaEMIFu+Ko7OTv5QhJo2rc//L7tqbZmfOVQK8gLS2u/kmfyjxxpGggpEm1ABBfT+qk5ego5d766SNOA+tnTsuRJ635GGbarQ39EiukGrLeQQJ5cTNqrCVgwDjCs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772620494; c=relaxed/simple;
	bh=HCqPelzmqx8UJqor80iTK2Z1jnh3sYZ7ywRioKUDx90=;
	h=To:Subject:From:Message-Id:Date; b=afrpL2hcT/rTxrG0uBtKvRpcewPLSD7JLU+sA3z7boBOIRqzocMXh4hRUHTypiBmTepkvBulcBMlGyoPX4Sp7/3EUAu/wA5yd1J2Cz4VgWEr2g/4Z6cx3xiYddoqe+wRGNxc/W0/e0QYTfGAJsDEeY7hMY+mcOPweKj1ufT/Kcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=bF/X9pmB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="bF/X9pmB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB5FEC19423
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772620493;
	bh=HCqPelzmqx8UJqor80iTK2Z1jnh3sYZ7ywRioKUDx90=;
	h=To:Subject:From:Date:From;
	b=bF/X9pmBbMPSIP7L0cJPCy4Jp40/eTNNPqc8XVDx+961QJXJVLaawrP2oRkEkbuGE
	 APXDJ85tXGSE9QzbnlLIBJDdpzhUIPlKtkg/+zpVZitMea7yzLDO0dzm7aINdql5tK
	 EJJN9kBpS6ZsPv700uiz1J+kbD4mhlfLslWNnR4ZGLAiBi8dLloG/RAnogN0jxbfLv
	 6EbZhf7dqSARSIRqGaRbzlPUMxYENteapLwkn+9SpRm7VTYcxFZk9ssUQfcjTU+74V
	 /VOWUPaeH0aEHi9kkKGtEe/lRyOAHJhUDZkQdPdxO0BJ56XB5JpWgcDkFy7cWl+AC3
	 YfjVdWfYg/RbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0D30EB7EC0
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 10:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177262049364.15705.13477044569379129967.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a885e4f346ca8e8973086568a542d01cbae8dd5e8422cf78728a859c710ec2ab
Date: Wed, 04 Mar 2026 10:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772620493
