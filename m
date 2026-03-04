Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5828A33D51B
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:34:55 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772642095; cv=none; b=boBBAWWPCQESR3gj2bnEULZdhi9OQygXpdmuNMK99VdvvSYmDUwWe1jGMSNLIR/W/3F6jHjZh9CSIv6TM6J5k8UGFrr//rxZ7M2on9yY7lJvHg57wDayGrkJkowX6qu2RZ2PSd0aeH7sPWsrSt3hj3yfurJoujvxgG73f2JN0NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772642095; c=relaxed/simple;
	bh=QcP/sgo1f6fy3MeeGqKzEoLhvtpvbNiYX4o9FMrdzTM=;
	h=To:Subject:From:Message-Id:Date; b=FGTnr9cjs1sbnHedyhZczKm/Gs6kArsZfkE/iFasZRDLQExSQbxFhxZlNaXSd5ZmeGv0vkd+sUNx6YfxfZUkz1Wq7Nu/RBREgdItzp8JZkrE///oN3H/5+pdEEAoO/0KtdHZqHHMsDidr3XuqcD0Ey1Oo5AxiQFjF3rodRP6i/A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RQX5l+GJ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RQX5l+GJ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F0EF6C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772642095;
	bh=QcP/sgo1f6fy3MeeGqKzEoLhvtpvbNiYX4o9FMrdzTM=;
	h=To:Subject:From:Date:From;
	b=RQX5l+GJlrzKPjjQZYPtGrofOdCz7bxSD1HEQU8VMrtlNi8p48hTXiwLqUTvXyQWy
	 dk3/0+/W2Iw6KuEA5czHTSEjr8r3SR/rlKZgCt7uAF6stqR/vkj4hSH7l0uja93EiQ
	 rcxdPDjng4Y6PlGfPlk8eICMAGzqGPBbqtGy0xJ71anwqaTOOUFqBiP6S/KjiMML2E
	 XT7GOqIm2LHXXXZLfFSqCNg1qf/pJkmiMrPJ26HsdFkFuU5uI/2b0qKJllCJcW/3zo
	 rmsZIT9aS8YFGHYmMdwGuCTfcOOqslMbC4qj30SXhbab7EN7qszPAoWM/agt+iAoti
	 AUG+aJo+KFG6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D42F8EF8FFC
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 16:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177264209384.19463.4793692358589864545.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: faf2dcd198ca0bfaf5a7e22c3140d086227c999d1d6d9ae2a511e072687d793c
Date: Wed, 04 Mar 2026 16:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772642093
