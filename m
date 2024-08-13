Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2C40B13C8E2
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 14:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723558554; cv=none; b=YVHct5JdqojSPf9ond9C41C9566ak4AUXq1UotbNB5VveW1rNEEBYjPf/PPiGfiKHvNa9HkQUrXvZXXK9uW26xRUa6AfHbNLzeidyz9FIht2vbDMzxLLLRWyQQA4amGG4qFcYOd7eFobcNRVI5mpLjdqCuLXwW5fny+tRz56NB8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723558554; c=relaxed/simple;
	bh=dewoDFMJiJDYHrUtmusFlFOkEFcP3BvHCzCtC3oidME=;
	h=To:Subject:From:Message-Id:Date; b=eIQKaVqv8AAx9k5EfKjAEn9rAosBIWHljtinJVEwx6qq7fFga+0nqLUbT5YAxXqlLIOS9N02rAZ18Zhv+wKQpymTvBZC0MZogw2WcRY9yeTo/Cr/zGYJr4KC+UOZ3ND94BkV48NcH6VxchinCeyBCfW/s9rWaO65s1iJhqxAJR0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ez2xr2Ve; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ez2xr2Ve"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FF79C4AF0B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 14:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723558553;
	bh=dewoDFMJiJDYHrUtmusFlFOkEFcP3BvHCzCtC3oidME=;
	h=To:Subject:From:Date:From;
	b=Ez2xr2Ve9KQAiZUgBCwmH20eE4pdcVKVZd3XEfwtRJVOrG2CIEON3BcSX8zqpqxKH
	 IHgM6gIpXYNTILP2/0fzz1rj2o5wOJNR9/P0qQ6SMUkiLuvZiqBTWfsZyNB7dI/6xp
	 O0aYJoNIBLkpyzJkGCr9LVRuhSAYHobZJ3W3IF1xcnsuUBWhIPdXoQk73mso9Z8Nnn
	 yORXOHftF2cV11g5gWCQm70NncQ/zHGqZN0sqEhmpwACRQ7QFG/pJHImKaKbCE4wU2
	 Vm/lrzE5NCmj7lxKuD/sCFdRN+JmqOLlP0vC38exUPeKvUwN05uywVE2T5HyTYIEWy
	 DjXaYnc1TJbwA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 939A5C52D7B
	for <ddprobe@lists.linux.dev>; Tue, 13 Aug 2024 14:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172355855358.18257.14824006284925061112.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 033ec739d154c0a424a953c0ceff7335b14b687ba4d703f478e529ecc0bdabd3
Date: Tue, 13 Aug 2024 14:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723558553
