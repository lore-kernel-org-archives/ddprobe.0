Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D8D1BE4A
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747004394; cv=none; b=HbtxfWBnL56eYw02Kd5HNl3/gu1fHoAgnZBwsZ6tVXHf11XGT6cf3n68gkENr6U0uM8jQz6XNiqfgJoRTcld+fpZQxArDugJ59G3UqANspN5G66QXUNjL7fYb8fuag4fihQulvaQcEyE1mImcpDQZjH75DOqqvnhMH6yGeAieTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747004394; c=relaxed/simple;
	bh=B5aKxVhPiUgOQz9BxwFZBsvimANIF8xFNlJwfO2o41c=;
	h=To:Subject:From:Message-Id:Date; b=D7xeWxrk5OcR2j12WCwGn5wi5yO+edbtSVqHGO0w9FR9TavcpEf8R6Klq722jlOg7J3mzUYqs5dH0GAs3/1Xc2DfLsjj0z28baFtlfPA1aY52Mfs2TXUdZVT590SltgR+/6LpGcGjTGmGoZM4YotVizLsJofIq7FbvvZYh4TbrM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=d75GBAtQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="d75GBAtQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A591FC4CEE4
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747004393;
	bh=B5aKxVhPiUgOQz9BxwFZBsvimANIF8xFNlJwfO2o41c=;
	h=To:Subject:From:Date:From;
	b=d75GBAtQkjZAWW8t/JCIcbdktULcuZFiLvDvT2lqzjex6NsTshB93Ep5FP2DTmQ6z
	 lrtmXNw2UK2RFHtVL7NVOc4lyb6eAv+v0SRLjVR7I+RoYnm40EUhFxGixYLq5N9Sla
	 U0j6hdWWXL6s/pTjTL38ielbfAqGsMtVll2qlYWHn+DAiItHF/gPh+lSP2d5y/nBkF
	 /hijOGRZRa8RtvREc/sLKg2tjISP4pxMyjaG9RoubmaXdb4uq0M1S2JGpMDTPpTRn2
	 4RMZLgMk+ttbsq102JDgdZhWulOuolc2JnOVuBpPnXZKon9HWaZaT7fFNFjwGxzngw
	 y2/pxFwlRkhpw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94329C3ABCB
	for <ddprobe@lists.linux.dev>; Sun, 11 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174700439357.22639.5930175202843014771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6484b5cc6b56c7033295c48863d5eaa02e2918de244f920e0e4ac94441d092d
Date: Sun, 11 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747004393
