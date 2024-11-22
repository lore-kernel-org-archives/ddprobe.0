Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E3FC15ADAB
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 16:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732293354; cv=none; b=aLVsPrDgoQpLG1wiAl1KRJ77OV7KdFftTWFaCy9SZ2XFBNR8nNQmhWVYN6tZcN2m/MbGKfRNXtHMpHoTFyp5KqsJcFqI/FSon2TKVqKLGL2s3QKRKLjgI/s1kkg71rBbgRlUSAtaO2mZTs6BNTpCdpTxsljek3mUzBF3bWUOHGs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732293354; c=relaxed/simple;
	bh=hT7KWMlItVSpMX3easnuz/AFK1MgqO3vMj7q9ctCFfU=;
	h=To:Subject:From:Message-Id:Date; b=E79AuRsLMtqAFYYLYreb9elVilXfiA6t6JZ3fyNxwhnO03Duiz0MRw4s6DjJ2gTzi/docnXYD38Kx9SDkJ9H3Zp56awH53iDeHIi6h1m04mAWJn9kUmsOswm47zaVMsiDdmYb+GF6zHD0nsu0WAvNWV5jz/5Jsw3lhhhQkiNQe4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UQ6EuhNt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UQ6EuhNt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4FCAC4CECE
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 16:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732293353;
	bh=hT7KWMlItVSpMX3easnuz/AFK1MgqO3vMj7q9ctCFfU=;
	h=To:Subject:From:Date:From;
	b=UQ6EuhNt3ZtYKifRdVwSZvGlGRlpr0qjLZQyU41hazZu72zrIec8gkxPjmR8UK9HL
	 aQ7NWPsREaFIGkNtFjJs3rSpqrjcYTnaaahn/dKerWbYITgp4Yrvh+y+HdmDXqPUM/
	 MB13whdI+KobqZOqywu/pkQmqsV9BrNghi8VIV/0794RlYpXSkCPB/e3+WoZSH33bf
	 dbbNPFZR+88UWDJA3732PCcuq0grv412HifB/K8UjWTVPClt29tHC3wxt3uUlB9weO
	 Hp+ecD4GHembBNv8vygdYEZCtkzpt8gwdR2RkrupCHukXQbcJUEuh9xJK2YwWXM40i
	 /MJ3vtSHbsMCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9B011E69182
	for <ddprobe@lists.linux.dev>; Fri, 22 Nov 2024 16:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173229335362.9885.7246022715908407694.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5642b37de69e564f859e44e41aa1facf74cc825b3f0d5784d31aee77350ce7fb
Date: Fri, 22 Nov 2024 16:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732293353
