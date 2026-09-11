Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 9D1EA41440C
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789116034; cv=none; b=cyL9ns69rpfb8/MwbBNBucNQTJO0sr4noL/BW++13/I4E1hflddGJYtMlgd94BZpcaJSv6OfMCqDOaD3IzbPSsU6AgmkRyPV5j+hXykSI0xiNKKKbc31SHvjTKYRP7b2nfUC5YsFEShmpGb+1xLBOqw8CfmReNrouNKYzjL8bXk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789116034; c=relaxed/simple;
	bh=t/6asClGM8aauWFDVa9eA866UUDfB+S+KjdPSuVA4vY=;
	h=To:Subject:From:Message-Id:Date; b=Le/KczDWNkHItTtUWpufdXW/ekUGUWdKT6eocvuTStoH7e0UHbxxjO72J15KcvPZlsV6SsIZzuz1ouXAXy5xYxymJGfKOZUwYnxXYQFKnShLKfZfp87mb4xMw6QhPo0CiYtYhtrZ+Ak/RvF1LDF36IJh2DQg8KOufL1Q7vx9MNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ca+8LyYm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ca+8LyYm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CD203C2BCB8
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789116033;
	bh=t/6asClGM8aauWFDVa9eA866UUDfB+S+KjdPSuVA4vY=;
	h=To:Subject:From:Date:From;
	b=Ca+8LyYmlwl8+Bhp5H2k7NcsjxFL2D5CUNoutlesqceEKhVb5pAWJYeO2o4h+wuE2
	 pUBYta0KgI0RKgs+su6vcMPeTqEG/8xILuSb+YvpUU2xE4C8xdw2F9fWWzfuFS3HR2
	 deY1VbnKuHYO8yYdxo3KoVec/DyLre5PhNOa1xSucR1NK55dkZQvW5mwsZ/D/QUriK
	 46PdI0K56imStdtZkvwVS/BSkvYKGuO7LPr4Qbr0XB3w+ByMA1UD1DhYsbV1ucCHXs
	 z8/IRO1/f5tmz6BAOALEmvGtncXNgGwn/3/YXG3SrmN9ZtXp5XdQA5Qer+sfkYV8iG
	 Z6pubDI0azHmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB147C88E50
	for <ddprobe@lists.linux.dev>; Fri, 11 Sep 2026 08:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178911603369.30715.11383297605622104845.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b01d356fa78171150cc657b3ed86a3e7207f410793d292214f84441b1447854e
Date: Fri, 11 Sep 2026 08:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789116033
