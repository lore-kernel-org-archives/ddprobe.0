Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A3D5358389
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787286034; cv=none; b=ewqZCzH7u+mOcq/K8/dXbhj/gjt35/BV3ouV9Jc9DaAKJeQ5lbFKF6IgDJmI8ne7WqS+nMTB9DJKnxQsifB6CKr+Di9M9WY3sl5jH1PP2IeU2un7H2afJjAVhKq9Y2ZneMQCapcm0mL2KlGn+Khyj68y45+epAW1WSQ645j/YFA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787286034; c=relaxed/simple;
	bh=pxdBF1jiy5TCpe219r4ddZWYdsjgfioG09tZVYm4SsE=;
	h=To:Subject:From:Message-Id:Date; b=Of7amhtOEvpwq/2XfqaZvt0q8OJmlUD5sTZDAXfDSW4+ALJRCwHZNN78FG3r/ZcUxYHoUgKz97kSjtHhLW6xsrS4yogHQr46XuflCppWbQDNqbOrSuFVRy8YTyUXpytf/BScS8+y7gNH6+h2fciM6RopDpMJXZOLjJ5tyYcx8F0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HS8gLi+/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HS8gLi+/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E980CC2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787286033;
	bh=pxdBF1jiy5TCpe219r4ddZWYdsjgfioG09tZVYm4SsE=;
	h=To:Subject:From:Date:From;
	b=HS8gLi+/HqCLhFQNL9OV9SECTixLq44CknOIjMZi1TAfzmkXSt57AjwflF0KsE4y4
	 t2Zc694ljLYBLQVMR1Yl+14jAwt7GZiUPCzSfH4st9YxbA/BFW7ao/DHuWB4oAJs9j
	 hKtMSz4SpdGd7miEG4E4FzSxDWedjA0kbIrqCQ8Kqy79usMZ1r6hBptsXacLNQ9WML
	 WSQ/qRS3HGKhdT6Mvr6yf6tbD2z7eWudwHQUSyUslfG4UrKYGCTGc/qOmb8XGPQ52s
	 BvNZgIWXsgdmvPCA+Ih9nLWWdSqo0xUbFueTb4FrobatXaGEle4JhQ+PtlLMoAY3om
	 mj3qDk9Q+492w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C0A82C5DF88
	for <ddprobe@lists.linux.dev>; Fri, 21 Aug 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178728603375.20424.7955244888103090591.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab1fed4af099235609b95882e876d76ac72e5d9cd6ca00fe70d4ef2916f04fc3
Date: Fri, 21 Aug 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787286033
