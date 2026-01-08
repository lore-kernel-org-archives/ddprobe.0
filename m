Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 021DE4797E1
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:23:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767882234; cv=none; b=flqAIKq6HrRsnZkedms34hpUSrYVxCTRv7YBlTQYma/jzwR4u2/9igj7b/3g0qg2o8t1s2PjYv0WFofik46YFk/GJS7aaPrKs9hqP9jAVcrjIrISNYJr+yeesdali64xMXih+5lJl3H9C5dlxbaY1w452ykwk61fCCVvy55QFbk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767882234; c=relaxed/simple;
	bh=yMKBOYaAgLuzYesrV6IAhjjk6UsEFSfDp74uK2zLL1c=;
	h=To:Subject:From:Message-Id:Date; b=nSrQdzWLzcWUHwdKacu1/MTK3+tigMSdeKX57d4MV+ygFVZhPpHGkpuE1y8CX1gFznavB9sVyLKCd31nejTG8NWQU4dKJBqS6nmb69566GeVoYY3s8/UzKTEy0llGQm87fQo/rDUlKnV5wwfmRc0q/tns4Wzctu43RpyW+0CK5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h3P+IkGC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h3P+IkGC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9CED9C116C6
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:23:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767882233;
	bh=yMKBOYaAgLuzYesrV6IAhjjk6UsEFSfDp74uK2zLL1c=;
	h=To:Subject:From:Date:From;
	b=h3P+IkGC08aYSoTiuGpLiRovIaUlQ4lO5Zly6Kf9KBvxC+SY1746SlbbEsrN9Iioi
	 KoQlmQ7Y5q/DndwG41TId0VLsO+BZjuormy9a1UWNf+/YvNU77iw83Jauuw3768Uj3
	 uE47y7VIHWwQ1EFDluqW7MmVQrUdD4ujDvWQXAyH75OLmx8QUTPC7kqGjARcePikgn
	 h/4WHMeYNvxiL7hf81Nxm+Mv3MFsObLg5YIulo9iF3MfWUGA10yp9Zlj637zjlg2rm
	 UfuSCmsiJzAJv0AKcugcfJMaNn6MGByAah+HnTYrpz7NT0DhqSH+shcdioKfNgxRbZ
	 3jIdU6Y0/8KlQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA73D0D17F
	for <ddprobe@lists.linux.dev>; Thu,  8 Jan 2026 14:23:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176788223358.1703.13030844688325994291.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d152216d460fcb178a7b3633f5b65b981d590829d73c401576a60abe285e25eb
Date: Thu, 08 Jan 2026 14:23:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767882233
