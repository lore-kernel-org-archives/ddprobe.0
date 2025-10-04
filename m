Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1C3653207
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759583394; cv=none; b=C1eb86sNhryZtFhNyr4OovrH9oZUG/wcy3EqxpRPzk2jHgEY77smh7yv279PdzeSSoVbJadEIplzAaVIEjKH+wgEHw0Qx6EWANZv/sibVg4sYL/W2jvO5K+H9fxVoachI2S/a/Dbj+os1xZ8ctr4j2Fk6rJ/f6AhR1ysrjCPooY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759583394; c=relaxed/simple;
	bh=ax/+doDc4Q3POM4YAWpGUWI7m0ghzMxJH2ZgOhAFBbM=;
	h=To:Subject:From:Message-Id:Date; b=S5A2yUFh7pt9w5y5jhG+23C3OBGWVtWTH1oYdK9wLoa081ZOWE9kfD+jiJDwyfYGKixjmt/YwwOQf0dElnI9Gu+aRUOpO+brc7RlSsiiHrPMZ0OgonpfOlO/fO+DOfLdlGqqjOb7XdOYVJdH/pZS716UhDb2mgU0p7w8M4IxxB8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kVepvRwC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kVepvRwC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CA13C4CEF1
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759583393;
	bh=ax/+doDc4Q3POM4YAWpGUWI7m0ghzMxJH2ZgOhAFBbM=;
	h=To:Subject:From:Date:From;
	b=kVepvRwC2r5db2u7ozDdWMxKbE82mc5C5DUxJk/l1NMz3YC5SrXSNahpUrqhOkIi6
	 7n2EXixJPXNJ/igIfs9gJ/4zxS6JDroTkoqXdpHptlDkUmO5z5El1qjxl/7qWQrB/W
	 0zhQ2mLZz7lqOJMiODCcAKgbuDD+WUfCvMwrU3HGg8XqRfNM0DIAw8BeGqh5O7BI2L
	 gqtpslyrcwmtxyGdD/c8YgqjgbmLV8FbsY8T2Q5SRiVcGcNt0j2iWDrgISxE5TR/lK
	 j4ukFQPJ4n6axq8/UoiYm0q1KryLEOuEpoVoK/5Fry/9ocQARPBPnyN9kFq68WOyeB
	 7EUNwBgwpwjxQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EA1CCAC5BB
	for <ddprobe@lists.linux.dev>; Sat,  4 Oct 2025 13:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175958339357.30855.5347939178936917320.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 24cbc54ee9b2e4a3d2fa2f86afa4173c52163f29420605f48dcfe98e5eb6bbce
Date: Sat, 04 Oct 2025 13:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759583393
