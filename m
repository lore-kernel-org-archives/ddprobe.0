Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFFC21E5018
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752488993; cv=none; b=nje8AVZHCt7NnEO0N6xYtxfBwe28XlU4HN3zu7krd7nSjulR0SYDWTTOduXNOpqivzUh3iQB9oG7COKBJUhoj6VjErtT+yuJn99whHe5radSpVFOAIDjKMjqNvuDS9aMVmnpJ/s5FEHqAxYcXBxPfgtSMp/rjn3FjzPpjJMrrVA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752488993; c=relaxed/simple;
	bh=ATc/NorufMKLRfGxhhTJgVc3sJHqlnggtI8NmIyfoXQ=;
	h=To:Subject:From:Message-Id:Date; b=YzfqqjouWWzvQyJ0IzccN0qJJ91Ia/zB/70y+QDqKTpjT324rLyfHpI5BWx5KOfdEJ/7eiNOwTdzkdYd8YZNCOInMLX4nT5507Y8gWwuS++gGSyMrN91O5c4jQAFJEMMl28t5WYU3GeKaUFSGyfDDQ0djLsUaXXvFui/ZZbfY48=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHu8UsLA; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHu8UsLA"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2F75C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752488993;
	bh=ATc/NorufMKLRfGxhhTJgVc3sJHqlnggtI8NmIyfoXQ=;
	h=To:Subject:From:Date:From;
	b=cHu8UsLAYrmnpRDITTKK6Mt3h1hQUjuiFaW/MLqjOrcccgxCimKcYMgigIO0ft4ra
	 gr8TX4PD3dUBGHF65oWajsOSRzD5G9Y208u2qWR2kNY2zY+VJD5bTf+7sbs3Cl8mvJ
	 GjfQ0eaLdK97VZbCHflGBDjA+HSvppHfXjBdpUzcUo6W9T5iu/m3VveaMvvFMIrJz1
	 pvQB4Y1isriboBBW5fDJrKR6SX2DIeOeh5luYrG0XMVLHaUoOZ15N9qV3x5QM2aCMX
	 XSbple4exIfEgiB7Oy4chY+u5F5JytYh/SCPI2ixwX+KdrL/Z4XAlT/Pbaj3m8bSMm
	 V+BhqJsn741SA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91194C83F1B
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 10:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175248899358.25165.4693273587509086349.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2f86cfdce7622346aa91623828cfeaace3c9a08562d777f70d0e11fa271cc997
Date: Mon, 14 Jul 2025 10:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752488993
