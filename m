Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 53EDA1ABEDE
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:58:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783857514; cv=none; b=f8CvOD3WbCcBhttCecr9bjyyfmpB9ZuC+Fk2G6GG6uGtXBorzyum1XM0xZqPiew8q2T++9umn27jL1LzCMJmlUT4eUwfR28Way1MxY6hHBpAdVVatgE9u8rPDL705GRNDRcHi48ABH5iylV/ngZVM6hvh3GYWSEjHsG0CGW2UWs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783857514; c=relaxed/simple;
	bh=qMNm81hEqLvL0UPnvivAKnoSJRmLbJ62kUm9rWXguXU=;
	h=To:Subject:From:Message-Id:Date; b=jJHpJaYQLsNsa8/4R87Sak+WG5tAXOT7aK0Blqd2f7V7y5dP+VcCEEZpm8Sk6ubo3a+8hw4kVDvDF44lpzpdpbXzdc92h/uWajV9S8rGVjJ7jrArNTH9ZQaisK6tmqN5C+eo/2P5oKPYoo9v7Hl1qYUbA1zEjua1u3aTNeM8uJ8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bta85APl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bta85APl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8A61C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:58:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783857513;
	bh=qMNm81hEqLvL0UPnvivAKnoSJRmLbJ62kUm9rWXguXU=;
	h=To:Subject:From:Date:From;
	b=Bta85APllwCun/btnvE8Yz2sBoQztHvVU9lzA+el/fan13Li/gIX8+N/EwKF7OBdc
	 KLcP0yD9aHDaOBHBMGwFq5CUffBkQYKGGvpgE1VhORJ7BPw9iM50xepX2NnGBrHvUq
	 P+h5kW7r/DFLaE+v8Obc98gSxOtav37kLuSVBbnJtdh95ku2h0an+JVLL+fcQqZo82
	 Zq8KOHSbgK+snKHhJyla/vY9fLpgTxN1gsXR4mIoioT552iMvaVLe48sZE5dwpfWUz
	 pK0cF/TQT0tPqNbVN/DmMMR3PdzZ5vdpVyP9PHBsW6OJLlMrWkvgtRF1LvW3lhjvpt
	 oWE8zk4fHFLlA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A92DCC43458
	for <ddprobe@lists.linux.dev>; Sun, 12 Jul 2026 11:58:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178385751368.28463.13810704930167254009.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab6b1c43973de356d3f7e2a3529deaf027c5ff82a352753729594ee7d00909e
Date: Sun, 12 Jul 2026 11:58:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783857513
