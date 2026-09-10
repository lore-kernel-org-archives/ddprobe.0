Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 999B73803DE
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789008034; cv=none; b=C2bJGfU6RT3GelMTfuQEvJvdVO/JgxGiYQFSHUYSunOiFp8eyVOYR//HYM0smEvUL18UenPYI/2XC80g/Aq7DtvJavj9BtxzOvaDkimOuCP+M0Kp8vaftY3Fb68xkjfha0z5u0tYw1ayOaazZQw8OtFi+7Jae4oxPN8uRr5nK28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789008034; c=relaxed/simple;
	bh=HR3RDC3Ze0FNRt22VNKpJkX9//acsW5vrYEy5KEU4TA=;
	h=To:Subject:From:Message-Id:Date; b=lwQE34qiZ/F4ZwjdJIwz0siRuYcIP+4xBW98+yH2YzoVdW1mpe086EigTJcNhmiG9bCqcugJGzdoU2jE4ilivipLeQzuvXkO9q5kvnhRaM0INbKxLogZ2jNfWmJ9dDz6Axzg+5HgIM2EDihTGTrTSsv0tn0bsg+15rdAtlv1JzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MeBbumKJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MeBbumKJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D259FC2BCF5
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789008033;
	bh=HR3RDC3Ze0FNRt22VNKpJkX9//acsW5vrYEy5KEU4TA=;
	h=To:Subject:From:Date:From;
	b=MeBbumKJ4y7pe+fK/0ZqPHYmJExO6xGqQ3IuljXA4M6TSaX20dxqWpjdgsnPzMXSj
	 SZ8ythCkO+Mqejkhpe21tVl914gJZnYUlt8b4sPkcMNmh6XTAGgp0Kf/FCDfjNqRKZ
	 p8s6593pnV3Iu3YTVz+jazZSuF06VLFbsOA8fUzcz28HYm7nCCG6KO3vDIPgUgMU1S
	 CALsxTlCpqRqKPUcy7PdhF9bQu9wKWOTFgLRlfji89XFNwmL9D88hhcXkaLc72HgdY
	 80XMW9Njq0dqMai7sUpDZvwZsG3+JisydRa3oEKiJcit+lPVGVpvCieqJW2Qg+I6fs
	 uFfu2oj8wJRUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE2E0C79FB6
	for <ddprobe@lists.linux.dev>; Thu, 10 Sep 2026 02:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178900803370.1030.14023110191963655256.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eb91c0d8d990c8968a027352646d0ab93ac623e0469114c82d36d632c2fa6f41
Date: Thu, 10 Sep 2026 02:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789008033
