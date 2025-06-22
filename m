Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 255D05258
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750613994; cv=none; b=Jzfd1vGekoyWTgq9j6ILet46DOZQBE5rpFh8y2h3q6clsLD5I7YeJO3YKtOk1TjdjGH2vYBHR3MZQO8jjUqz2Mkndcfeu2b805WYQGtOfCHlpXuKuQcCok87kEGAPUy8MI4i9LrDbWmPZthOWJIIaepO+iGv/+NwAY9bi5h/qG4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750613994; c=relaxed/simple;
	bh=SKajUINOTuzJVe7CurDr2+phHkeiTSWy4R68mF4/81E=;
	h=To:Subject:From:Message-Id:Date; b=JwBep9BmkviAGXN3svD//YTfGiPTqBMsXgownAhE6ti+SW0qocLYodbqcWgPtz8Vue7d5qe64dzVEU8y+WPyjomY5YXDX6JOw92nMU9/+SPRqfOZ8ERW4hMeg5h9IE0YEseGZBaM70hibfD8vDj/jZstoLY82eHbygDu7InKJtw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=au6m1Zmj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="au6m1Zmj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BE0C4CEE3
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750613993;
	bh=SKajUINOTuzJVe7CurDr2+phHkeiTSWy4R68mF4/81E=;
	h=To:Subject:From:Date:From;
	b=au6m1Zmjm40kxdEeGeUshM5KuWAYGyYAJnxnVe3Z/nISowBF8FNHatz0TIetnqneL
	 8AlJGpGvGlY4Z/Qny7g5k9S+e2UvEWGsH1qFCAogq8pO3Gy8VupJWfYilUKUBhVQ9s
	 Op+CbDQAZrHYk7n4nTWvufq+L1Kc85xAiMF2bSGeeYTIjbs+W198FnCxtFs2r+JDa2
	 bvd477eHYnaRtPB+FkH/zl2Pyd/JUYW8SRKtzCY24x5L5l1S94jHJdHzUOazStQR0M
	 oluthDnyQklJW78LJj9lbyvaoBAJZIJrtGMvI8ixlvml5k/ddcm3l8LAx9jkBrFUOA
	 3zPIqjFRWpjIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95E9DC7115D
	for <ddprobe@lists.linux.dev>; Sun, 22 Jun 2025 17:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175061399357.5430.8388535606573024346.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8490ee4360fdc71828b5e10388c22a8a000eb3e3b992c9ee06a46f38df393019
Date: Sun, 22 Jun 2025 17:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750613993
