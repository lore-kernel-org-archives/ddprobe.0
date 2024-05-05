Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6C5CC136E1C
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:02:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1714950143; cv=none; b=det5FIH9dcgpL65DNR3Vbr9XiZ/2v3rWoO5zLiNCxhkoJkao/mHpDpY+Tef8ZLkAyjhAzzMHU+/ywwozYCaEaRgwBxUso+lj6bshPNIEYM1NTGfSVJHPLD0JSHsgv7v62PlfthV4apApLpmxqpQyRNgfKFDkCZyTAsOJJCT6zsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1714950143; c=relaxed/simple;
	bh=UlXHMu6w9+ZHoZD/7e/q5AWyQ6opvRLt/Kuz0nReNqk=;
	h=To:Subject:From:Message-Id:Date; b=VbP5sOLcZ+uxtZoWYjouTU4gFB6kDGdHYUnP48naj+PBwFk9gyGQptTnEq87H8C+PyTQfTid9pMkypsQmjz0rXB021mTUIs6iNYf1VLyrx3P3N4eYJ+8LDeFLMLgmaEH7W1PDi7j0DHFoCoimYleQrsBRk5v35TzbxkKKoisKwc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E6Zu0oG6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E6Zu0oG6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E592FC113CC
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:02:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1714950142;
	bh=UlXHMu6w9+ZHoZD/7e/q5AWyQ6opvRLt/Kuz0nReNqk=;
	h=To:Subject:From:Date:From;
	b=E6Zu0oG66+3BCAG7fTbCW9BHeZ3fCO2uV5HcUzd9bNEfAnhe5yAtFdPhDv+kJWH/P
	 Syet9UpRugMKOvA9wbrzifLhk8eTB8/sFz0vDJrnOptX9cnWsxbU4CG5TxbRga8vXM
	 0ucoz9/f/abRWb/bJTPmosCO01VeDhGjzFDfKXCfoJBloM4aDXH8JfnIFyH1fHmHc8
	 YvN/ElRcTCFvS2pxWlRIzVI1VDbikzlJ/Spw5BjR6a0+HD/bIwoohEsq5tZqtL2exG
	 NxiydCG1LZKDG/y9ISG3G8ptr/KGi8qVxgHgPQt5Sd0AEZvzcmant1enUd7b8lrSkw
	 SMAK3+IILPlFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C6CA0C04FFE
	for <ddprobe@lists.linux.dev>; Sun,  5 May 2024 23:02:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171495014278.27163.16607294997654459050.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c85a41693b59894bfd4566b492ff15a5e02a21c556db58f004c0d6aa23d9c305
Date: Sun, 05 May 2024 23:02:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1714950142
