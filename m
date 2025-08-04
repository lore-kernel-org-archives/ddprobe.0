Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3418A111AD
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754349594; cv=none; b=fsIckXlxzTakmENkJWiX7J7CRZSbZkUx7ijT0e3eIsHAFKR8fKwW7MfeiatDZEvzJ8Cr6uj46D3fyzI3ngqofxe22GutY7AdzEGvWVm5G9JuLoaYVTJyCIcdAOX0VUmuqZ8d9bco93Kuf4hSXLOnCJf8GvdKma0rKc76hQLtDg0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754349594; c=relaxed/simple;
	bh=bo0F3jllk+M+7bC/qr2M/lCp6C4MnHlthKcxwWxtfao=;
	h=To:Subject:From:Message-Id:Date; b=py0NiLvzj+L5MouQctnL0eKqI+HTJsi875mnaaQbnXFGF5+1j23zTjvfcKCjnyhw7mijbD+7GG/Iw4RwmjzKVXgz5dP3MWOyJMQc9oC9jIDzv0cJ7pyXSIvi1061Dfxw+zxUrQGTKuyBWycvU/muJXJMnZhGlLxAee7eicSyPSI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MChyzHIB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MChyzHIB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5A74C4CEE7
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754349593;
	bh=bo0F3jllk+M+7bC/qr2M/lCp6C4MnHlthKcxwWxtfao=;
	h=To:Subject:From:Date:From;
	b=MChyzHIB+1b5HJHmtx6b7SJlrzZD8+eCIGfX2A8FHcJrfKnFX6b3wkXvRtirUD0SA
	 rRG3UPtXwYRsWOIivNZXLUyBRoery1IKULM47rw2BylMsL5ZZt9JN+0NwXpq61fH+Y
	 IvIcQUpbdHM1Gfishv2tcN/wXrQF/7rvR57ZKIQKnl6FNsFRO6azfH+N4rSCVzTbtp
	 coNxCC5mRFK7iAbkU4iWeOHza8gKTir5G3dXw4RetYEbs/5MR9wiUrfnvezjrUHpGL
	 vfGZtF/00DbiNF2tEmKMVbyGG73TlNQBy61EadjUrw6AIp44R3ECcGuyIoXKLcIXIU
	 nz8B4oiwiJ/iw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92D28C87FCB
	for <ddprobe@lists.linux.dev>; Mon,  4 Aug 2025 23:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175434959358.15747.4339350425422434227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0b3c2b6c46785e0f76e85c75a47b14862a38c902b9d5d4b089bcb23dfdc85bd8
Date: Mon, 04 Aug 2025 23:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754349593
