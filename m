Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 573EB286425
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790430034; cv=none; b=VLg4rC1ZDFEkiSgTcOw5X51l6rTkXe+vgmwXFsZ6Ah4U00n8X8kSX9mm1SW9lxQa6hw7yDbsa3rvnIdw1kouRx3DhuUU/vxt2kS5iPIQeg2MFKbMB0AXGegiYhTVTtURPAFt3ZfOunxXfWQ9E6Sy0GcLC5bSKvDhd+9jyHSaNAY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790430034; c=relaxed/simple;
	bh=7DWnjdhAFdEzizWUnS9rTlpZ02QQ51Hp2DiaWVNdXA0=;
	h=To:Subject:From:Message-Id:Date; b=Tc3e3VhDue9wA3ZvU3f6E7IsgOxsPvMB0tKaKAs3dTSxqyHH0wm7GhDr9Nerh6rO0U3tioXZJmyM5QfH71Mw23jw5IXGNipKDB5fgRz+IJ1JKJ0ERjc758uncTOxXqbOajWxMEoLfzH3JLb8l1BHgJDzk2xrZGVU1Y69FnL216Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=hJ3BEDO5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="hJ3BEDO5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC90DC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790430033;
	bh=7DWnjdhAFdEzizWUnS9rTlpZ02QQ51Hp2DiaWVNdXA0=;
	h=To:Subject:From:Date:From;
	b=hJ3BEDO5dBZxkQu3RQ2ErN/p6yQNTCKmH3ZAKrCvcQIO2cUO3QGCYIlgrhcF5yAo/
	 gLinuZGDHbyx1xrSLpJ9Okz6ekoOtGKFb89+vwT/QqgZ7/vqR8SjS7xiP8ighIaeE3
	 gTAUwHLw1nOSsVs21jU4u5zQFEY9zIXnsyWYcYqfKNVWMWvTkUdOEmoISEDB0pJTuq
	 Y4ECgcc1W/E8THCcZdK57vPqw+z52aTHjL8zK8owyo6Zf8AZ61enl/1tV3KHCFpHxj
	 50u5lSXuMzxUDapeO1wBYJtcyHkN+sij5vYxYs+aYxPE3sThmzxz7JWCoLGV7F8TLO
	 WbjED9zRxBkOQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA05AC98338
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 13:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179043003368.29175.14745155770783623304.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bed84e876fd8645280250e0018dbc3e3ffd0d2dfd10f640fd9bfec970544039
Date: Sat, 26 Sep 2026 13:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790430033
