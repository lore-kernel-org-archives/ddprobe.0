Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 045DF347C7
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:40:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778546434; cv=none; b=AJY/5wa0jojIBlfuy75sqlhWwdKtFX06PEZZgnGuDKqP9C1U/xDCxFy1XQYmTXMOH1DIG7YGpc7VOii3TmfNu0XpUAAHn0NnLI19XfEZExtYZbVZMnzs3Zp7OeIcElZdVk29Qe7BXJBnIVfL4UrhAtKkp7VPXR9PrP+s2hBDdxw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778546434; c=relaxed/simple;
	bh=eEHe8O+bzzT9DAUI/zdLOU3oy1Sg43e/rBLk2kFkBl8=;
	h=To:Subject:From:Message-Id:Date; b=C5RBijRic5Fa1Jkjf2TqluB7GguxQYEB8IV/GizSr50eOYfpvL2HROyBjyPE6yzMjzdu+Pr4VwKsl9v+k8ZrAtxN5zI/pBpVfCiKIs74iKIWWBzxnKz120Vdfh8o/TDu/GXTvdZcdXPFF0dTlL8vD5Lq8mX0FgqjqA/Ez4qIAVY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QqRRLSGB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QqRRLSGB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2BA2C2BCB0
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778546433;
	bh=eEHe8O+bzzT9DAUI/zdLOU3oy1Sg43e/rBLk2kFkBl8=;
	h=To:Subject:From:Date:From;
	b=QqRRLSGBcOxhD2yvW2YGVDKFwnoboLV28jTXAfe17qW6iYpmEEAM2KARygJpUTMy4
	 ZzYp4R2nvLQ8vJ0LwRkncPUxA9z67aIfFChyA6xlRjo5GmRi/oqCihWT/TlXFJtIKg
	 B2VCtqy9NVNn08HFdCmHSgvj/iezJ+DidvHjsC9Ao5Z1Pk/5fP7vDgFh726pvat9ng
	 hhEifwXfLx0KmBPHoiVYwILz0K0TJ/VquoGO+4igqVc7HRTbviCw7VccdF4V14Y+UB
	 4E74XDvkH90xt9Zc20POl6JWivR86Tu+QePVQ8gDnUHln5RyGXrwBZdmNgEJk3533e
	 A7yW7UuDSeQWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE0BDCD484E
	for <ddprobe@lists.linux.dev>; Tue, 12 May 2026 00:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177854643369.27429.7616039493685857242.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b375f703038a0cbe59b01d318033ebde7aae6f93823fcb82c8ccdc29ab0ee39
Date: Tue, 12 May 2026 00:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778546433
