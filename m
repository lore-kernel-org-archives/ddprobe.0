Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 04CB63806B8
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775646934; cv=none; b=ViUFaWo0FpEnDVlMOldv967cc9FCkB4OoOQ5H/Q2O75pHinnVA5kFBfWYJIXoaYXBwof+WabockKc0Oyrzy+G//EBZWrlJrHvJDw5PJ3vERIq2/RC3xG2GwN0kwU1BUWP7UQtHMkR9m+m6or19Wxhou+9bHplBt1WDhQZG5917c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775646934; c=relaxed/simple;
	bh=Vo7IsmcTJ4TVPokfoSptBqbNJutD35HsHLEpTvmU+7U=;
	h=To:Subject:From:Message-Id:Date; b=FR5NUNkEBUa3dYHWj7tF6d8jb47ZNXHrZOUveAo0Shsy2099fTE2xU9u4jsrgd++N0YxAGd5VcIBmVguLd1gQ1JUJkRq5dSeDedm7B6SMiURN03Nh+qm4Qr4+Ref/Tp9/VNx2N4FT78fsfDoFlxJslwTZ230gTmoQvU8aG+E7AA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jVVc8K+4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jVVc8K+4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0182C19424
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775646933;
	bh=Vo7IsmcTJ4TVPokfoSptBqbNJutD35HsHLEpTvmU+7U=;
	h=To:Subject:From:Date:From;
	b=jVVc8K+4ZPzuda3kxHD1RR2G3KJQys3/1tRYFu3D9PiMFDPe+ILpRAuEv1ZhEUJFJ
	 r3jPCNW/efUdB5JaCqba3cqQ4sWS7raRqq2CcCztg5TpOaqUyC22VYYxgsokGik0zE
	 T21/tUlanZmYWiTwdb2VnG/VVR207zTFFQQjbfezUXqboJerm15Z5IvuRMhYQ16VAb
	 ejaIUigWHC3urdxCyMyaF+ryz50gGtib158sGu61u2usBxWDIHvKoncglWtXKM4hJC
	 5UjJR6Vu9Kx0G0oIwSOH12CRz+xcJIvsxDMN291J4v/pnvqQG5ybpHZgAxm0Ampr8d
	 yhMvHyN7BRVeg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD4161073C98
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 11:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564693368.16805.7919554156938662202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5ed3596666fbcbfc06177ca97fe19bb0bcecdd099f4062d30e261d1bfeb85549
Date: Wed, 08 Apr 2026 11:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775646933
