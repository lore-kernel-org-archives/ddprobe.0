Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E5803EA6C
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:51:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718934683; cv=none; b=PaQ9RfCbJ0UeF9YYrlCKPMyKpCYTj8YPUA8P8KGxQG2HMzF15C/48SUpD9XwQZpZ4ly61g1vCIKDoLWqv+kZGv9RHhoqr6xp6bi5cPwY8gCiuVi04HpoWNaQvueGXy+zXMDX2pq30PVX2g14niDPgFfe2n4QTOKBCnc5QlZVqA8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718934683; c=relaxed/simple;
	bh=+6VnrAT81dh8KDpJBC9kG45lewdvPHIwwPwaA92Q/Zo=;
	h=To:Subject:From:Message-Id:Date; b=i5abwpsBPrSK6Ri8diAWzE/fWRIvUBs5LDkfsTD5PjKuPwmINJzThtpF6swn0KIlIoGpF/2KSjQXZp/3a/zCM6RSMM40hyOVYg+MptZCFLgfsJDXdduXiUOMceRkhPjHAGucBGlSCLq7FWmq3PdW0wCZN6NFy0DXTV06DqcgKVc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cy+/PGJ+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cy+/PGJ+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DBFF8C2BD10
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:51:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718934682;
	bh=+6VnrAT81dh8KDpJBC9kG45lewdvPHIwwPwaA92Q/Zo=;
	h=To:Subject:From:Date:From;
	b=cy+/PGJ+8ZjCzzsHfw3YML98iQrWGZS/tI+igb4GNzEtamyCiAOFyNPhpalBA5+Ro
	 RQpvxrC6hRuivkylBD6oW5UPi91Qws7r9gAXjJ7itLZtZcYB0quUKUWQVMo+khF8++
	 jEBxy7SDQo4Mtzs4Ia+ySz94CMVChfGMx3BtpjaU85jb/NrHFquQwcZiFqJKG4lNRT
	 dV+T/J97nYKVsDXOokjf11dGHUl0G/4MzIVcw5U7m0nxS0OCLq0aSeQFDB4jF1NOqh
	 hWfvbylyO/C+eTooyljG8/O1vnfpY8Wz7fHh6gr7JNcroFXPQQL6TGGr2f4jrWKSF2
	 2Ywo0yqJMZkLw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7F98C2BA18
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 01:51:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171893468280.7282.12911583781826918820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e849f48a50bce4c11a152fe5e93a1db5459c9084ecbf4bb093d0ff5fca1bb7ff
Date: Fri, 21 Jun 2024 01:51:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718934682
