Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 132BF336897
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777582654; cv=none; b=IKZ4uLx3CSXp5A5qrbyv2pVVBHVj7z9AsoUET0UmywbICDyWATES8OjLHhroSvM5u5S0QF1YYCkWwPhhDMEqxkI7HdUszqT8XqZfvzNt+kFVMaBxILlAEmMUz9AiydGqQUd8cqI4X+Uv6lgpcMxeMnAHse0/w9aSquKH/i3rA28=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777582654; c=relaxed/simple;
	bh=wJ3yJTpbrHvYkW7+0Gsg2cpIDUQRXZIyv7NpTUISdwc=;
	h=To:Subject:From:Message-Id:Date; b=bxqtUMXndJdZwnsdsjNDD9hsCrdFY6y5flXyd0boU9VsOm8r3QfxDMm/unkhCM0tzUEnbLbbZ2v5AC2zWFDUezsviHCqd7QiCmFZB24diJdLTQdAxdSClUsbXyhdGhTMRauvBpK+HdcYskOZGRzo+dkFEakh2FMuaIJ3iLeDWSs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EWhmBh4m; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EWhmBh4m"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B6EC4C2BCB4
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777582653;
	bh=wJ3yJTpbrHvYkW7+0Gsg2cpIDUQRXZIyv7NpTUISdwc=;
	h=To:Subject:From:Date:From;
	b=EWhmBh4m4zNUo49+TU6oemNYKg47M+3xy1rWU81Cf7WVcpeWQcNLwQR7pubvEcnWL
	 Ldkpwa9iiVyvDlzDZMcbmlR6mRw1Y/2t97POxigPOOq0rHiYwqETSpeBZ2NqZlngFl
	 eULJc5XJO1wuXZ+ghMo60NzC92ZL21czfCjnm7TzLsiX9sanQUEXTG+C39sIj+hyEm
	 MuAI7y418gdBdpKXs9uh5ywruhIVBlpyqYWUZI+bMw9ToWxfTueqhqHtGenG/N7hi7
	 XlUx6/Xx37gXlhVx2qEg4Ci2+sfFrHPyjQHwHWjHRYj0zNMV7OyVe8uBk978pIMNYa
	 VVbyM4E2mQ56Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A9303CD13D2
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 20:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177758265368.17784.15112566738099069482.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edfc5719226dca7d0c2f4ed6ce1b40ac65419d7db53c0df480504c5ab8ad4346
Date: Thu, 30 Apr 2026 20:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777582653
