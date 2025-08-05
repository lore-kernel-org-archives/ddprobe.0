Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1456621CC62
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754384994; cv=none; b=rybdGCNKFUsSj8wNe0SX0uC+g4Q4enxKnvG4J4l8LhsebWOknCQqZcru7YXhooSMQmJoivyNzJ4e5R9DsXNf18QxWulZaHQ8LgnUOaTZ0YJCPriPjrncV4aTx4Via6TeOAKiWQxLKBlcaRceEwSKtjziRr4oYIIfZuOSrKCl+4s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754384994; c=relaxed/simple;
	bh=CLV/oG4OiWWngzsWE2c1eGBIssn8tdj4268TmXCe9IE=;
	h=To:Subject:From:Message-Id:Date; b=h3HuKKXkKWLcZL5A83KeC0wYYjn6vyFWasWgnJUe4hjFiiIXUe5apSK+TtJLrVKyiDpUsWuEcl53Fg3Xfa3Zb0aIm7EzsRH7+dc+DlqmbTzsr6e8ybE+ruk0twdXHEAulGRU/Wq9tSYIMrsSaB1LWkwa+BwtJ3dWhSnNOPp8p5k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P8ykRi85; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P8ykRi85"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9D7CAC4CEF0
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754384993;
	bh=CLV/oG4OiWWngzsWE2c1eGBIssn8tdj4268TmXCe9IE=;
	h=To:Subject:From:Date:From;
	b=P8ykRi85jz3cwstyVZQtGKERSx6epYQmEdJR7AfRmC29VLXtcZMysDvniBy8xYmjE
	 WXaA2WChC+I96gfIU0hPA1EPjmN/6L8reLgs0Uy/xBzcnhPogggnvnk32x7OBTJwTx
	 Wc4IBNxVmBAGNxYlFLIlBsfIYYQNCgXCQFBvCsQSZGQxSluOTyKzR3nk8PxwVSj431
	 NWWXu2+R5eQKmt1O8hjIm/KT8BOY3FXtAW4qQ0HOs0Kfz2dVtPnI5STgmMgblBHAsG
	 GFxCqgFU7WITl5x/S6Kn81Peb4rmnQM/mRmhtUO2Mwar6r+76LMFJt+P89lMvuvfrR
	 3xFC26fQdxuzw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FB49C87FD1
	for <ddprobe@lists.linux.dev>; Tue,  5 Aug 2025 09:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175438499358.14190.16439413278178314863.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6e0c3076ce287343bc06b00be457abcc485d0d25e5c00de102604bbacddbe07c
Date: Tue, 05 Aug 2025 09:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754384993
