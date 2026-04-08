Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 06312224B04
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:35:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775640934; cv=none; b=i6KGIAXq4pfgka0pCEB+3Ua2oL6KPIC/Y02k+XW7s1ZuScL2ra5AvdN6mNFndzAF1hfQukW5PrTAuxkMrAYpZVdiAdjcl1wvCZyBDwbO/xl80z1NWc3NUPowLj/tX6UWUkN3iPz9t/NkmLaCSbvIDttbxoZYvV+xUI7QxmXUgBc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775640934; c=relaxed/simple;
	bh=7GRs4ib25nB5rxHDP/hIfzVBGNgLLeuY53FTEBlgMAg=;
	h=To:Subject:From:Message-Id:Date; b=p5MvAe2rvPo1VJDl+U4pWCqW0MtWLpFtqmx+2aorLtEijqmngXbLBsUe0su4QyF9CcveoMkDlJA9kccEP5lGtgCE29AHgJmzI7TVdD8thh46toarrgLa4lLArSTtXaUSq/77H9YySlM+CYl8yh4O4DyyMIg4XiTV3jb+zGhRUCU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gMUezk11; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gMUezk11"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA389C19421
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775640933;
	bh=7GRs4ib25nB5rxHDP/hIfzVBGNgLLeuY53FTEBlgMAg=;
	h=To:Subject:From:Date:From;
	b=gMUezk11HRkgp+fx+YkN5S/TTAtz5bTvl/dN/mllYuybbeNJ7ZYfBCZpwg4aazPP0
	 XBqITetO1EBR/grHGJ13At8+ZWhrv9Zw054BE5IyB+03q56+2LYOau6VeHR1E58dxN
	 5QGs75K43L9pQiACGX69Q6ka2DBFuOqu8CkV/2WFPQPRx8c7Mh/cgLC3JyUJuXUqTx
	 fVDEHPXw0E44EIsQ3srrsq3WTdHX/MQityjQ+uhfU8XoC09TsZ0+cynqpRIwPyjTgk
	 ZlR1eiyUrwV1hwpq9F3QkqvclkkZdc5Xzdem53j3FzgeZ7RFNNNYIpAxDKseRDfspB
	 M5wgwV+c/kJjw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA13C105D9AD
	for <ddprobe@lists.linux.dev>; Wed,  8 Apr 2026 09:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177564093368.15800.10966039428983928543.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a3a509b5ebba93a9b7d9bd56d66d4907869bbe4deef9e385d180bb44933229df
Date: Wed, 08 Apr 2026 09:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775640933
