Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0312331A8F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714461143; cv=none; b=ihoD63K6D679CB5l1HBrqxiVJHM/rJeE0mw7xwwZcehmNwIR4WPXGZsXWmvpZRn9AsQMSVX0nLXJj49nopZyjY7Ag8rjHR0ZWKAW7vujEkwVeiP5I29JG1vS6MIuu9bSwxhfrO0IXCU/P1nFQikLLUc7UTzQ8v+UWe/FU9vT5oI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714461143; c=relaxed/simple;
	bh=QdtKJmyGZedrB6WA4T5ZxWh1T1dRkiaHUwHla+V7Y90=;
	h=To:Subject:From:Message-Id:Date; b=aVpXHaX0oN9l8Qymuhafyd0c8NHtFW4FHUT/ee2JQ9knfHNEGqefgtSgZqBR9dKPv2shUsOLlB1nYGWb31oFRWoyQe2GOz2/NT2lITyHUEVmt6c8XNT6CIW0fkvkdMjoNvPdp3DI0FZoasxYV+UT7eeCNTRAr9SEqV2J8Lu7bsE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VLKpCQSg; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VLKpCQSg"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4739C2BBFC
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714461142;
	bh=QdtKJmyGZedrB6WA4T5ZxWh1T1dRkiaHUwHla+V7Y90=;
	h=To:Subject:From:Date:From;
	b=VLKpCQSgW5YYERz9pRgDris4BgzHkLJFnqALMi9MmAd+okbeyoKNHDs470aHdsgOS
	 aMljnPjHM7PZVYUnQF5t723uyK/QQjmMUOe+u6WLUJl76y2uuyLowLmonWCqF2bEuH
	 DexKMLfr4Q+Xt108xiKX6JEQqUVoQcVtaB1Y1krnlxApZxBeehOrxmmmYBGVPpgymI
	 M3i+M1dJBwiI3dC1g+zlv0VGeKJQIgy27BgXIBd5laKkxGZmmPSxQjXPZxKcABzBF+
	 OpN++7JGmL80fV+4BgbBgcTi+FFVUEZFb8U7J6WMRwRgH3hMRUothFdi9iMEmGJGTy
	 BtSsc3M97K3Uw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BFB11C4345F
	for <ddprobe@lists.linux.dev>; Tue, 30 Apr 2024 07:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171446114277.22874.4049513321330118771.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 707318663f5e2660f82970b3e2a4d14b72befb104b67acf4f9c82c17925e111f
Date: Tue, 30 Apr 2024 07:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714461142
