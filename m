Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F28155C97
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:52:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1765522374; cv=none; b=SVSONJ2duXueFYfyC7Wm9KH7TN8z72arVGuSujqUsxKue7zCAc3UfOUQw2KuG3t5ZMtm7Lr2rpQeN3eMPcDWBA+nlI5eMx51q2sj48Rdv1FKddXAkhLDNBoXTAofCA2ukkq8+u97lTi+wHkMOy7f/HMp5mHQXQ1u9fT56QlFRaM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1765522374; c=relaxed/simple;
	bh=+cmbUq+/BmH8/3sO6ao/4X8VxlLuNqapp5wncIch8nQ=;
	h=To:Subject:From:Message-Id:Date; b=hfrfLRCSJL42OZiJE6i5VZdWfmMBgbmlL8YLDDYzUHZJfloVyv+Xdy7fCgxxanMawQcFW77bLppgxKgDmucNjerxFq5gw8BRiN/HYj7T1kG0tsxEeSyY4GzyPGMlKa7pcnkFcIbYrZzk9qewtt2q13z1n9PZPsfbJCMYVCDcga8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EmUgCc7W; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EmUgCc7W"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BE307C4CEF1
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:52:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1765522373;
	bh=+cmbUq+/BmH8/3sO6ao/4X8VxlLuNqapp5wncIch8nQ=;
	h=To:Subject:From:Date:From;
	b=EmUgCc7WkdY5t1fVE5LbWc1mezUdLwrKxqPELHqHeCYWPf5qVaq18zXl4Hfcd0j2N
	 ofd+X27bJfvsvMbIZNiZmaSA0knSkQKch501QfHZ7vI8dWqwBNwgDUGaPAbPqc5Wld
	 6dfPvyzW43Kc7twacQItXLWhDQ/LJ63hvb7NB8wfRBC8ytE0Jw7jV4q0UslNbY4A1z
	 yz4TbXYnH91y0M+ItMkR1ou5+JoYeOpItbvBAjpUo2GGY2dDVj/RzVzmRaftfhVSf4
	 xd5XzDhzKBflm5xVuyKB+63RDz5iZshoZoBwQaoDKbNQYPoZY/2DNWQEGN+Dc9CLV9
	 vMT2V4SuaqT1Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A547ED4336E
	for <ddprobe@lists.linux.dev>; Fri, 12 Dec 2025 06:52:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176552237366.1108.15445122082802596659.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6489dffb7fa85f6579a43dafa84e4299ff02b4711068827d9498a456f9dcf64
Date: Fri, 12 Dec 2025 06:52:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1765522373
