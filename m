Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EE531494D9
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746343794; cv=none; b=bK4h7A78VkcoDcREJDUx2mzz0vjB63YThkR2EnKnq0LaSkyuB22LkIjT+uGjCXV+/eQv7GM0H7OKb+r9N8zVGdkjHwnYIj99uI/mAiGCFoRdmKUnl2UGRQYzrrMONTOqTbfFt2TD+zRjBwaNdKb8GEf23x4fKuW0tXuEv0i9YmE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746343794; c=relaxed/simple;
	bh=AP4ZRulv/4eR8hMGBf9aH+E6W9sTgT1pG6NHFB5zcHs=;
	h=To:Subject:From:Message-Id:Date; b=RY2qlqo31ppxbN2anxtQ3HRQJbG6HgS3Y7+TvUHEmbsw20HClOLRXSCbZY7BSkBT+TJD8v9Mg8eAj/aOFwC75xbQAAHfmO/j0YVkF0/SsS/t32B5nh0nxH3N3QOY6uDrZAZZgqaJB5Py0Yxhz3wppeqhDUPJ4GsBhMcbn6GLzOQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=U6q54yDT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="U6q54yDT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7506C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746343793;
	bh=AP4ZRulv/4eR8hMGBf9aH+E6W9sTgT1pG6NHFB5zcHs=;
	h=To:Subject:From:Date:From;
	b=U6q54yDTRZE9zIW6iSZrdjCoxmJMYIWrAzS8L0Y5DIUv+22F1iO7XKTNXU6LRhHE4
	 5XssikDMB6ajwPk4kqokS8Yhx/Ur5dIdQRNzwUVBZe3fFuIZhNtpeRbGgTXeNgc3ib
	 pmo+9U9ILVUcvj2Kj6l15pS+QCzdzuJiNaCocwADTB04SXrYQh9qDI3ObkNePRcGLe
	 GCnKbIVe2GUO3CXIcYU5kSjdmC2lANgmu2J2yLpzYzHkP5xsu68VkK2niRiDqStN6V
	 TRy+zwaad4OizQAtaApTZez9stwWA0lx4XshFA1JcwbbN9JkyMCc5R54nKhhuoW8Ei
	 vSc6l4/9QWKmg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93D60C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174634379357.2593.13077651198021920924.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4dbeefafd08367ba77d6306bdecd90fb1e81429e64923be6fc46a2fbe434510f
Date: Sun, 04 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746343793
