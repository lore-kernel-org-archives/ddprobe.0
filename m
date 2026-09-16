Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9802D478E28
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:10:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789549836; cv=none; b=IH6XNcLzNdVf+ZXM8lbrMV2Gps4VSZMjRoz8zU8FyQf7JNdUyAxmLbmJ5ALcRXpFyrqmOgLGR0NNoEYNANJt82SteNt8Rj8N2/TCmKkhjLWWOP9GjBQ0orRsGbatozS9r5KdXaQn92agDS9sgxzMUiFxzPSDa4UfmU2ZjExYBMU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789549836; c=relaxed/simple;
	bh=HYzuG2igouOZnAKKVTEeuBYnzEMx2xK2dQJzDrBL8qw=;
	h=To:Subject:From:Message-Id:Date; b=dKhSr6dY79rDHETGfPq49dTTdJDoMz3Pd9dmbGoMpQhmHWSUcYgCQw/gmXPkI/1e7vtIjTVq6haYs4YBjXNIotULHGXLSwKYr7VZv6Lct4mTGV17otWFWl+uM+tC4mtyr7oL5b0tQEDrIrM8dlFr92qL88bVCl3Bec/NsfpFMxM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pESCAa+E; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pESCAa+E"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CE978C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789549833;
	bh=HYzuG2igouOZnAKKVTEeuBYnzEMx2xK2dQJzDrBL8qw=;
	h=To:Subject:From:Date:From;
	b=pESCAa+Ee3bAUaQq3qb8zOvEyS59XDgfUTn78lA7oiBOX8BPIfErjNTlxljyK7QqH
	 QghMzZEj44XE+LYZX1WLDgiTRd/dRVDDWhM4hTu//K47RcwrQq9EEfq9/loJTJHqUZ
	 n4aq3EKDE8EUpsfXdE4/3eDxGxa2USndbD2gCONz1IGyfjOQ5IQjCIOdZe8X/z89Ol
	 Q8CSg+rfEet+SblGGF+oHdobtBMVKUQ+3rA+bVKC1zxvrdOQ6y3wwhfThZq58BRa+V
	 pFbujpiMOY094H5pBby7geBtbSYD3z1MJrodM4F+7n0Ro+Vt4UTDEY3Ha5BNQ1JeZm
	 83wqQ7xlSr8tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC81FC88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 09:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178954983369.16793.262935098069112555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ba5ed9b0a016dba16ab0547057bdce5bd12c6f0be8f0675b708c4218d34fc81
Date: Wed, 16 Sep 2026 09:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789549833
