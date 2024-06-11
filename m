Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2231B17CA14
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:28:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718112503; cv=none; b=hPTEQ88xfl1q9DO5rWGHA4ihN1/mTvR2xXZlCqzjv0PxSjDJfH2GfgZ2UoaSedno2m1/380eCcjGv/lCmTvG63LOjK1MsogPEwCpuD0I0gkHBw3CMuCTSORp36iobv4OIsRkqDvw5/ljBn/VhoR0nLzBKR+DPGfNLBaYya0TdKE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718112503; c=relaxed/simple;
	bh=Rz8evOKv09ptIRh9ORhooB8jIiR9tkR8FsZXv+5rBsA=;
	h=To:Subject:From:Message-Id:Date; b=YYzvh3DJjt0xBVAZoNvZIgLp/BVITCnXDPhTsDAov5ubvXsI76D1wAkFq3PVNmInEuXxFMmkmCkXjuYXuqx/ivf8ogBfIKPqvdYd8GYnoDjeNHjeRvwhSf6hlyM+zpuWqIgLiZ//bEdZvpk74QfB2Cd1lo0vcWAycsgn6mdudqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eIpcmO6f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eIpcmO6f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7285C2BD10
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:28:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718112502;
	bh=Rz8evOKv09ptIRh9ORhooB8jIiR9tkR8FsZXv+5rBsA=;
	h=To:Subject:From:Date:From;
	b=eIpcmO6fmW1quh6xKlWKlnjk0YSf92OmdOdUzZc7Rz6IXDvlYdy1Xq9qSFBgu8Fiv
	 nGNwrHk7SqJMxMX4LtxB4pIi7aKNmXIZrJszHHltOPuXOKrYdF4nZ00zjiROD46W/x
	 AGG8FJD7U71pzINma6845OmKlW+f7ro8AO7975RFpqxUum/zp6dX+fkUEeqaIwrxN5
	 Ximf43TKedfzI0E7WfT4olWFd94VDZvcZuH2PPinWEnTbePe4slA27tLgJRzgsbYvm
	 /TWrtywnEYxU/ipzGRLwAPkOBZrNtswMh5yyAhSNnre0dJmCBXtKFBXyklGln1cBi5
	 wUauolp2jtpUg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5CC6C25B76
	for <ddprobe@lists.linux.dev>; Tue, 11 Jun 2024 13:28:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171811250278.10498.9515300867750454893.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ac5f8645ce60711787bfee10fb8409d02850a92f423596d70f254b809223228a
Date: Tue, 11 Jun 2024 13:28:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718112502
