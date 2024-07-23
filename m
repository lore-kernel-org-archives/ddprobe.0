Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30FDF61FE1
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721708154; cv=none; b=pN7VUA9Si3Yh/Kpasau0nbkeNM090QE/f0PxpqSL9Z8+UApzH6ipLWk4MtvnnkvhOE+AGTDRHW0PN92d5sQ+y/6kSqWzSWUCIHYb7fTaZkA4vgKo/MXl45hXpd7F1Q1MVdy6/8sfxRTnEwWyN8oxL/6iTDCr91a1BJuX8EQakTo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721708154; c=relaxed/simple;
	bh=y6cqt9XBMgyq1w1B3UThz527+JSKUs7iBg0Blqv9rM4=;
	h=To:Subject:From:Message-Id:Date; b=dz2/Fn5bd6L/NvXKKsFZ+czKcGd/9e7Jx+V6ohqf1XnZCP/Iw2kBsG9+SvNSIBN/g8XjENEAIecukM2pOuhzN/kU12mJ0Ew8gWzML1qXvEjT2IOCKGz8fRThhnvnRjjtE8GL5NAThFyVgAhnEXXoYjGWxMMlievK5crCwkjpSEw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=prYN3lLk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="prYN3lLk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AE5B8C4AF09
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721708153;
	bh=y6cqt9XBMgyq1w1B3UThz527+JSKUs7iBg0Blqv9rM4=;
	h=To:Subject:From:Date:From;
	b=prYN3lLk6Hjr8sEzxgjZ8CtLJJVS4dN3qnIFT1aqmTGbg+yaKon8nKTAXgGRXHLxS
	 tuUTN0ImXdXedsRY3b32Xnkadz8jmpzBzlIUGOld3jvNzuAcKtGBjFx0K0y696TDTk
	 uFyV5uAee+OQQJaq6qTfEpdALIC1yi7imrBJuM7zUyKNtBl+G5FAVCzxgDhIEdVrhX
	 AykD9TAGExIFl0ZYGlLj7uk3HgqAU/nnUtvwdyzmpG6nFq/NKr/uMzp+q2hVCrF41v
	 fsdQPfBZsrB66cm/hknlsy0CDQekMKlaXJnIMyRsS+URcE+7Hw/cZNUv5dkebnOr5u
	 mm8gkiSMc/nAA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B8FAC3DA7F
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172170815361.20507.5869219690217180036.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 458c93ad670df90774402368a13a7324ee0f433085bff77e5ef855ed7f9fa845
Date: Tue, 23 Jul 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721708153
