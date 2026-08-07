Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5C0392FD69D
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786092634; cv=none; b=NAKF+iBjor/vRarNM/BWWVQwQBESYtQs9sw4tPFI+jit1eEzm8gmzZND29erIGCbzIpaFsvioe/mf0EWb8awFhc3kX3jXK7YJx0BjYDkW/UyMHZBRYR/ZxlvGxDlPiA8553fEHhzlYACiQrX0eOomUwJ3rHnqdUbTldfIKZMrb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786092634; c=relaxed/simple;
	bh=hzYOfhNDP+jPYVEkZDqk7ohQqvSGSgQrBJ4sF8gwzek=;
	h=To:Subject:From:Message-Id:Date; b=PK603IEhjdoM6kmSCnx10PH8rEIwzPMRg7bzhNB/ZqPFPlrkG4yZqepuPUBtUNSOeD+/ZdIwAsdQKkGOUdJ1j9dZhANfIdQe8VEvuOGJN0lfctoVFqTqm9bpWxBcloiI0Owz9w1oLIbPoajWwgVUrzRihy7wlBKzZSCnebkdWiQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jt/OcLk1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jt/OcLk1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2A14C19425
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786092633;
	bh=hzYOfhNDP+jPYVEkZDqk7ohQqvSGSgQrBJ4sF8gwzek=;
	h=To:Subject:From:Date:From;
	b=jt/OcLk14yd+T17QGHsI9kYmBqaDco56yTP8Ge198yeo+mCofJ0mBB+97UifUxSFo
	 /s36RHkTp09S5SFX/pv3RTOmC39zL+Rj6t/VXub2M8Y0hh6k4v2rw8kIc/LTUrGOaq
	 FTJ7LqpduJNEfYB7PAcpuNIxpZJ+2Y87QaAu8vV41+5M4PgnU6Zs6a2oVyTaAS4Fri
	 YnBxwECxGYEXA+1y4m2WvPS9SOAKBB0dX/cJIo6SzRtEF/GuT5s4GjL1iRZPe6+Wvp
	 /FhJ3Cl/mTxRDXxIiWnxW0Vw9k8MZePrNItHCxCx6uDA9ExqsUsHqPfEvUwIWjtcVF
	 DorElsdEFJvEg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD350C5AC80
	for <ddprobe@lists.linux.dev>; Fri,  7 Aug 2026 08:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178609263370.31941.8229368256423772441.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ffccf0b1e87f8ccdb363b38ecc7bb72be3597c940a4d37bf48e66e2218097d66
Date: Fri, 07 Aug 2026 08:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786092633
