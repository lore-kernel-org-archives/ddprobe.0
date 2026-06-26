Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3DC6039E184
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:47:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782488855; cv=none; b=eSyBOws3+hrnt6COO+QNt8Ez91UKW4RXADhKG7vcWTqDjC99l/qWygzkibtiwWJTHUvu9CfBuTTTFIvjCaoTWzsrBBWAFzNkcG1yfHdVd72ILU+yGJjjl5P/uJvK7R67gNP6OAfjSGM0D7FxM4OGSdfvUIt7w5wXAR0MoTV1FvE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782488855; c=relaxed/simple;
	bh=aC3VCL6TZfD6pM2MyyomYaJYJ5jNLPweCN1+s1fAQcs=;
	h=To:Subject:From:Message-Id:Date; b=dnTo+dC9RSWGKdhh+JQTaXRYb5Cu4FzH8FlIct2dZPPnNAGMkuvS3aW8uXEhHI8R0kIVBFbje4y50O3Ri7KpdFlR0IVXbxbz+k4U4aR8ToSFkbg1DGRQGke8CaAv2c22YGj/FStaejELcisYM4b6mQM6pmZ1WI7ZmwJOAsGK+dc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TEFdk+Ct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TEFdk+Ct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 552DFC19425
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:47:34 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782488854;
	bh=aC3VCL6TZfD6pM2MyyomYaJYJ5jNLPweCN1+s1fAQcs=;
	h=To:Subject:From:Date:From;
	b=TEFdk+Ct9IpI0oTMF7oCWFaADARVP807nrbVK99QwwwXvb7Ft4op7SneZXZo/YWgc
	 prvUjuLpPbd+8RARzutHOcsQ4Zv4zZacdTIbTjzV9FBgJ6aFx/617r/A9euSc6j/U0
	 OiV66feYItiM4Vl2lAvmBlZHM1ZXoMKOXShEQ0t/77zSIqqJddPpSOWmM8Dv+Dia3g
	 cBlshKT586ynT1XBSwodkefcl4VLEGkWTIevX+jiA/+P65zycG2+30wqZNecQdJDHx
	 JuM5zZ1FnXCbzSWoluqpZibG/HKKlMfvXCSrdnFndmJJl041flanaPlGvzETlABu+d
	 zZwQkbCWf3/vQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 07E20C43211
	for <ddprobe@lists.linux.dev>; Fri, 26 Jun 2026 15:47:34 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178248885400.16994.18181796715203390077.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fc17b682533ed2b065e96f7ec5cd8ac871231931e790485efc8b806b24c9e314
Date: Fri, 26 Jun 2026 15:47:34 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782488854
