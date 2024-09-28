Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 314F819DFB5
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727517954; cv=none; b=CYXfGz0Nu5YJdVz942crw5xtDrztreQdYIQlvYsKqI9SCMvacpgeq3In7Zpue9QvkN7RFGjb1FjobBXrhuq5zvmIu3+AGKePfxGr2Tx0vDfR/px2za/1PX59J+Z3XTfYkJsqR5ItyP8rVfEUkGsqMN5sIUA4kAAp+r2wWkSSyVQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727517954; c=relaxed/simple;
	bh=aSGMXKzyRWdCgmjaSiPtWezFAnhY7/5opLxLql1mVx4=;
	h=To:Subject:From:Message-Id:Date; b=p5AyEgqGMNN3gM/h3L0AniqtpUn8qfQ4NU1ZQ2HsIbIPmE3HklhzNwhFrP7BE7JwdDBiI57cIl7Zj7qefUmDIYruiwV/2aP0Tguw4uJIBcJrPCWA21JwpfsnEx5bxlrOVkN6NxN0Byv9om/NPJthf123LLUsxG+r08MuvhMfzSU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=g73epHD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="g73epHD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2B0EC4CEC3
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727517953;
	bh=aSGMXKzyRWdCgmjaSiPtWezFAnhY7/5opLxLql1mVx4=;
	h=To:Subject:From:Date:From;
	b=g73epHD5NslFCVyRCL8AvtMksKW0tpVGn4ohRCr3FKEwI/34MjEGUNzKw8tNRZV4C
	 3c0d6NY9uKQTF3CNI+dcCAZaP+GpwD2Ti4HA4FuWxW5WAwa/nXHobUMU3A+UZZ+Jf+
	 vHKH5L502jH1u/CajPCxiAbYH9sPe5FvjaCScvnquDi8WLDjlT8I/nNy/HH4mx5udI
	 W1GLbJ5bagVdCPM/osJKV94mLZCO/C2n4HFdjjoUM7XJ3cMNeloYV+S1DPhvh/4qQD
	 OupNzCXHuzv5MTUkggahLyFHUqRkVDwE/CmiLk6wm+QOcy/ma9lihL7byYGYkt1hz1
	 PgG39aGMVMyeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92B75CF6495
	for <ddprobe@lists.linux.dev>; Sat, 28 Sep 2024 10:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172751795359.9914.5470487623969781972.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88f06a252c8ea12ebcc1b407f5331be672fa4ca2b37b6c930bcccfd40e999c16
Date: Sat, 28 Sep 2024 10:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727517953
