Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EDA7285CBB
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756456794; cv=none; b=fnS/mERRwXXpee5FbsJ3/kHoJXURCLqbBhh/AQ88Fq08AbXmW2nfkWbOoCLa4BODrWJMPkA0P9r0M2OwvJTBNhD0UMbiDsrinHcBa7321MeLdGbF59XKJBsrcG4ciieSaXnXv9d/8PZ0eFroLo0LH+WFyLiicAcKqNc5CUuJqpA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756456794; c=relaxed/simple;
	bh=7wWe+P5jeNqkXtUH0RVZehP8W1e4q+rvleCUT3B+CfQ=;
	h=To:Subject:From:Message-Id:Date; b=ScY4AKBZPbPEk4cs8cPVZOlHHS9JfETm0RjXOexnx3DIaKh/wQOz52CP00QUFUURqcnSkCGowtb9S4CYOPgYeHeI5KS9SNprJzF9I+j6s9ykBx12Lxdd6vSjVroI8KR2uEJeY0o73l+xRWP6CYQdUhSAtWYKEy8jYbf2WD/3pAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AY55lcYr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AY55lcYr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74ACC4CEF4
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756456793;
	bh=7wWe+P5jeNqkXtUH0RVZehP8W1e4q+rvleCUT3B+CfQ=;
	h=To:Subject:From:Date:From;
	b=AY55lcYrpR57JC8BpkYxnCju4rGNmMqe28edYm0VxB8LY8/GWi96jNwVoubIl7b6l
	 FxvP1rHNY0W2Fsm41QhmTszWVi+0961aRrR0aNALcYEEnBnKuPaB7mM0M3VqXqWjs6
	 k4XlGHlpsInVmqVgl8XvMicBP/F+j3fBD3k5gFOh4LXSAa/Zv9YWuAiKAmLhvLhgdy
	 zIsrq7dqpmbeAHF6FU+QH6FS9JTl7jbU5Ph1SgpX2SwrQ9bwNq9LUrMnLmZMODo5iH
	 0Aj5u7mSZnI3iECM2A69WXAUw79Y9RnPIV37omWlCyJdSagYlYmzz23EkMY6FJ8Jte
	 YOe1FJRttBfuQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9482BCA0FF7
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 08:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175645679360.4803.14015087840015817077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a1d0041ea147048b7da51690e4a3fb21c04c8a6f090ae7b0254bf0426551a71
Date: Fri, 29 Aug 2025 08:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756456793
