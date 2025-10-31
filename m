Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 12CB92FE060
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761931794; cv=none; b=FW0ejUwQ5B/JLQwTJuNo4Ev5EJ/bUY6EOrsD6T5vvFHGQHcMVJ2IeKL8eZ/mv+jIZCAylGUFLJ8EceHc6JOV7cCioekQzbN+MMR8/D0OO0mFmcnArVqEOsb97pZpIHe8IAR/3UMxksF77BoLFbiHNfyIbcbV6gl0vGxm4QNXmfE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761931794; c=relaxed/simple;
	bh=i3W/H4eGiHMOJRFaUgtsAEUK0G62V7UQbfJEKCnjgo0=;
	h=To:Subject:From:Message-Id:Date; b=DCvmtpfp4GQnAEYMlx6RQLDySlkqSmxyAq1dufnbcOvnlCFfCZeGGpytDBi49Py+d54qE7bi+qzsJBHJW45QxRhXkCdm4hI55k9hwLkL2PyKEeDTdBggWY+xLnXQyvVXdArbN7vxr3s7FJ5YYpZ1ZPDJY1kEefn32yg8TC2Y7CU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Bqgcpvj3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Bqgcpvj3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA089C116C6
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761931793;
	bh=i3W/H4eGiHMOJRFaUgtsAEUK0G62V7UQbfJEKCnjgo0=;
	h=To:Subject:From:Date:From;
	b=Bqgcpvj384ByF9/pi5LIgoc81D2OCgqaQpxYDcIsxCaBOA3GDW16TSvs2mdi7rsca
	 mdv2b1vojWz6yeJrdaw+7jhY7YXpZQLoVv2+M3gV2FmqmKZ6DOh4xpZ5EgSkiAohfL
	 dZiykbVQKD+KHSqOkyTRggyV+12vHxT/SH8vy8wjLyLYgzM8/aNVWTTB0KfDB/CjHX
	 V9xdICObdsJuQRjEJdnzPlNxqK9ZCnNyMPtHjZsgRC3peHelZ4I1VIKAJ+2kmvnQjT
	 9pKauYYClWdIcTGR98/t15J5IV1flbDCYVUMPsLLx2BuYbA/7UQkRtZ2JkE7f3h64V
	 BHL9me/uz/5oQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AFC9CCFA05
	for <ddprobe@lists.linux.dev>; Fri, 31 Oct 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176193179362.24768.8646649020787870316.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4c8e03de64d7b596f19cecb4c52b35311d6df56a48f1090330dfd1cb13564dbd
Date: Fri, 31 Oct 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761931793
