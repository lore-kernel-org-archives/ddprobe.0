Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C2A3547071
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791091834; cv=none; b=PYeyxQaRgP4dZmE+gJM7I7yDPQoMLvUQinNS98dGES6EqoKgqAHaRUcEQnlSdP4SWNXuN3B4syd8S1xJkkxGqzT0/98O6O7z6Sx2iwZg15aaJow9nriMru5WGUcKpdDMzsY/+tj6jXu5qg9guEopTgZvHYR2Zkjbh2LuPyTrUes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791091834; c=relaxed/simple;
	bh=K/p6Yv+AxvKx058odmOo/vc9cYf7ZHXM+MENYFo6u60=;
	h=To:Subject:From:Message-Id:Date; b=gWTEJV8qB0Iorci3SakCCEkhQBRAbJ9CuxtC2VuXcknl77x7oGDPcshkHmyxOB0dHI/aKJRNPHDol9TVc1TtcU6mPMto29ZyEoCoglcMjOV80U5WtPCNzWnGf7fkMrspbgZgScou817VjK88ZG9hNsmYuxsJHQlh2hUzPkgUHHg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oUFm4VCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oUFm4VCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DA1C5C2BCB9
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791091833;
	bh=K/p6Yv+AxvKx058odmOo/vc9cYf7ZHXM+MENYFo6u60=;
	h=To:Subject:From:Date:From;
	b=oUFm4VCupvYR9/URL9zayUBWQvWdv0Vf8GV+4cPZIpGdnuxwwBPM59fG+Hh8Qknfr
	 1hVJthKaHyY/QpEGHDe5PKNTGuJXvJ22XX+o9y/Cu3UseMbokwkAMlbt1EJ+bXFovY
	 kc94q841+mRqOIYNcCHQ7oaL241iHJEVWhpAg++z1RLEYCWAdXBUmlZ0g6GFyVkZeX
	 zHwzVU6F+rcxDaOsZOXkr8V0NXDuxffGb86G2gvrtOCwn5kh5p6w98T/nkJUzbq3QU
	 yZYbAQU6iRFmh8+THlm11ftfrWNXhnv0OwjZ/Gp9a5LVamkEz0r3WymO3gr0z81Q8z
	 vcKbTPB7sJS2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF8BACA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 05:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179109183369.7113.3287399488063180973.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 93762b6e0e57690ab842d342c3219d131894a57db424196c406de73d1076c0cb
Date: Sun, 04 Oct 2026 05:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791091833
