Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DA802AD35
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789346434; cv=none; b=M1IblbbrWkZcVCTjrMKTncSntSuJBEPJDTv7UT3hbYjHDvDNIPO6SJsCiOu4/riW7zz//cgHXrAHXkZlWVvxiiEIGYNUzKzCAmRO8frHMVD8AO3VCf68NbpCl9qsyZnqn2QOGwljlwtgPfOTTXp+jpZK+ugELAxnNtRJa8HYCs0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789346434; c=relaxed/simple;
	bh=mwi2DNFEqCs19vHMpSAZCu03Y6cMmpmjZGoHlyClGwY=;
	h=To:Subject:From:Message-Id:Date; b=slnxoOqfkTKMgulR2oVrJ4vJKkv48fglFvE+SVz54w/NwfE7lNlGzg0VAXciPJK6G14iX3v16VTqmSuDcy70Ytp6k/nvY/2RUHVWDU9AEwHyWzMeqM0f+ybesOc26k04W0pgWvsz9clwDcKr66pcr3LrhhUXPAYmLc33dfdfzGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Gc0pyBJq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Gc0pyBJq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D226EC2BCF5
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789346433;
	bh=mwi2DNFEqCs19vHMpSAZCu03Y6cMmpmjZGoHlyClGwY=;
	h=To:Subject:From:Date:From;
	b=Gc0pyBJqq77Db5BOoGIhaZo8twojvCj/k/v3eS2wvLhY0T42Z4EYKVm68NZHkuawl
	 BBfpe4Z402qHb0xkgUg64abH/XA/NXWygQAdNA3+AsJtGsEgUhet0Zn4LGC0Tb4GB/
	 gcZs813TkWAuKi+mgGUOXkvLsnjIC2A1IquvvQ8Dy7sUYhW9ou1PxSMfVtZfYH7eP7
	 rT1LGnCQ1B1VPw72WjTZU16NvAwx9SVfQocJEgQa53wPlxZpRPkPhg76sKBXwEHEdu
	 3qmJlX1IghKtt9yHFM2xf8UtUs4P3kjtNWy+pEHhMXvRVPgZo6g3/eAFXNKh6zYr67
	 THN116mNSYK3w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE490C88E64
	for <ddprobe@lists.linux.dev>; Mon, 14 Sep 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178934643369.29578.11109582196230645367.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 03da8af1acf53073a5644ba2167c7f2fa0085b61805396438340c5a0371748c5
Date: Mon, 14 Sep 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789346433
