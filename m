Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 205282110E
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:12:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765584774; cv=none; b=SaOHMqJ8lJTSej5Po0+u0osIagvgpjUb7yn8pTyvM102kpcjWknNLI7zmOg+Kg5dbsBcDNdgf7879+0RbqCOhaRYf3TC95i+Lt7V0NMcMcEoPKz5GDC+eu74cO4LjNmjQKyiB7sMjwfAjFU4gKlP/34Yh9zA6kdxU5S4e5nQj+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765584774; c=relaxed/simple;
	bh=pM9p54TCy7rfmNb/tr+nvmasmYbGI6QdjX+TzXfV+6w=;
	h=To:Subject:From:Message-Id:Date; b=tTciWHe/BqusyR/3tKNCWdBhbOwN5jrdz3QutehYJLKo5UahTWEx9ESEYaRrSDij62VhBKXwHEq1nU55nMqCtkhDfFG+CUO5+GdbysLYS/d2Un28LinbVFVgJjZlkZjQ7sctLCOGfhygIfyjv3BHhgHcHQ/T9nBU05rq3OBec+8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ai7slBV6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ai7slBV6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE80EC4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:12:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765584773;
	bh=pM9p54TCy7rfmNb/tr+nvmasmYbGI6QdjX+TzXfV+6w=;
	h=To:Subject:From:Date:From;
	b=Ai7slBV6dUq6ZzFM8HTzvLN/m/EtwxA5roL1M1bPQcImLZP5mm4RKMtEB34RR5h7h
	 AT6cu4WKavnwbVGAEqxNBpQjgaUcmtLDBUOIrlKr5kRqwEeOzRfR716QOvyx/D7RBd
	 T+v5MeVg77h8AzzxT+7YuDZmIl6/mwQZH6U+7QIfQXeQKBcitYnt57ygE8HpMCBWpD
	 FyV/gYBHV1Ll1orBy5SWyDB9uDT2aUezE19F5itak6vG0ymm5fISNZ9wr4tjzab3z9
	 9POyKeIvN9VIWeuVDLk6xO6NtI0itpm5SR3chjWUY9TgyLIK2kNXPwuXUMKCnfhg+3
	 1Ss4PwJ8c9UqQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BC4AD59F5C
	for <ddprobe@lists.linux.dev>; Sat, 13 Dec 2025 00:12:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176558477360.3756.2843010503743360859.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c6d2abd32e0eb0ac9fd3f999868a7d05c2641338d3291208f5b64dd58f930c13
Date: Sat, 13 Dec 2025 00:12:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765584773
