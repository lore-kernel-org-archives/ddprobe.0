Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 448F3196
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 00:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725755754; cv=none; b=Wtdja/EdTwEZ0QkhsOkqBbXB5qmfqHzS8OvS38aqO++Z7OzfLJ20xvBbuhwrRJm8byyxd7utfV+YGXfVlaqGpSpbl9ifVBMAU57l104WnNm0dAGXVKDurmDvQHns6ZhKQ7dF36/ejDbC+pO3G9YTNoqsVASUpwvkg3Y15k95w0Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725755754; c=relaxed/simple;
	bh=n4Zt9oR5BIhv8Mr4NFRGCzIsBkcaDU8aSB4nQcS790o=;
	h=To:Subject:From:Message-Id:Date; b=ob7/bwR5aZpYx/rub1RbKHCoBkNjCDLzOWfavQxMqGzXI+g5yuM46UDJEH/VVmi7FhmdpU/pr5h1v6oeCSmyQqfG6bxq+hdXyYVGEXVwhL2q49AHYZXTsa1N+sevFlJr+4RvqGTOR0OYENch2FE/XBGJ/jugwRgrPB4OqX+p/A8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xs0ZD25J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xs0ZD25J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BEE94C4CEC2
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 00:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725755753;
	bh=n4Zt9oR5BIhv8Mr4NFRGCzIsBkcaDU8aSB4nQcS790o=;
	h=To:Subject:From:Date:From;
	b=Xs0ZD25JxiMWN2fpKq/kPMbsBMUNGXSCBd7gUrqvGZ8iOVYUybD8kSaD+E8WJmhFp
	 nc/14SDOJsleRw8Qm2eUL4H0ju0Gt4x/80qIWLPATZZK0xhHooysHaab+K6L8Izjuq
	 KuvgLPRSg3Tw+fQA7RIP56cameAWTAq3c2XX1kYk+h+DmIB58YUhd6zsMouz2dp8ih
	 sX3x+6vX0Kn6+3+/JEKIwciKEwoD1k+QUCS2C60dlpOZWXdk9xyFgavHy4bhBClS4A
	 aaConmAZwN48Hp2msvcyPzFLcZpcOhNrq7uoGsM34E21otqyLxKkNCitJ3aKQbKwL4
	 oheJquJNgOjVw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4015ECE579
	for <ddprobe@lists.linux.dev>; Sun,  8 Sep 2024 00:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172575575364.18569.6660091826556079752.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc22e2894027b5ce9ffac62f946e4ab7c4e75d64a651f3a0dcd703b64d732757
Date: Sun, 08 Sep 2024 00:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725755753
