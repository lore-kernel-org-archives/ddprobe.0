Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5B97C308F32
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1785567634; cv=none; b=TQ5j04tk2ZKR54r07ur/e7js3fh0sH4JMTXGUlcx+Gtb3xTCzKQvBD+hQ6WGdgQSaleby4moB65gJFjDVSajeIHnXpqKVWP8/Rc3cFN4y+Gorkcf0sxoUS28jmb/t5gJXVEKN67hHgw7WwZy8uI5ltrlK1q1yq7xkYSrI9ZT8Qc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1785567634; c=relaxed/simple;
	bh=wUCYgarbdP4wspR0ZGWbqXMPWnqQ6e7GzHFH4JLWREY=;
	h=To:Subject:From:Message-Id:Date; b=UnhSqBU1cPvqu6acCR/7QxXNmFPQwn9jlEEwCfUJR9/DB3SIlPN37f6P6UEpSMcZe4S9q8bF6KzzhmATA+/IBQdFu8RX/8gT7EXty5i7+hqkoa38K5gnP2Wwdf0HPqz0K7VoSNJOKmOAsOJ1GHyCFcqtdQ+gr9sDh22eaBEuiJY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n8PS/cS/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n8PS/cS/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D921BC2BCB3
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1785567633;
	bh=wUCYgarbdP4wspR0ZGWbqXMPWnqQ6e7GzHFH4JLWREY=;
	h=To:Subject:From:Date:From;
	b=n8PS/cS/RI7GDBadWaGNmbLyL2GFZA7NlunDHvPZ40WsJ/kwJe2VUDUsNFblnz528
	 vx/JpRcNX6oi3Nv87YKoX2u3V4fBPXCW9oS0OwKH2MCmyGAAlyf2CjBFP7raUtjjbb
	 xlas14CgZJ4cXEZrTbb7ircHz8lcNfIRq8PX4LOzq432ry6Fk+a7So76ukvvPcA7Yr
	 TqhF9ETZsM2qysF45xKimt928eR9RG7FEOS2JItvFp0wXd95JxXP5fsxvXTeQfysFI
	 lZn6fLvfTC+D5EXdnpZ6wXI9cOxh0ZiebFxTdkA/GwVYnpmeNOK5B6rdofOiOpW09E
	 HVgheyd7FgdVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B580DC54FCD
	for <ddprobe@lists.linux.dev>; Sat,  1 Aug 2026 07:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178556763371.18334.328804548715028214.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e9362293947437a0c4867ab576fe7d8a0ad6165cfe2dcc3a7d3f248f4fddaf1e
Date: Sat, 01 Aug 2026 07:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1785567633
