Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1D59E305E2E
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:13:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770660834; cv=none; b=f3Y1LnTBtMilCz/H0EJlme3jNO4CwnermAYiAZ/iFUNNRiWFRXb5DKRZVHkide4rc9HVYrQxw/4P1haCp8evDp06SOrzCcywaqiwBvWvdl+DCwI2sNS9qcapEAIelm+XW7usnBVbDKtCWiXZsU+eBqA0FipMr1aIhP0uRIrUVpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770660834; c=relaxed/simple;
	bh=Lad26umMLBf3f6nFqlY11InTNv1JlXVOTlTfmTkTqRQ=;
	h=To:Subject:From:Message-Id:Date; b=CHMIj4mnTsX4AKpZ2C+2oN2iF39AE92LJQd9dM5T+VMlyQLWMEIDkv9s6Hh9fv5hX/7+avWR0LgynLV2sb7/xuC018Ehtr0Jamd7o2a1ULTxa6goKayhfKXtTlMBjT+KdjGmLqzPUaP4okH3Rcjd0sT5wNEphV9Lu360DiRJ2M0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M+4b9lOy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M+4b9lOy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6128C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:13:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770660833;
	bh=Lad26umMLBf3f6nFqlY11InTNv1JlXVOTlTfmTkTqRQ=;
	h=To:Subject:From:Date:From;
	b=M+4b9lOyqA5OdwQz6oEUHgi4t9opLPHK1uzEMcN1/7YIgsKdY1lpgEK6eFrV846fQ
	 9VsEHPwVfYGr9wQAI0ghRu0HRqU1s+ixAgS9jJMsGoCz1xAeBZkIbIKcqBuzMU+HTc
	 1986bYEXbQOzgeB2V5FFLKzMm2nHPtwAa0lwwWmkgTINCBchJ2iTP16IJHxW9insGG
	 cBQGEm0QHOzVIjtlftQSdjbPw4cL4ofa7RQmFGWT4A6CTdXPfu1Cz5crPDyJpV24LP
	 8kZ7+PH2wMGVoCSAfpp3PU37Bptqtkk7o5cBSR0PjPfFTwZL8jn0Gv+dOx3EgvPzzE
	 F5j/ySgG44Npg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D4E7E0D0
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 18:13:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066083358.12991.6106549309653952549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c997912c6629ccd797b23aeabfb6fb7631ee52f82698a23382b2d56248f2e4cc
Date: Mon, 09 Feb 2026 18:13:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770660833
