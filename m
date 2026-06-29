Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49608191
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:18:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782771514; cv=none; b=rhiyTKD/2F1GrSx7SIRMAIM0CT/4d6Hj6Y+SNWZnmTC2K2mhzSE3P/ehyopGpA+RTogS25hJDcfkjP9q6Ivag/Q0Xg3qeqasCEnYp8Su8KsLhR+b/Q6x2nbKDyCbHTy4Z5gHO90OxugghC52XqiX3qMqjzZUexW7ZU7RfDA47go=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782771514; c=relaxed/simple;
	bh=YlWn1gv0/KIqAooDAkcTFOqdMAZTPKeGeLu/XXQ0aog=;
	h=To:Subject:From:Message-Id:Date; b=bp61zWaKx+OFjs7kaTXeP0s1dRpXYhwbNfHZIzKn3XcPsA1yki1+MVUC+5IFBnPNB7XPRdedkYhAMTJLdD1vXZdmZHlk6K0yq3EMo2mqSVHDBe16kk3XzECQ248d2XV4hXzm+8mwKzpiu6ohipAGxPt0dSCklVcB2ctwey99Ya0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dAVFEgbx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dAVFEgbx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA871C19425
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:18:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782771513;
	bh=YlWn1gv0/KIqAooDAkcTFOqdMAZTPKeGeLu/XXQ0aog=;
	h=To:Subject:From:Date:From;
	b=dAVFEgbxv/sTeCfFLYxnyGhnUPkizvU5cWDydmU0Mc/NDIPIbQyI/901lI42M4cGu
	 epjjpZ2UMR4TJI43Ut1HdcRByb/R1NYwEFe4UzV1fPjHjZq6txU998b0FHywfgT+aT
	 Rjb8ba6FUOUET/GZ218R1L3bAa2UUob9Xe8FXefZZxtkZz3bxkgIvn7KCNeY/jI/cx
	 WHfIwJoxYJzNCF8rsa8CKrEcXXHE9kSG+mY2LC1SaqrmUB20DI/+sfjtokqwJk69qG
	 WFrLm87SxUCMLmZjR0mMmJP+yYuS0IFO4pBVele0VXO5RMFTf5Zq7w6fM+ygLt7B0G
	 jSZH7Tq2b9mQg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD3EAC43458
	for <ddprobe@lists.linux.dev>; Mon, 29 Jun 2026 22:18:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178277151368.23088.5850182288371447665.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd1d59a57a64d156ca8b5e90acc584c4b5f4a40cdfd71e091ffafa44666d6a45
Date: Mon, 29 Jun 2026 22:18:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782771513
