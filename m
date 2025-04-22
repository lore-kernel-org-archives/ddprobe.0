Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4FB7D293B71
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745339994; cv=none; b=DpW8Ah4VejXb3J5Ggc4YfhkOhBY0RE+IiOQadFtfRYJ9uyuJQF28Py4qAnCwxGONWl5xpknghYYgXCSHGr+RyXCpLTXRJvTOdaFD6adMobSmwhV/LGCBoJrlpgBfMXNJoxj/4T19zSyCRrwg9VkDDSzpA7IAz0jIs3/nlyNhNAM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745339994; c=relaxed/simple;
	bh=03+QFGiYpevDMNwBRY8yUX6dc2L1jQxCaUfztUICyh4=;
	h=To:Subject:From:Message-Id:Date; b=aeyxI0oa6lBDm1XMXZhXGZ90LOuyiMvz4FdcfyndoGwi90V5lLwF274t4Sek6OGuuY/7JJT3vUjLIoyCf4ASWI2xJMTnFoBvbPSMB8O4JXv8G4ZU+UYUzwlIiVJ8zwIWjxzQ9P2nipliGARP0GNuYshnh1OEO8TB8TC+tgUUrlw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hzyw/6YA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hzyw/6YA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C192BC4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745339993;
	bh=03+QFGiYpevDMNwBRY8yUX6dc2L1jQxCaUfztUICyh4=;
	h=To:Subject:From:Date:From;
	b=hzyw/6YAIMCVr1dmsXAsCqRXZdJq8uI3BTr+phS76pOqzj0gDQwGmdgNTWwlzy9wA
	 uQQ3uoluJlipyv6/0Gkg5Kl8uIzlrKB7yCZU8rxx4kFfSTqMmFfNcHcMLxd3P3NKZP
	 He9y+gIuusb0VHHPYkxtgwaHmaswQsRSO9rN6BN6OPUiOINw6osB4nuhAmdw5bXvk1
	 MONaaCeJs83m+I+gF1DT+ewGhTRyf87mYGkYbI4a0Li5VRrPNl6iB6TY09po7BhxEn
	 WYfxjN5CN7+y98VIXUQ90nrurL91QNz0VStyKOPkOEL7+PTNdmwZSaBRml9/Q/Jd4r
	 EEfQI9GdGmVWg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC78C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 16:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174533999364.4894.16474659224814233565.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b0f87b18e754ccb12877a4112bbc50e44a3001d9ae83c9c8f635e49e534f7a9
Date: Tue, 22 Apr 2025 16:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745339993
