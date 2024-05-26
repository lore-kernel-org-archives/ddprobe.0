Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6A5E21386D1
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716755063; cv=none; b=XYEOVtotg77PmhmncjvjYbquey3c6AEggYcmQHyGx07ZlSlYfxXxqQomKMkKZzrGGAtKNYvoTPwGiCtmzBOemggQPh/t7ZE+cImHxdDxUO7SCYyJQ4VlI+3rWV2cM10VQFiD0x4zuWYQeHsNy6GHlqMExtReQ9pIXB61nbdkePQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716755063; c=relaxed/simple;
	bh=z/DTfn++sorLbYAcjTpVzk6tz3wHaFzEhu94H18MIOg=;
	h=To:Subject:From:Message-Id:Date; b=V9xGZFQNJ1aXBapxr4bqqRQkqnb0G2ZWbUtEjC5d85yWSFxj1iVdEFrLucOuF1LTOMhuErF5oXU1Xq4RLcFraIj+umFQDCq9kVUgtXlRcMDHsiN54YmZNR6UvYII2ic77oBYxj2OOqlwC+Jr95JrCmjNVCTwLz6vrVNVMeFYIJA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VimGv1BD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VimGv1BD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB6E5C2BD10
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716755062;
	bh=z/DTfn++sorLbYAcjTpVzk6tz3wHaFzEhu94H18MIOg=;
	h=To:Subject:From:Date:From;
	b=VimGv1BDMVzhY/8ayNaB2ZNH9rkaVUEUXDTkQlUU3GskYz/bYhESECyKtdhQfUvAj
	 GvbvYFuXD/skZEcBMWsqYJ85KOy9A6i6ivnD5Zk5hhKLuEvhNp+Oz9U7tf1hal3qu6
	 EQ1cNryFVFzeR7nPsVlmvvjUlilZh8T1Hy1/HTRjS374fx+/JQouKIjknOf27Qc3Vj
	 JbFIkk+MzWHtqJZK17u90TrpooQHNiYMuZro45r3QEePKm32HGETtTp33iDps0cG7w
	 pFsmHZ35hTUD/0XPHOq8qTDPpbqQ6gbb1NOyUee4OSCXdltjTCFtZHyH60xtq1iybf
	 vlBXw/teOZQ2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5C89C25B75
	for <ddprobe@lists.linux.dev>; Sun, 26 May 2024 20:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171675506276.7747.17530740733034233549.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 67a683e5209cf825c237e73b9db300af67be78acf94076eaffee3437cc0fbe58
Date: Sun, 26 May 2024 20:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716755062
