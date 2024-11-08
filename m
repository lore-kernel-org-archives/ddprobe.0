Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2A0511E1C18
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 14:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731074754; cv=none; b=n4QjyJl65TBzlFFcTWm5GGFeLBdS8apLnsYGCaS3P3uuL0jpOlNS3byONtW5myRFFrqtryD1BKfzMSY4EPP00t/257KYXdaZ8Uex55pUsWf7DFNq4E+T66yzxwcEK8QZ6UnMwnuTlpqj6ep3Jd4YjxcHILoJIkM/QB5raiLgno8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731074754; c=relaxed/simple;
	bh=koEVCgRRJyAPOjO5WTXeA8ZdO+uf2tYZ6+rRpyZRqCg=;
	h=To:Subject:From:Message-Id:Date; b=uWqe6plXEI5U4gFvneK82wocBsu4RIZJOTG7ioMNaBGlYFj9GiV778ymuWmJeUZyPC49DwjztJPW4xWP6i6r8/0J0bD67wq+3KypzITlxTKPLpsmxU2oizv2fpP/lqGLnTM2ECNH/4RGOuOhhedyOjvUXBk2wukoOC5rPZwaXJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cdCPG5Bd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cdCPG5Bd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D492C4CECD
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 14:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731074753;
	bh=koEVCgRRJyAPOjO5WTXeA8ZdO+uf2tYZ6+rRpyZRqCg=;
	h=To:Subject:From:Date:From;
	b=cdCPG5Bd60mSCtwwp6fQfR7DtEd++6FAGA8nKv/GWhAAvr7btK68oGl6HO3rNZsi6
	 cBlktNUr8EcZIAkwt1yPLnk3Ycod1d9m7+aH97NRFoQSVgYoGQFC+6GYOFpm0S+A9G
	 X770D2JasEXk/cW3Ku+5ktMp/ULYvcXUXag/JGAziPguFSRKOzAC5ezw05SFU0dR/Q
	 ifFHPMkxjMh61h/M58hC1HTctvVvMDa1F4BXZ5saqA7o807flZ7xGHJQbV6u/1eT4f
	 PwDbYWXGapgOVyjoUDNrnK1AmQdTfoqtR+KUv/828c96YEpgqlboX0DI6d+3tO2T3a
	 e9vNdd0PucR7A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90568D5C0CF
	for <ddprobe@lists.linux.dev>; Fri,  8 Nov 2024 14:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173107475358.3617.8660618883034617202.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 032abd8d8c538e3c078fd07ee2ec65c3648eaa10fe50486a158e08a34c6c130f
Date: Fri, 08 Nov 2024 14:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731074753
