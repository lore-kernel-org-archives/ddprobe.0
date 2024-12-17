Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 249471F3D47
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 13:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734443754; cv=none; b=ABuLTnfz5YVDBjOoSJSNFY146bwAsTfJlJT28qoNyROW5FzigeYFltuLX+QyauO054GJQ1Y01YK2nAagAJtCfNd33y7x/Wv4SPtJ46+1T/YAwuxthIMreUiosPOqdFD/7c/EhLykJdphV1f3CgFhf8AlnBxyiyVrtcP6BmmL8/c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734443754; c=relaxed/simple;
	bh=bMHfWO+0OJOJ6JrdRw9P7CAztWhswdETt7iIUdswLag=;
	h=To:Subject:From:Message-Id:Date; b=S/Nm+OHvLJqD8ION/ysn8ZH3l+RZUEi/GsvsJ1fHqjTyBa/dTJa5rUNt1lfvnvZ/2Do1q/tgNFC5xvZPDMN8kZgIpFh9g2ycyrpwpORKXHOrHWWf+mwyuMXUdLtXRB3VQwtPZ+NuHapWx3BPuZ759g1qTwX4iE8NjdcIA5+dirc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fG57brXw; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fG57brXw"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B30C4CED3
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 13:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734443753;
	bh=bMHfWO+0OJOJ6JrdRw9P7CAztWhswdETt7iIUdswLag=;
	h=To:Subject:From:Date:From;
	b=fG57brXwklGQnWdDCz3f5d+r4md8rtx5q9TXL+oMmmDnsctxCrJ2pjUJ33i0pufj8
	 W0VGegkKI/TK1HslUwf3fedWBLeI9EK8T9kEOKg5csu29isjCW8C1RApTQqBtSn6yK
	 emiKbAAK5O0CI7bF6AodF6HT+M51ifRJec8GlgzaI0+GIuoZGRsyCulkOvZ3mYydKi
	 xREjqRZjbgpeZxZw3cNMkZ3ndgvoi16j4osMKMtNKkcS2Oc0o1PRYoM9Q1GfmYMdHj
	 ni2I2NDT+TjufS/W9cC91EHgeGL0M1PnZHYO8ZDKc/Ckvf9XjFaOKezsutY5In87TU
	 bsf5RVkCW76rw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91837E7717F
	for <ddprobe@lists.linux.dev>; Tue, 17 Dec 2024 13:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173444375358.28226.2086471976638491843.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ede1363e05d57e92904bdc573db1e984588c1f05f2e3b5225df5f478c81a4a89
Date: Tue, 17 Dec 2024 13:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734443753
