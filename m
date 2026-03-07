Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10FE82E888A
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772912094; cv=none; b=ri7A/jykZIYMCcuH+/eLaDPC/GEuKvSMu/TMNaVxk60lZUEgUYfQAlX5hTf06Pc2nbk08kHHZT4+O5zBHbk1jq44fah68NHrlQkzEtDT3kzdZWK4R0yF+XzQpgAb3o9IGksVSh99wzMxua2/sAJz+oIbV+CJPj7rGRLa6jFnSgg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772912094; c=relaxed/simple;
	bh=gK3cCak+bgtPx1Wo48qMFResT88x41Q9DjD59tNNVQw=;
	h=To:Subject:From:Message-Id:Date; b=AmNsTwrrt4J1jheUUcmaF0r6nlwF5WJscGBgd731UmUgjqsE9FAcu1ch1MgMCoQ6XxpmzjX4TuJD3vzksA7FgCXFd6oQvitsN7EVh8oZ9r6TK31cdLdbpXIx02oSPvSWoI4mSNTgLYHbsG73a1AIzsIzp3QHh8t7l50pqTpGJFM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pLQRoYu1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pLQRoYu1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7EB9C19423
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772912093;
	bh=gK3cCak+bgtPx1Wo48qMFResT88x41Q9DjD59tNNVQw=;
	h=To:Subject:From:Date:From;
	b=pLQRoYu1z8UATny6M83a8Y5zdbmY26LTLjJggwigeXBLgD0gWUqe7aD5x1R+aEK3v
	 lcZfsPlRfeRoN2TWYYkpHXjq8qtmNVcSFjaMNwjgWkqmz4934FWyZOVJC8eGJNRpBF
	 TAJ4Z3cNPCLo4vqWhy00X5JzTadHrUW9ohJy5VngWMC4LwiDTQIWHgzSeEtBER4jBv
	 hL3BX1BT8Dps0fTMnIoIzlDcZvfPXfB1xrCL/eLX8QGEvZT45Sr3jePSGRJeVLDgFq
	 bbmAXgG0hDdIn3prQL7mU/kPIxuj2CtUK5WiDfhM4jMkoHhS59U/iZD1bKCKTEZJEF
	 uwBWe/LZGp6rQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 956BDF55105
	for <ddprobe@lists.linux.dev>; Sat,  7 Mar 2026 19:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177291209358.1436.1923356897786804743.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19db89528bc182ebf9b631001952d868f41196bb1bfd086355c1b28d391e5fa9
Date: Sat, 07 Mar 2026 19:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772912093
