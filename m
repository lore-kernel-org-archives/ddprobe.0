Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C37D18E1F
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752424194; cv=none; b=L3rJC8D5wWuizAG9nM9Uk4Zgj3BZGah+0LNSlRLMc9cRfoIdG0jLl32BVOAJ0loC2lMiKQdrolB5IUKLxxN/vIav+kCJddEBv26zB295IlTlPAOB36ql67rvrtu8i0Mib8W42rIPSaSKuVbIb/aSueNQOKEAOuuiFHYsibeyBm8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752424194; c=relaxed/simple;
	bh=czUEjxonIXRPUWw8R4L+sbgprKy0xqBxMJIgbKaeM/A=;
	h=To:Subject:From:Message-Id:Date; b=NCW7hhTeZdK4q9p3XLkH99ha37LFrZKgbzwdhKE58k1Bt1iGpHEmAuFQgeOr1NQVpqGm5Hwx+m6WIeEk/MAVAlFDZ0v78CFWv4Tltqy2LaiMsddBCccuW8x4RhY+D6bN23w0QMP9bnpQRLToodrpMCG7XrhlckG9cvwH6W0hrcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XQkpdKWP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XQkpdKWP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1021C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752424193;
	bh=czUEjxonIXRPUWw8R4L+sbgprKy0xqBxMJIgbKaeM/A=;
	h=To:Subject:From:Date:From;
	b=XQkpdKWPPfwRzxRoRq7BQtRYldbEK/QsZpifGoCIeFnxYrWpisf8sZgagtp8+S/EV
	 aBxy51IGeKqNwx3pyfCZOCsfcEj9Y7n8idOw4ts+ToYtrKpZvLF59WiAPKgk9uQtnl
	 vU7qBQu7Vo4cJXqCD+gEq4lQblI9BSPF05CEouzU5N4L1KO2BHc+uH6MOVaUMymW1R
	 LO0RibSUX4tRRHCIN3hhNQoYpdIzDVZI1GimIapYJluq2aaiAiAyD3lHLfnR9gOxZ7
	 p+ke5Ym2nkyvgKjRoD9P3HTumuERX4OIsDKXdFnRh4Wz8Vr41q8dVq4TtIaDOBR6fW
	 HNk3j59l2X9XA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEDBC83F17
	for <ddprobe@lists.linux.dev>; Sun, 13 Jul 2025 16:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175242419357.20524.17001145448174548944.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4ebd3d0814919ad30815d17e5ca10afd1c78e6502a9e34efaa74c9a4375423f0
Date: Sun, 13 Jul 2025 16:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752424193
