Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 598602C1594
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750774795; cv=none; b=XUZyrQnIgKSO0rLqFs7YB+TyXlqZM6SEnOUBfy+vNe+MEU8oJuQFLSoPs5VGbHmvCW3VCJ7CvLRClyZck7uEN61iCsN4wwqgU3aop62W2qKz7hwuxb6M5mS5O/0AYuFGu40OyeRKqVy26j/lm+4AbO0ZxAba/jerev71rSRprtk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750774795; c=relaxed/simple;
	bh=Qb+xh4b7597XMfB3+3IQs4yN17mrXvk8Qa8HJq1Lk2k=;
	h=To:Subject:From:Message-Id:Date; b=b3oyrQ8au3vJUHSErl4oxoSY9/U0uxW8zgqoGsNOvRUZ3bYge3Cg5dTbstkfyM/oZsUYPfpuzvUrSAyBuR0LT6Rtc5Krs1Y00e2gkktdU/OCAMOPw4aDX9fshJ1/Jtfj7sVXpgIupSYmHDLjnyPB0VhGmLaaTdc8VIdf0L5qnT8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=icbk0hP3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="icbk0hP3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E00CC4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750774793;
	bh=Qb+xh4b7597XMfB3+3IQs4yN17mrXvk8Qa8HJq1Lk2k=;
	h=To:Subject:From:Date:From;
	b=icbk0hP3KicIMJx3YQkuN4n+ZeJGfdzSYWSHzx+rM8x26KVjx6R4Wwa78DUNHSGz8
	 XkqzA5miA5JxwcqEZdm0q4Lukeuvd3y/fUG/FTldZpUp+mtAYuiVV9zBiK6W5t47ei
	 M0WDcnFo6pbEy4E2LFzv+hqlGcAC2SYzupm/9imj7zePv6ltwbEA7ZcWKuHhcBPy5Z
	 AesetjgSqozykpl2XDeeQbdwsMYEkmIOL4kPi9HM43LR6iGJ/T0B3hqshyMPDpk6uM
	 rd9ABamt+dqwDzfWjmCrl5Nxq0w99rKwIzbIzxOxZ/7NLpijEKe47H/5LTk1yHqRnL
	 QTsEGa/o6XUJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ED05C77B7C
	for <ddprobe@lists.linux.dev>; Tue, 24 Jun 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175077479357.29964.14901436264729974524.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 39743b1e53975b67e6c0f68cbedf86de2f2ad500f5704dd55b86a0836c1b719e
Date: Tue, 24 Jun 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750774793
