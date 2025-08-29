Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3617A256C88
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:19:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756509595; cv=none; b=cH40S6mIjtD8FntCsjkcbaabsU9z7pz2oG2Xs41dbCUJxQ1o2fyzSiEOtsqdqTxz7Zr8hTygDhZoopanh5zLhtXoFBBMRzwbH0a0BhvXuzROjIXtwrmzx4FfvlxC8tXzrFqrkzPkI0phVNW0UVYEW4C68IMqBRr4AciqK5+MLNM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756509595; c=relaxed/simple;
	bh=ORCyMIhEX+110KeYlXuIpesjQnNlwxl4dOK4a5XNpqk=;
	h=To:Subject:From:Message-Id:Date; b=O7HSsYsSCSaa57lCpNL6cOBoEjmZXpSSdaHOIZIiZHm+q4BdVEYDwjunkbyUgpr3LJxOaQfCusDHqAsv8cggcDnU3xINhCMqwb/fTOdSE9NVslmDZnJUK0cVmmnjnpSgF2yRvAG/rBulpSM8rqJkahFw6KAXlnv7o6luX4AhU+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tKoR5jbi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tKoR5jbi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EBDC4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756509594;
	bh=ORCyMIhEX+110KeYlXuIpesjQnNlwxl4dOK4a5XNpqk=;
	h=To:Subject:From:Date:From;
	b=tKoR5jbi3E1gjgUy9fex3BCoVhBCqrOgzfs76D/cN2dyk2JQ80lQibPvSCwnElGUt
	 mf2jH8TUFfbjTM0ilNGq+yb+W/DcGOgTlpg3nVnhiBkJlaXjDwjxyCbD6uSA4E1PWp
	 JNZNxiDEfuIriEqa8rrqP0rWjPeKFd94Ytr67JxhqjU9CTOk7DLZOQ5sX6sSIblN7H
	 y+G09UK9bfcwdS9NwJuEiV2zlHQlZedH8sFXav1QsQIVctB0zqicu5Eo+33sx+u1+1
	 IKp7Jy9HMgxqjaMmMdvdxkjfYwpDwn16vjtme3q5g7yBBQir8zDD350E7IjA6XUHU0
	 c2+oz1NbhLQDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 917B7CA0FF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650959357.2488.8655128323312131933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6c3bdad22f6dcb11573a1b7f8dca4e70948730e10ebc14f30df0492ea625f29
Date: Fri, 29 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756509593
