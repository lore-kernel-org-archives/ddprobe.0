Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AB962DEA9D
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:15:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775420134; cv=none; b=LKmZVJvmTEPuYRs8BcDvYkm2J2Tx4t2g7e0xvjEXoOVKO/SebdSnzHvcspLZyvRcwaBBWNVRRBnhXgYieRo5e8nTj14hSzn29Js2qruvoNC/tkP+GELL7QW3x/CmXPwt59MBEI8Kd8nq0XpIQMOIrBJ5jzPHzCzygmYeOdMCAg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775420134; c=relaxed/simple;
	bh=Wcb1mIamtD9f5jv56TEgnOTYXvN1awQ22MDHe0HbhC4=;
	h=To:Subject:From:Message-Id:Date; b=G7vHWYldDLP2uBeW4bV0bmQQ0Tu6jinHAXjVt5laG2F+qefhGr1bxDhZUUALJVdy36ezB0OgDXXdUvLKR/J3aUxug0+BD6pIlTOb/anvf/OA/qztWtEvduhtNG0veOIYrayjixnizG5gE7tRPnSwCMnvlfvEZpkV80VTOtSabW4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KkdpPK2s; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KkdpPK2s"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C11ACC116C6
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:15:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775420133;
	bh=Wcb1mIamtD9f5jv56TEgnOTYXvN1awQ22MDHe0HbhC4=;
	h=To:Subject:From:Date:From;
	b=KkdpPK2sL9kCi5QuKkrvBY9mN+ASP2l8aQ92i7fEhk2tP8KQp+6NqE0N5psPsTIab
	 bpH1x6j62+Sdn2wZETXl93SM/Y/z848OkYAZqnOYDze99xa96TIXhNRQuE9zgDa35O
	 4YtFzpRui7V9MHgCN1Rl9oYBdRN95HPXmZVQs2yI7hokM/K+ZbC9yTkPN2O+bqZqf8
	 bQSZtNB0S97jD0SmsXGkBNzuDSGHa7kP8onx4ni5qoSDrxdB8JzxEorRY1VR0H+Zrg
	 czObMXNX7VB0HZWVoyuVqPwI0XH8pld5HPissjMG00Oqx4wy2AocnQmeXntRMV/Ff7
	 AUJIOe5e5Gxwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE027E9D800
	for <ddprobe@lists.linux.dev>; Sun,  5 Apr 2026 20:15:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177542013368.18484.6221160713155466256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e1ce62b9edc0e6860d8eb93235004024e8d292d7844bba6474b7f193c3624e83
Date: Sun, 05 Apr 2026 20:15:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775420133
