Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D76C96BB5B
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768032833; cv=none; b=uq3pToAFh9qXFTpwUFhaUslPT9ikIJUJ1MTHcvVgvJzThx0Pew+34wxoeQAj5VgIDZiC03AM793DfL6R/WMhvnauLUc8yfo/LTnAmDB63vmUAz61/ykUxBgC+fj+Nt7AllZ0BeqMTA/WVMsUaLF2EGXEz6twWC2RQ0nnsAqMtD0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768032833; c=relaxed/simple;
	bh=pjPBnjexjoyoNa2YsUQHujb95+hrY71+GjZsh12w55k=;
	h=To:Subject:From:Message-Id:Date; b=Vr0h3yr/PXUKhXEvWnxNR4uVf6BCn77Q/srJk3s7luJcjb1DK1RNo9wf8Mbl0ZjZJTH8xhV5cwoy/2+RZ6mz2OxHrZ9gpBP9/pwZw4CT7/BIWtIsV1Xk9MNUxdn+ZxT8k4xQO79RvuX2NMmTO921gq2pZa75P1C0xpIpF2bXTxI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BAXKsgxN; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BAXKsgxN"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9787C4CEF1
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768032833;
	bh=pjPBnjexjoyoNa2YsUQHujb95+hrY71+GjZsh12w55k=;
	h=To:Subject:From:Date:From;
	b=BAXKsgxNuL/v4SOzUN8d+fGqgiHTXmLqKODuZUIbgGGX8lCw7I9YhvVeUKYNXEbmP
	 Kul9q5r/BuWlVXy3ITN8vMg0+QITCliXa3jVUIWXtSrxryBcojrO7uFgF/aHZONAMw
	 VjPAJGGv14qHSL8KUDTeVFrDtzvEgCnn8gyL3AbldwkVhf3ECTTRSMVfXd/0fiPcfV
	 TF6bNixU5Jgx6C1xHsMVjlYOmuvCVFx/veiMjAprhZtQ8y5QsX5fNsOXpNgV7Uz9K9
	 a4qUdaALQDFt1ODdxnzWdQCJN26rMvLkP3UydP2hFmLHs4+wrinPHF5YY1uUiGJ6k/
	 rltsI5wJjvmhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9563AD277CA
	for <ddprobe@lists.linux.dev>; Sat, 10 Jan 2026 08:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176803283358.28680.7247422572765605323.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 61431f711b894b939fdc1311376f56ba2de167bc18878a7fa45ef62e09f72be0
Date: Sat, 10 Jan 2026 08:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768032833
