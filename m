Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 20D5F169AD2
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:46:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781631994; cv=none; b=sbZ4Yr+YDgaqfUO449hWSHziw/m50hij5RFxAtcIT2KrIorWZiOBKB1kbLTdGJCExDgOtghjeDockH2pM+3DuQStR01+MmrmL2aHJIARas8QKj15wCJ/ZvHWSq6ox6kkaf6dvmlslIat9YB2t328qrZNxv5IAGfkJOnzGZ1hfk0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781631994; c=relaxed/simple;
	bh=WYI/kjkgSUzHIEmRb4MAXmnym+wRwrt0/R94Gg4zzOY=;
	h=To:Subject:From:Message-Id:Date; b=XH0L9+gDKKxz9oXQH7q2+eh7qknCzigv4d+dGxzL9fKinTSHAlfQvEcP/H0BMG43xqdjH2wMzS9Vb2QnEYE+TDlSEumrL/yEuwhFgj9Ga7CRLBnIlsbeD5GjR3LaGpWXtLt0/rV3uM4cdACbIvWGBtdxo2UDqZ05ZnvgFlQ3Cak=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O6S0m4Kp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O6S0m4Kp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C9B11C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:46:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781631993;
	bh=WYI/kjkgSUzHIEmRb4MAXmnym+wRwrt0/R94Gg4zzOY=;
	h=To:Subject:From:Date:From;
	b=O6S0m4KpUcf8Gx5D9K42z1rUkkhzC1nrMkQtlp+zUxSYWR4G/RAbU9OJJPhoVAp/X
	 v8EEYsOZkzaevzOflKxaqUsadDRmUX1J5iQUYr9mP4jXiUfcFAwNwWc5+ljsIGOQZC
	 b7I9brtdQJ2jtYGDqN4H+My6x20zC9o9XuON1TOj25Q7wSOZIE1JLVjx8dd+u7nuYu
	 ukJpBGAboGLKehbiW+nQUOTWMOJdUeslaOID++GqRFHi4f9m3iFPHuOUBPGOHnMJPQ
	 IuBOvkyLFqtIZ6wHZtN0VvRjHIMnWAV6yJ70ljv3/ufj0ot43Yi9WFTQQKo3R1bxFb
	 yf7XtdZt1+tpQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFA8CCD98E1
	for <ddprobe@lists.linux.dev>; Tue, 16 Jun 2026 17:46:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178163199371.3103.328640596225927695.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6c5113af4982cd03d50cb906aaf894b42b0df8a8dc8003e59a498bdfc80c6173
Date: Tue, 16 Jun 2026 17:46:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781631993
