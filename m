Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25F25157A72
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760972394; cv=none; b=NPdPpghS7nDjGILyLfbmv7QcDsGdboX5Qy6xmR6KZDHuN1pWUw9TJVBbgqB9Zxvq+dc0fUcJgbH/rEvv5Kts84KT2eeMU7/ptmOf0jv8Q44WiaWYrLRePZzgUYBbXzhRj4EeB1pp20UuUWniG20/NhrjS5ZQTlzQ1mLxQToIQAQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760972394; c=relaxed/simple;
	bh=WyZKAUS0dN06twH/b5Y/PhqBzqj+XMINYAEMhsnYMyo=;
	h=To:Subject:From:Message-Id:Date; b=AFVVtWCqS/IYwXS3pRcQ18d2MsaXBWtvk3s95XA5Xc8Ls6jOTBOAqBrMa+1PVIzD+liisOpzFPm78Ihi32tj6Iq8QoufjEMdYsZmT8iF9ozw5kFa9hZeme1syjDwuovKc1WnzRlms2rHxfst72SVYfElcUqBUhYcBPa6rhmNptQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MQLkDkHq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MQLkDkHq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B006DC113D0
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760972393;
	bh=WyZKAUS0dN06twH/b5Y/PhqBzqj+XMINYAEMhsnYMyo=;
	h=To:Subject:From:Date:From;
	b=MQLkDkHqG5Qd5iD8FOiExbmdy0nSp/S2WGs7DJuWqDf6Zc7lJFaWvpnsVXWkWlSkx
	 iU15yr8KH7DD4GaHCgh+JWzkAWKIYLoyGga/e/Q6tGH7guPN7JHKFxBb6AtSiUpBIJ
	 zHEC44ts3VBOufb0jbFE9zPbwF8PCv8IODmK1tvg6keFUp0tbCwaY7CUXzpxTqARrR
	 Nh4Ffv2FxowDTPm7p3TJRS9uRcGLStj21gDhyV+HTr50suGtOLOMlnvsxet8oF9/E8
	 RkpeumcoDnI39oQyaW4B2L6y86ZZoSSjau3L5u1DEinbo29j/SihZskua1/uvtJFwz
	 EyioDtqjfaoAQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9CE0ECCD193
	for <ddprobe@lists.linux.dev>; Mon, 20 Oct 2025 14:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176097239363.9710.4638593606346449667.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f315e2b12d2fce6f3b9a66c1f3e4eff48aaa857bfa36258a097b7b1508be4cb0
Date: Mon, 20 Oct 2025 14:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760972393
