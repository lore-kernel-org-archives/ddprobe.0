Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 84E9036F438
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:50:36 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788465036; cv=none; b=a057adh/MPiUw86ARfoAf1F5Hn0iNaOpgAdZr+kxgYC4FUXGWoWKq8jHbdgx/fHe5cRVllzCdCNcHJVmwI5G5xHrj/Dyo0gdZp5t08birQB9w5ibRp9N5nM36I/wEhCkHpkfgxhv938990cd0Ubc/6c1fZuqAo3HUa4HzJidVZo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788465036; c=relaxed/simple;
	bh=N9GfovLzqCBDdyK9JkzOjjWVWZOvt5B2gS67CiuO3Zo=;
	h=To:Subject:From:Message-Id:Date; b=c72pSweV5p01k82hAEx5TI9sncI0TsnQwr0+4sPMAFEWtZjC0f32oDqDqsawzCqnR+zRDFWqYs9PpWujjUBlZX9szAnRJFiiNfFZvS4QrrPh7bn0Lr0nRNXpyV+U61aLAsQ5z/f8ECO+9zQJVcWILHCuKvTqP1SGbPpX6oLUjuE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HlL6wMSk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HlL6wMSk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA11CC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788465033;
	bh=N9GfovLzqCBDdyK9JkzOjjWVWZOvt5B2gS67CiuO3Zo=;
	h=To:Subject:From:Date:From;
	b=HlL6wMSknge1elBxacWXD9CmrIN0c3vOVsXI3IvbCeDfNl+8Y60a8UDgyxfMNa/vt
	 qBS6TG7f3YUajPmBPa0q4Upj++5YSVEtV3F93ERsnK20esU/3esnqOVqfa1sFOZmCz
	 E82A4AcvmBnS+xK9CgIacAZBNh7bQe6+Qg46J/dp5wBpjm1hHZmzYJetBkcthXP73B
	 g3qWcWX+K2Kcpk27Gi9glwzHB8Bez0Axt084QXB3+P4e4riVIYnap5lpk9zcYL4Q4d
	 6hC4CmWxLU/1zdvF8jV/FOlX+W/c2PjsBjlUp8Udy6mfyEoj+OEfWIaBd0ig48m8hg
	 xdBjb9h2zQkgg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5EEEC624D7
	for <ddprobe@lists.linux.dev>; Thu,  3 Sep 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178846503373.29264.9979527972089744125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9d18868e0e8e07462df942b6e8f72526530bd3ca7c0f5444334c923dc0c15e6d
Date: Thu, 03 Sep 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788465033
