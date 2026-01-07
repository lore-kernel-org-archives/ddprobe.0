Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F014432694A
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767783234; cv=none; b=fifxqjwM6GIYSiFMO9R72z+1RF1+GRLYm2ByvR39tznuiUBHa6S6PCuOLANe1qzZgJFwRmGHGWq9mFVNyyhZGP+wKTyHektOLhBPpRKMXjKDjoIYpyhBZQHo9Ze648aYdc9neZdYmVnnzKUn+Litw8FdcqVkViozwsCluaIM3fU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767783234; c=relaxed/simple;
	bh=TOjJOpumzHcrgqmBA3IESzBFfDmg2B/1Bnquan7yAHg=;
	h=To:Subject:From:Message-Id:Date; b=Xy0o2erdYcBNwJhJcPLVb+2uON5SKYe16FdMKyzrT+zpRBDuGBGR1cLWuPlI7lZA9JdzzUg0kMV/FmcJCCBM/k7DOM6CBr9G/o1WfraSU7YLdPc9BTlmoC27ZekGFX7mNgKOt7wsmaJX6+5cZQQuTnAntEZJLPozfGOAVILsNeg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X3q3fO0m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X3q3fO0m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9BD69C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767783233;
	bh=TOjJOpumzHcrgqmBA3IESzBFfDmg2B/1Bnquan7yAHg=;
	h=To:Subject:From:Date:From;
	b=X3q3fO0mIIHWxrcwUAyffayvKU9FiGzEYsX4XN4mUyVP9sF4Cj/epOkOAq61GwQGc
	 9SKrQ4gp7B1KIvy35H8PdwgudW+CR627UWGjM0hqhnQQaj5u/wUftMURXRSh753LAr
	 CvcdrGilrbvhpmO//danr/bNgW8nKyheLrU19KWVF/U/6nR4bhxv9JjERZhcUr6NML
	 gPlfvGFQldr+/h+tYYHIn75XDwr8BVK/tux6jMgDdd5TBpCU1ispgtr3RwDfoPKxJE
	 rw0HaAuJiM/NRo6mJCvmTXThUlJDLOgewOg/j6QkAHTVinpPd+ZArb76aHX+ebdKur
	 bhz0nSHrUSW0g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8ECBFCD583B
	for <ddprobe@lists.linux.dev>; Wed,  7 Jan 2026 10:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176778323357.3408.11513242206824532393.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dff84e0e1cf6bc6474883b3a7fdb3c858f328defab9f7c662a3ddb4e2a1956bc
Date: Wed, 07 Jan 2026 10:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767783233
