Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BB041A9FBF
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755923394; cv=none; b=pLwHbaIgqu1Auzv65ORUWc9zSUXQ7oLXmtBDMhffslpryGGt0lLyA5RempWmRmEI+CBmW4vvqEAjeTPmKVOEjbQ4Tk43prq8P68cnJLNw37CUe4HWdvE1IVkHz3VD7TdCVGhtSaV0T99WgnT8ty+lzu5xTW6sq6hG5iB/8AO/sI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755923394; c=relaxed/simple;
	bh=vA5+/U8dbMcgbJ2HOfToOTtOhtnRPYcj/Hr3/ZgdmaU=;
	h=To:Subject:From:Message-Id:Date; b=HBbW45vGCEbBJ/b/Csy7nsL9iVvp+fQEI+7Jo0rADjNtWtGwZW4m/xcdQzzz36MrY2DJJ2Ume5qvIqjESClSL32tkD2lY8ItQRadhwsDnXCi9aOYPbcSuitkypr25gjCo5oDC89Q8sOSnQHxcRTodRzjw48ndGP+KnmPue5K160=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QV+r6wNy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QV+r6wNy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A51C4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755923393;
	bh=vA5+/U8dbMcgbJ2HOfToOTtOhtnRPYcj/Hr3/ZgdmaU=;
	h=To:Subject:From:Date:From;
	b=QV+r6wNyYcT4/II+jp0XRcEJBQqGADd8q6nQ/lStMMU/4Dx9AUlKdn66IuCPx1oyx
	 XtxnUF3xwGDApBUbRIJnDOep7oLJlsIi3Gw/q3Bck+l/ex+MpQHsNsIuKN6BOTf9pN
	 fAx3FbslbkKe4XwCK71i7/gW+9FICdNqj3QRXvpseRc3NOlA9EnGgmvTG5AqkjFDUv
	 BjXGhAb99mzKwrF/qYs3KELRzCOsHrpG3if8wgS1OrtRPmpbd4vb5Yn8+xf89IEucW
	 us3pOVan159VhuAQN4RjLdBZq09ZDcLhGR43VXlTuhOI2TyjSAUg+1kPJyq+6GNyGm
	 IdEYydCigt5gA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 918C1CA0EFA
	for <ddprobe@lists.linux.dev>; Sat, 23 Aug 2025 04:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175592339358.5747.1614712492075938113.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0064024f8955f2d663c4e3a449bbb1e7308eedf97126bd1cbd611245fdbbce23
Date: Sat, 23 Aug 2025 04:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755923393
