Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 40AF93101C0
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:26:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782174394; cv=none; b=fMewl6VxEFzcA3LU1GKYddOgkZ+At0/qJsOvWUSkvofDbUUOLbwB91OYB3wS/6BZFSRrvfwvYFvav0tmn5qMk8inyLYaLcltqRqsRZ8L4LvOiD4rJfw+SfrVD1xjlBzC3mOvkVdWO3qdZeWFsWWgbMTgN2aIuqZX+udd1nNBLcU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782174394; c=relaxed/simple;
	bh=OUi2LsRx/nIjDFWoKoST3OxgLmGWqF32UTNKIQfJV/E=;
	h=To:Subject:From:Message-Id:Date; b=kMAONeTQNuzg/s5aqjYVi5dr9ja6zqScLchbhysWjyuTKZb7192sqPJm7xnfF4gu/lGNrQhZimXd5OpUN31E9P8yVGe8DEuSzWsXpykliVLVCnNEkwoVK/ohKHKOfBqfEHPDTtPaEStDBtV48JCMY6cxaa0WYUNBSbnvjkNj9Xg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DrXx7vWl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DrXx7vWl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8002C2BCB4
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:26:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782174393;
	bh=OUi2LsRx/nIjDFWoKoST3OxgLmGWqF32UTNKIQfJV/E=;
	h=To:Subject:From:Date:From;
	b=DrXx7vWlTBp96z22EZ/4Uj0a7RthK9Ndey5NQKtYNtACw1YOpPPGicgwWcGIYXxy2
	 KvHLicRd6tNjBx2QOVar8IgWQHMWB2pwyJmJo3in9kjlxeKQF5hdwx9yZ7+p2wBbma
	 XxfXdS6rOOxQddaNZg90RheNL3Wwkiwf76KJiRjGvQBZVqIjIs+oP9v+SjpdStMr3E
	 LFOSOJrmGVos8bRC7nclf6DWtqtj7beA9WWzEvWEBlbWcGA6wIRm2kpkU+W75vnvo7
	 m3y5Ds5J7KNXv0CO3ebvgXpCtEByLPHfZ+qJJ6bcLkAC+h5J2mLXiuVoIYK7oWgxnC
	 C+50fUEOnat1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA5B2CDB466
	for <ddprobe@lists.linux.dev>; Tue, 23 Jun 2026 00:26:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178217439368.13860.22720448579216891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 786e48c57a5a38a8200b3ea493fcf5da67525d90abfab6b386f76eb252d4862b
Date: Tue, 23 Jun 2026 00:26:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782174393
