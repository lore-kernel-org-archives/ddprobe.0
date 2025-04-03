Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 392F424EA83
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743688795; cv=none; b=E4kXr3ZYvk1ObZqe4FbgaaYfnKBOaw8TXrR3pTbxnhh49u3KkVa9SBjpQR0MOI+/raAA7xcTUefzkx7UDv9aKxjwm8Vu7IApik817UCi6kKt9bVho9I82LTUPO58fM9j+uBXBapsB8/W0CSdiDGKRdzFnnsmfxCbUYZInLhB7Hw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743688795; c=relaxed/simple;
	bh=PkxvGhMngJLvJ5Dg+SoYSuaVibOSPsQxDkw4yfndQFI=;
	h=To:Subject:From:Message-Id:Date; b=ibQqZysxjq9GkieMmHAfMcT5JUiWb5Haa81NGyMvgo6/RtWZVkjomLHGi75Ldiu82pINca3PgNRGM468BLYHh05W5tSMFZlLcNlkpv1s4YXZ+AyRWU73G5VDoVg/N0DtftDkBRVt5U/Q09WB52OquWXAUBCnuFah6w0m4oofSvc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Hj5a2Kqq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Hj5a2Kqq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B521AC4CEE5
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743688793;
	bh=PkxvGhMngJLvJ5Dg+SoYSuaVibOSPsQxDkw4yfndQFI=;
	h=To:Subject:From:Date:From;
	b=Hj5a2KqqPqplOLNPu8NRR4pvtMa3MzVqyKu/uCkQkascgK/zoMmdEtr+5Q+2Gs/g5
	 rHUJTcYy/aG61eL7buC3GhIKAlPrspcJxlBqGqOJUusNoaqsaHbAQtZhgsHmuY+UM0
	 /CSpOr7IkfMOqXmPRceZeQOwtDFoFw1kLn04nTfsCvxkPiZl9ZNFaTxoVkhSSilKlt
	 lrT5v/A6kiTIHOxXULMubpaBmT/+0in9mm3cCmXewIzjfn3+gAaujGd4TL5ftgluce
	 exDtGU1pUALdEgGdMPlxxv2cJwdwl2dB9F8dYWqJhjiqjR+AABooCktCy0ynF9VF7N
	 Pzc32euX0Kxtw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D81CC3601E
	for <ddprobe@lists.linux.dev>; Thu,  3 Apr 2025 13:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174368879363.23835.7983117671350049530.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: eefe40bb8f8713c05fa24810723940636c5e3235f48178c880e12e2c177b1109
Date: Thu, 03 Apr 2025 13:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743688793
