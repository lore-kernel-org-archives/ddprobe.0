Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 574D23E558A
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:16:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1781356594; cv=none; b=ORXszQZL3IzOfcarY/E5GsDWtamviMkyiI+xzyCBQGRHKkxEj0Fc4UCEhhr6rG9Qjj25Yy9cbUbAZcZfhEr7GnB8FPPsteE+zSnr2iY3QAAW+pWFVhw5uCMQkz6qUeZ2ucxtGKy9rh4afoSxTMYVaNh/YqnY7eumKzfRtLaqBa0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1781356594; c=relaxed/simple;
	bh=y1URIqxuq0wbThaJUX2c7hFALhBLrSBr3qVMbCHUlcw=;
	h=To:Subject:From:Message-Id:Date; b=ESLU0ljS7TgMoFo8BSlSe4ukyHWZlNyxpzV9PBpfPe9HPrqs/Y6UGowq/NZ4m8foYFZG0E/dbAK3DUDGuwwTaEcGXWUpuSGe8TI15i7vsKpAXdiLIWHCgTrF+RZfs7dg30BeSB/5FPLaUYhAGMKAMNZ3uJHx46HCIJmwOvtjsK0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fJcOuBbE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fJcOuBbE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C66D8C19425
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:16:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1781356593;
	bh=y1URIqxuq0wbThaJUX2c7hFALhBLrSBr3qVMbCHUlcw=;
	h=To:Subject:From:Date:From;
	b=fJcOuBbEUgFfTrANSR1N0i8G42F0Pys9MyilUoMaa2Sno93Hl2qEuPF+KXEzCVUqK
	 CvQUomwoZ4XbFMCVlNuwaF5LdhNMtqpaBZ7fAUmZaaqLBkPY6esZAucDZPzU2vFEhb
	 4RwvH1U/ikzLw72Fc5VSiz3WzrkVDtu4KprLT7KzHkUf3fAZHeG7AOGMUqHlH2aC8n
	 ucEKKR4SQYc1DspMI4eqna4Pns+2JCxY+gO5QoQZkPyif8DUOiJEjKPamwnIPZ/uhX
	 Bk4D91RcNzaCZPswjfbzKK3T9wwkIVvR48fRSCjxJKw+LD1F6g5xYEnMnkmeJEYNy/
	 ErHoo2etxLGVA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC0F4CD8CA8
	for <ddprobe@lists.linux.dev>; Sat, 13 Jun 2026 13:16:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178135659367.14145.10382225329768521985.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 80a6a353c964e5a90755722159863da946f3fa62d0b3974bf6ac2b3838d3e246
Date: Sat, 13 Jun 2026 13:16:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1781356593
