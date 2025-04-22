Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A5F419F137
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 19:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745351994; cv=none; b=TzE2eUupgxyM7zX9KehmTmP+f63I+L0RLeDdSdXddTWSvw1ej1M4XmNcF0LXhzirndqBIl15yWcF4r+9f6FGNOEyS8evRrj3mkqzKgDE7sNQ47k+hoOvu2IVgxSYP9p+9sLZd2FTfE2R105L88Vm7P0RIwwO7cMDz0VSM0mukj8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745351994; c=relaxed/simple;
	bh=cJzBMsqMn5nJT6iaenX0fm1XghYxbFQBizHzeTy96YQ=;
	h=To:Subject:From:Message-Id:Date; b=gYuaG53Pa2FvTIvCKyK3imocmzoUYuHfKSN/puAiBzzqFHEAI09hrpGMdJ/md0x01/pRLUovaRb4ETqQ0n1hCsF7XujUvhB3B75gWut8ThcshRVuep61qVoYPexgKd8WysWB2/53347xXvIBUjV4ywQnSLJHzo5f4xyHbeqZYRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Cu6B3lIW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Cu6B3lIW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AEF08C4CEE9
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 19:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745351993;
	bh=cJzBMsqMn5nJT6iaenX0fm1XghYxbFQBizHzeTy96YQ=;
	h=To:Subject:From:Date:From;
	b=Cu6B3lIW0YZS8qDbgythXbVBhLu1xZYhvy3QW8JhUHwXkhRvpkK2XzQX246zVsEHr
	 DA4ACEZ3X8/6VvKEFMOzuartOaH9gEFQWsQfLjhcsHzaMSbF/Mgwe6epjJ436yKXy9
	 5AL6oZY1jG8XqMJcLlZ7OytWzcvfVecPBoF6HaRkWbgItNSnDiCbGbe+7UZWqErFPA
	 34L/cWcXfaIOA/pFT7B37MvlHtYE5ftpuBKKeCfkV0D+eJoUQL22jm2hcPcB6MNLKO
	 kJYspOUb84+mqBbvSIhuGbe+Absd7JZS9988O43laP/Vce9vnxuYNOMGYuVB6Yvv20
	 TEY0jFTeaGfNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FB89C369C2
	for <ddprobe@lists.linux.dev>; Tue, 22 Apr 2025 19:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174535199364.30911.4951137856177153383.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a20c66c70122c6c6a43394d96364c5db8fad2497f6d24da3020cec3f2a99b74a
Date: Tue, 22 Apr 2025 19:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745351993
