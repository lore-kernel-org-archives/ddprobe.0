Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 483071C8615
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743186595; cv=none; b=o0JwShC59dvlk69apK3nh7owaoO3o2eFMpl6up+Pk6e+vS+/MWggckpxdh3A/xMr1wM1BEPrYBHSuCkh3I8nNPwSmWyJFxyfAgUGZsU+uLVlXoVyOKige1pwzwcGJXbsrvzdbR9rc2BpMkNiVGFvYEXAFunkCXTX3nPautwg9M0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743186595; c=relaxed/simple;
	bh=H7qCiwl8IICmnMQR1AzOEAHARil7Xq+rdcGuPaGxyQ4=;
	h=To:Subject:From:Message-Id:Date; b=SeehAyo6v7ollHW00ksltKrhA8U+ZsTMF79EMFcufP57XS4WS+qWjJqBxXaGogQFHrfWVRa/PeAg/Pw16U3O3FUs7K5fjds37frmOmdfLC608Azda+vmSBhBFPJoMGn0tSPunwQgpTz9V8J/8108QZgYG4J7WZo9UxYwsIrIYv0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ucM8H3zM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ucM8H3zM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E9CC4CEE4
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743186593;
	bh=H7qCiwl8IICmnMQR1AzOEAHARil7Xq+rdcGuPaGxyQ4=;
	h=To:Subject:From:Date:From;
	b=ucM8H3zMjDTt46b7dApBP9puB7HbmvKSkKqoxcsAHe9BzkY/y3MkiVzm04Kc/6d/E
	 Jz6iiDLP6aWk96IBU65m6k91uWXI5sspGxWTqK2uzR7UcNmkdCneupwp6H6QwI10Q0
	 I+A1JSR6Iov4FJLZU9aVVxfpGi01dZfW0diFOBusOfUWC39dDp2USrEi8C0VWu2jGr
	 OlZ6nzTr6jPFnQwGjOJa3wt/BfdTG7I1DGDx88aZDMcdyKkbWMMMbdeb1DmrdWKT19
	 mpxK/6Gh5nTF2exVMtVi2VURGmztSQKdgAQJzo2mH8w2A1d7wThSuRhcxWIM6uwHWP
	 +exWVClr5w+fA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A2879C28B20
	for <ddprobe@lists.linux.dev>; Fri, 28 Mar 2025 18:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174318659365.16221.9740245291826409002.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 74553cd0ff3832a6948e4a1a3a9d014353ca1fcfd262386391660f87fffac587
Date: Fri, 28 Mar 2025 18:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743186593
