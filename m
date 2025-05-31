Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CC42D154C17
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748707193; cv=none; b=E5fvzRdX4vsfR4rHJItDFMTW4HQjcxfZVSOBHDjwxJmDxHe+H4+BGzeACwlIuZEqGGKhQkT9rlCbRblrueJumHqvDMif7foIbNnk06B6CwKNQP6JXyUtGbNMz/z0AkLTSqqrtI40nzxJ0xJEb/kYfltda+wWCS8ZtZ74v8ueBu0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748707193; c=relaxed/simple;
	bh=9XdksmxjkxV7qSOuuHgWV1XRfgqAP+8ON9NrLvZjBVg=;
	h=To:Subject:From:Message-Id:Date; b=q/S7OlVSslz+kJsUpiIUlYkyWlNh6QCUK21LbhfTr7m8wvg1Kf3vSE8gQN9VbHCZM7C2tQDrIXjEVpXapE2hQ/NgYMb8fka9fnSKbkSj+N2AG3dID4rdcaQ2b1mbYEkMnbCJpm4ozVAFdqRfhidzSH7wpsEbj7EmPOlPXeMtPO0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lOx//VVi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lOx//VVi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3319C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748707193;
	bh=9XdksmxjkxV7qSOuuHgWV1XRfgqAP+8ON9NrLvZjBVg=;
	h=To:Subject:From:Date:From;
	b=lOx//VViHBxVMt8uzp36kiAeiPeux7AAKK4MRigkDZ3pfJLVN48ll/BVbOZG+tz+2
	 WPe9ui0kXakMFu97KztD1yvLqTEdSgFozRs9MZbku7wU/9lH8HazvBqLWYz9HV9jXs
	 IwnHWw4ABmbWEWk0DmCwxSPSdiNIT++uXmZEfRxDcjyI4Wt2Tnc6NBIG6JCtpZLKgX
	 AeloswrmO4pkRVFoak0bh9YLrjbx9OKasvb++iJIjzk42uiKvV3IxOwGavP8H4P0rz
	 yXExyfwNYuQxnYPml5lYAkke0QyTChJvxFMpTizpBr0uYCk9sJtUYUnhklhg394/bV
	 B/5y54Cp4Y7Fw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED24C5AE59
	for <ddprobe@lists.linux.dev>; Sat, 31 May 2025 15:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174870719357.26572.725904137540892983.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f645b647ea59d52392e1510bc62b685d1d56dd15a6ad3df99a2c97bd4286bf87
Date: Sat, 31 May 2025 15:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748707193
