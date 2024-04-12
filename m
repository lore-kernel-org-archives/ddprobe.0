Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ECAE310F4
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 23:39:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1712965163; cv=none; b=AJ37+ZCuoh25ASjF9xi51jYpaoUpxBRcYVylXaIDqUWmLX1TDTdgM3S/Y/gBZrEHlWyulbaPiJDjCoY7elMbRRWl8uiajGudaZoVLZ7V1xK8Jgc9cpOcKe9Akc2tSx4g0+9KsTupLwvG8Hc+Ib+F2cl3N279+KBsZG4ulu/E4fg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1712965163; c=relaxed/simple;
	bh=yWGTvCWxBa1/HH/5CUjjGzMOS1VCsys003ODZOxsEe0=;
	h=To:Subject:From:Message-Id:Date; b=OizTx6CyVVPjzRE0R6tGM1gjt0ixK4zn7pVHU45Cb/mJOnO/mpRpn8KrVmjWzCeksnbEzQcUnLVepNByuL0kXsXWj7gtbck2wDHEpJYuHVa9bNQR/9USETpqSr921jsBzz5KlhjrYZOzDSDw31p9JXPHFN6WKxE5SNaXVbVOJzI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cf+/wOEG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cf+/wOEG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEAC0C113CC
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 23:39:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1712965162;
	bh=yWGTvCWxBa1/HH/5CUjjGzMOS1VCsys003ODZOxsEe0=;
	h=To:Subject:From:Date:From;
	b=cf+/wOEGA/17XaCSaQ93zhRIFML32rWRsF34uNChT8aMhvysQfhfAJZVqx3OloBus
	 EkqOyAGZ5rsJDy+V/gIPRgt+DYYzwyOWM8C/Y0Vrm5ye70MglMaGZBKupo2mX4XcTm
	 2UN4+NfI7ziRvilNqspSB4Orr6y6+iKG/MeIUqboGZrN0HT3CADeNCamk/LdGXIxE+
	 yfopdoqw6u3SDGcz3xIi2w6aLp5quK4TJoUDzRS4+Kzs2z7jKECImoSumNiSA8v+Uf
	 l7in0+c09+2LrvP1zbL/xw49OfUZkusACWwAj1qQqUo7C4GjYoAKSTSNOJ9wjrZ9RI
	 hIrwc6NpuUqsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B9B6DC4345F
	for <ddprobe@lists.linux.dev>; Fri, 12 Apr 2024 23:39:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171296516275.26948.6358040890396217865.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 284c1ad104a696c014b2738bcc1bda5220e46dd98a78f1a681159704d7d84731
Date: Fri, 12 Apr 2024 23:39:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1712965162
