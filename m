Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41698283FEE
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:22:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765124574; cv=none; b=XDo/LTs0Zy+gUQNzdr4zi0PSRfQgbQjMJRE6P/qyRvXPl1uNSUYqgNrMidZiR9HVAbQOqy7Ub8Sydw9Ct/6MK3JGC7K+JuYaHahlqRxHMf/NqCeP5L6alzeeV1hPtl99ymNyJJ9ZABydtldor5BV/JgsAWQe1l9EgNHNCQZmMm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765124574; c=relaxed/simple;
	bh=C8lQh0r0VAJvrlD4/Wx8IcGWbsNqWJa0iZYDOghvNcQ=;
	h=To:Subject:From:Message-Id:Date; b=ExhFFDEXfbng0KCgPChdn3UNSjASV+dHV8Z7YNRBdeaVEI7J/RrbfDOG7vFmq2Ch6aLU05iEf9I+L+GwX8D2cnCA/chnE+VbMM6Me5OJ9deVZo6UHx/dqawbm3t03mzU0hWZezMTX/nvyQFdYPHA6AyQhRAJ/vhg4zyUER4mkms=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fu8SHyk6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fu8SHyk6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4F36C4CEFB
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:22:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765124573;
	bh=C8lQh0r0VAJvrlD4/Wx8IcGWbsNqWJa0iZYDOghvNcQ=;
	h=To:Subject:From:Date:From;
	b=fu8SHyk6IrM1KUEwp1uZMA61kB2OIlVL7mOLyozvB8No2334n21cJu5kMg3L145LY
	 LEesVwwKZe2er32HL3Zd/S26WjY/rihwQ5audj02PGMd+vpBQ+Vs2CcH+MggpR/mVm
	 /aKyrfrCf4WW4UAfFdR1/VViIhmfJOp+Vwaj6Ix5QcZ4NjDCopl8pPjksvEg3gw/WS
	 5nAfSaUTI0Iv55yuz8Y9kmHX2V9CpoeEZhuS4EmNlLxloPBniRK8b1NlMB6DeV0iYI
	 TFwDO4PNFbUbKogMvv8JxBOa1o3EowUhXCY9gihIC3rssiCBbPgpJgFK8BqhP9ZDRn
	 eQSVfVlymEH4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91114D1CDC6
	for <ddprobe@lists.linux.dev>; Sun,  7 Dec 2025 16:22:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176512457358.25765.4950150954454123899.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4579510015e4d1293b737f4f902b116ed944b4ac496cf942c9002031789a3b5a
Date: Sun, 07 Dec 2025 16:22:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765124573
