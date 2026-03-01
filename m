Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A8C720E702
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772327694; cv=none; b=JSJp+SBBnWr2Ogud5JfoUPzWG9Me06wS4+Xo5JlXRtqGFLVMYfsRdJF2bOY7mYNuEpbXxJ7ZZnlRV80CsQ9dj+6TidQ8VC6bUUIkVF0kS6VGt1XGEaqhH7nxkObhH5OxiWXtB7jWRuDU9LT1YDxN8QECKtclms2xKAFIwF4zWho=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772327694; c=relaxed/simple;
	bh=Jkzx4BadFFViGNreV2m36wuu766sbXRmEPwOvwtpfFY=;
	h=To:Subject:From:Message-Id:Date; b=L7I4RbjbHB8pmFqZu6sGik10kR6sWkw84v3/l+PvB42iDVnExbUXWLvzNLzBctC/j/ZimCos/CP7N6n2SOvO/QmJOfhgeKmvGzaQJSxK7TmVNMW4pGBbAH1uhtD0EX11Cty01REXc4DTPGuOh2KQSwuLiFwNZq/YRjRuEcf4OP8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rSjwnDxT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rSjwnDxT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A914BC19421
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772327693;
	bh=Jkzx4BadFFViGNreV2m36wuu766sbXRmEPwOvwtpfFY=;
	h=To:Subject:From:Date:From;
	b=rSjwnDxT3zTnTZ/PDH4R/dOIPqdNzKstgC97B38auEPeu2FWWDaTk0hgMEl/gMuFQ
	 OU7tiQYlMt3Ze0IO5eWSrWBNZPHtYFhf1pz9/UvhmY1ryIwtviIbvPoOQlOQSGbQnH
	 tmOyLkAd5DGcD6xU8/wFSc3xYdc5tb4uIzXLqwsrqxCFatwJ7JXlVBGVAOn2nZqnwj
	 3/KZVHvblXhdhuNQ4QEF40BJ+/aSaGLhGGJ7it20z9tVPhjfxcxKBchDBJKiGCIQ+J
	 uYC/tTqYH7yw8GZp/uMedzPAA2TFDSagHz5nhrR019UwUhPuMhL28f3OM5K6sjv7Of
	 WHOSEfDtvIHtA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98EAAFD0049
	for <ddprobe@lists.linux.dev>; Sun,  1 Mar 2026 01:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177232769358.7661.1115945927376323820.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 53e1a3549a1ae199d5abe29139d613d7be311669edf13258e67de2f30d564a2e
Date: Sun, 01 Mar 2026 01:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772327693
