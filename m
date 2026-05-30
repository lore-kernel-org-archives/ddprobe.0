Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 164BC42AA9
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:33:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780144414; cv=none; b=Xxp3o+zGEeo9D0obsWqy7Vtk4DausEzXTqxiqUtgZwXkC6eqUXtCPfaHI+DVY0gg7Kkax50204TEbiJ6yIWDFgh0cAJgj9Hwwo2xZ12QulKXYZssiYxLVDYjEq1kRJ/Dd9jc8iicEYP2dYH1T7oYt0CNugDPtOXtvqWvEabDd/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780144414; c=relaxed/simple;
	bh=xIv2EZ8mfBaVv4BchzVqZjRRNXS2q/UdI7KAxC5Gwjk=;
	h=To:Subject:From:Message-Id:Date; b=LpncIZfkM6HTvsig7cLi41VjGCPIaBTuaEulChDo8/TpLB7xLCDaWz9L0nzmg6IgTf4Qb3BkwwF9WHUDGW9dL6GkrHuldpnltYXrBPXCR8Z+XoAYx2S7zqUz+U91l4R718OdigQCw6V4VDjBDUsJyhjhKoHVcoChqBFY2dmenWQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aPjNV8Xz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aPjNV8Xz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CB6C1C19425
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:33:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780144413;
	bh=xIv2EZ8mfBaVv4BchzVqZjRRNXS2q/UdI7KAxC5Gwjk=;
	h=To:Subject:From:Date:From;
	b=aPjNV8Xzs2xIB4vSQ7NrHj/CZo6NYg7/21olqRbeID1YGHDJsOeHpvJHl9ofBfDMQ
	 mrzX6BX06xKJQTK49NvAw7N6cXRjFXARiP1x/flgyyQgrcd1WBK+iVLVLnWdXCx9Rc
	 Ef76uCKEmKV6coynaPgos6+AQDkpZ5ns3XaNSMlYu5zOxxYMT6jzH18YuwipkNktOF
	 LBU90901CMMViHca4t4xchO4SbDELoYJoQU9Cgp5HUuiTSZXmVwb0StE/fm9VDjcKJ
	 TdPLv7oTK43orVv11bweadz/YNtlU7bMti/7kjVi1MIpmJZQVlvQEgSZ2/eVtwUaIN
	 00FGzngMmnxTg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B311BCD5BD0
	for <ddprobe@lists.linux.dev>; Sat, 30 May 2026 12:33:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178014441370.19392.16104707440181540601.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fd292911e6f5d455e555aa44550b9f1d8e2f5b94347b9e01c509f256354c2018
Date: Sat, 30 May 2026 12:33:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780144413
