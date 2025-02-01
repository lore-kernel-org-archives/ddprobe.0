Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 602D7A935
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738404954; cv=none; b=Sk1nQN091LxQeY0h22mpE6y2NAWf0ornIUWwiyB3JqL5ZeiIkUDGLQ6AM3ocKR7fMHuBtG7MaVVBv6pZhpBR/F+Adgposy5FSOz1KduKL2vS4lYBf4t2oZIJ/W+NIInUjIYLSvZX8rfgQyxL4g5IHsLWZLdV8FGuKxkUtX8zHLU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738404954; c=relaxed/simple;
	bh=QVgxUKrPxIK2TAdpv0zbkoo1GbCneNkW2nhQdEwtMmg=;
	h=To:Subject:From:Message-Id:Date; b=WRmQ7DlkzvK/hvNVbNWlkXxUEJiww9dPiLj3kWgqlQ076PGglTuATLm5HuXCcMm9hXunKMOVOdiiWxqJB6nPnobK5SZMt0qhGUEdarPnqBQRcgknm98AQGIIqPpzRSG5Zi93PjE8IjCtZ0/nCI1uL+xxBv1kI2+zJfAgvU786Uw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NJDySKJX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NJDySKJX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B74B7C4CED3
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738404953;
	bh=QVgxUKrPxIK2TAdpv0zbkoo1GbCneNkW2nhQdEwtMmg=;
	h=To:Subject:From:Date:From;
	b=NJDySKJXzJYZV+LokTBOtefY6XOJ5dis4VIfQxE4UiVM8EBLWSECfhzKb8jj0xXLB
	 W4YKLnZuBPBK44GKjonEiX0L6fzl4Wb3NKaDmABmgag53KD02IbrIAxmCzucvQxjOC
	 OhoIZVRR8tPzoZgnz+lptdsDTK9OkSLVqqDzBA9ZRi5IFREfIxoV61Woslu33iz8IV
	 IpjFFS0ZtSUjrVkxdEodsK2Nluc4EeV5ZchmYMfjKOGOVcjTIW5HXa3Ahcudo1T0zD
	 KuIvG0QAoR/DHF//L1SG0SPoFRUrLzvC/Y1l6Qc3fIxnPKn1UTLl+O6b/pk4I2khr4
	 +MUaK1YxVLG1A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9DADAC0218A
	for <ddprobe@lists.linux.dev>; Sat,  1 Feb 2025 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173840495362.14975.2384851702965350963.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9a855c5319ae5da85068e0b74f130961a52d41e2909d481db2c64519719e6c93
Date: Sat, 01 Feb 2025 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738404953
