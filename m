Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id DB2FD79C2
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 10:41:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739356914; cv=none; b=ocENZ7AswO7apWy8g8YKqe4QkssOWnhYS+rWHzhjcWfhrzPJaGQzZCFU7LcZSpYA/f7coThHbiD6f9SinLF2LMbS+QzxtjW5XE2Bdse38CM8MafZHbBM+EZXorJKkJGKnA/GKb0pAB3eAxvZYrdQLFh6TRSTt5STwq0lGkgLdVY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739356914; c=relaxed/simple;
	bh=FP1+jQpjeP27iOzidkkuxgmBktGNcD7kVfsceZHZrIk=;
	h=To:Subject:From:Message-Id:Date; b=nUKScha2gBUWSj23bu+qmhZjO//Agi6LFn99UA6/1oV4o5phHru4hx0u2rqO6wxg6GKXomNWUxOlSotZOlVl1YG7Du/MOTEgJ1LhBA0JO783PO2pdMVxcOjVPiLGw0lE7SR57ovCsFXi4OAW4XzYjVfUJuTulI/m++zeMZX7jQA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UUr4gucZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UUr4gucZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 5BE42C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 10:41:54 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739356914;
	bh=FP1+jQpjeP27iOzidkkuxgmBktGNcD7kVfsceZHZrIk=;
	h=To:Subject:From:Date:From;
	b=UUr4gucZfjc0kNzylRFoN3zHT8cfCZacFk4/ZnabA8pA+8uArfT9okFIca0a0ZyCh
	 yRMSBRupkQd96ftYwG1jqEzCz5gkrXXTqOkaOk7cnwBZGL2Mi6ktJRoVBTeiybwM48
	 ZcHtZCNh0Y4KK2q844D8+UXnVSaNgeX4FGQ0ZnFQoe/z8kmsr1fVOM/Sp0Ex3Tmmft
	 /84mnM2/tNpUal3NaMo3rlKuy6icK0AS9xOJ/WH/V660OOLhN0dVEJlU0m0tqdUOUQ
	 DCrE+Aj9QeYmh3VOk3Mz5uhqVyecMo3UOVYOEkmXnc0E4LPHHI4za/20MBT2NRtcO1
	 C1t4hcR2ashmA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id DB955C021A0
	for <ddprobe@lists.linux.dev>; Wed, 12 Feb 2025 10:41:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173935691383.8215.13809151796480483182.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eedf2297db46f3d17e4bf866881534b7ff4eb5ecf0e1febe035898943158a961
Date: Wed, 12 Feb 2025 10:41:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739356913
