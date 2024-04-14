Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4AE722C848
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 10:49:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1713091763; cv=none; b=RJgVkfFqvUGoaMhaMUq71bHWrN8XnaRJnwmPcVEa/CEywcS94N9e5cxvVS4ibFUqR+llKR46/S26FPyPBfUqHNreZfJNQU8adhKJc2aZbMRIOQ1eFCbuIbV4wMBlFjmJN4PbeHZVB8SOVa9ab6olyxxsep9WUHiUIyV3srEx5Rk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1713091763; c=relaxed/simple;
	bh=VXHuzhywGyQcoHV+A8jjv0KukRhJtsgYoq9JfSPZsv4=;
	h=To:Subject:From:Message-Id:Date; b=rwbxCmYmn1I74Rd2o3ERdAoD6wW1GaPOZw4Wql1SyhjhZRGckj37e6Pf448+SP8+SB4Mn0Wxq450YkLgTs+1BElLUuhjf4tg7AJNakPro9TeqHxXYMpFjkbmmd6GJmZbOQgYQQ8A1sDL2IL2LXfOJOq5yzQEBpIORxoMq75X4KU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=twskbx9n; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="twskbx9n"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3F7BC072AA
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 10:49:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1713091762;
	bh=VXHuzhywGyQcoHV+A8jjv0KukRhJtsgYoq9JfSPZsv4=;
	h=To:Subject:From:Date:From;
	b=twskbx9nCNp6CPYOEEzxkDGpTS2JPnmyKQXSnle1+VGuxBWIF8vLpxeM0s3yzAoj+
	 Kt1CrPIlQXc1fiRLMolPfJqug1R//xK3+TaoLzjoXbLWt4e6lmxQ9STHh++IEXFHY6
	 mSHEpl/WWgDQsGZPHJBMv53KTDPusOBZoqWUYLF+UkcOaNAIDtgzNNw6Gm0FaFil6K
	 0M+SRYZGZ4nKs1LOlYoTtfMTAmewhdkj97e6Q1Ayrv/cQjA1BDyt7+CQdulGpA/Oat
	 6lV9bJa7/vETIdcXuGqUC+BUi3YgbjHZsso/snRqUDU3iYIYA5RZmpsrI0wGqhv5NP
	 N6uZDR0eLVIvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BD884C4345F
	for <ddprobe@lists.linux.dev>; Sun, 14 Apr 2024 10:49:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171309176276.24301.3572428407170411508.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 68282773012bd37c00f61eb7db2338cec25096ed0c0b7cb800f1423a245497c6
Date: Sun, 14 Apr 2024 10:49:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1713091762
