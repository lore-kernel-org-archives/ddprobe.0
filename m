Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E474D24E4C3
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:45:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775177134; cv=none; b=KWLvDpsMYQkCIvPSlrFHLgSwPhkaGjMI9aK8USUMtUJ+RsLKmsHgh//RFU41eCPmG/GHM8apiS64YCxYlTn4nVSyi7wG8xnRLfj9tYdwlqpqvBAiAJ7APoSIt2T2edJc7QbyEM7gtjRDexiP7avtE2poJo0TV6skKSA+S6XYjjs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775177134; c=relaxed/simple;
	bh=J0ke98UieuwUTM0QkTOAqGDblzgUbkKJZI8HwGeZlbk=;
	h=To:Subject:From:Message-Id:Date; b=Vd1cQq2Tq8LfFyR/KF0q7qoNT2QWnYs7Qm2HjO2zQmY0PprF2h516vSS8rILAnp5FQbWK667P8mipnoUhTeNKLiii6f2SUQlM49UdunbMadB9oJvwAgEmEQceAO5yuRN1K8P/y3TzUu2xWNEXY/fDLU3xv//ADdFW9P9h+wd5bU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FxUfDQD5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FxUfDQD5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB527C116C6
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:45:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775177133;
	bh=J0ke98UieuwUTM0QkTOAqGDblzgUbkKJZI8HwGeZlbk=;
	h=To:Subject:From:Date:From;
	b=FxUfDQD5Jh3YIReqL6xb1qj8MoyjLsELokD2pd35jeeZvg8qqElpO6wOH/VN4yhIU
	 XMgUh9pXyshOZlNBlSjLLpzZ+E0Xd/9m2Og8XmxD2SxtlciJSrHsWE4so7DZTO0srM
	 xmrjRDjk+l/WBP4hjJxi2M7HY8epYnallSeqQcGtAAVje9GdemYi+s3SlpnhmWdCAr
	 37OIPl3PEbpcgleMvvm3LONHvD28E6HOZ0RXiBLB1cPk3vh7wxacwjcFJ6gC7vhRfp
	 diFN8ue+TEz3FNoCKFVlhcq6UJ3dIhpgYAQ3q98FgE2PbYchO5qIb/GHXHpy/dkX8S
	 LcVobbFrnUc8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABDB9D6AB1B
	for <ddprobe@lists.linux.dev>; Fri,  3 Apr 2026 00:45:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177517713369.28173.11313871274139952439.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50a902bc7aead38dbfd71cae1e3f0f947b0c8c997aa28e9796d68aea4d5f1cce
Date: Fri, 03 Apr 2026 00:45:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775177133
