Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 01A7F37C91F
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772920494; cv=none; b=M0R/m9ejhnlT468ECvx3SsKIYM7V23pCd3LYNQX2PBzuXn9B0PCBbteENYyEhiHWf/YHlDzgnfiBAVMrtrVkGg34augABLqPv7wIJTMNDudJ1ltz7/ZWrU/d9qHSVS8THTh3h4g0nqCZKvE8oB3fv8vqlDyFCYw/w4hm9mra3P0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772920494; c=relaxed/simple;
	bh=/UnKSz+KQmyv83b5fjzgaxVTtQ524rWSBTGAVDhgWLU=;
	h=To:Subject:From:Message-Id:Date; b=b6bOfwjwkcxkz9YHhW2kkcL2iimnyIyLTrvNAWqqfULidtyRU2DRxr1AOvKi7BiEG1M7uruAe9kBJkaUzf3SPZCUhyTIBfwAC6fjrXi7i7xTRUyXJviHhxIs09xWBBqrGfRJRY3C9OubJWKT90Suzt3BUQImPL9h9cNnQ6babME=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h/Ykvff7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h/Ykvff7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A135DC19422
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772920493;
	bh=/UnKSz+KQmyv83b5fjzgaxVTtQ524rWSBTGAVDhgWLU=;
	h=To:Subject:From:Date:From;
	b=h/Ykvff75UGnw7h2aAC2SxpN0wTojGYwxx9uzMjPAl4L39KHQD5DM7m3WO5Jzh801
	 iLJiFnKxHG197zoxmGoDKnVc5W4VVNsA6lfaReHAPdIbape1S9CjoH0E+e7mCNiTLd
	 F4QSDb121I4ozvzgLuGWXsZ4csnnA9AQC9BuEhc5NQOb53yUn0fipcO9YUG0gbjBGc
	 5W9sTOBzZyJPyxi73biky0cU9+GelIcIdbnexgodoVPXtxT/SzRRBkTkNrJzaO/Hkn
	 No2PCAoen6N3X2daAOD5XUzQa+h8AycqGUgKbePtuX7AJHdpzbwE1NFjf0VZ8n5FBE
	 tJuQt25W2zymg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC7F5510A
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177292049357.19684.871060817773613074.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1058611470c997c89059336a462f72b3971f8e02c214583f4c468f36a839ff26
Date: Sat, 07 Mar 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772920493
