Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 570B83EC838
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1788170434; cv=none; b=G8zrY7D9HokrIRSDx7PI9d7uDuMJ+SK3YboyEg+vgC1sZrx/onaBHbQ/hw/1v1EcdRv4tWyM1xGsYHHs2bBKfXs3QO7soAqgc9laInF2E6/fAY2DNBqt2mSweP8tvvF6V8aZSHpb0OjNZObMannerCKB2WDBYcy0ZczdRtXb7d4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1788170434; c=relaxed/simple;
	bh=jNhoGMNfXF71byJZPRS0JEFbn1659iliZcJCNNccfnQ=;
	h=To:Subject:From:Message-Id:Date; b=D5AYMzyZheYRmCksvEwhL3FyR8DKhn9h7f+yR95oTC95vzCK3abgMm9ZdveGDs2qrqq1OmVGW5H+hK6MBJakHchiu6a6KUkaXXnM3LvLKhG23vQYXBzt8DH5+0WpcbHhDg+2+cHeAZVhFGvqT3fibLMpXnF8yJnm6K4DSdi1i+g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UT6xBXKS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UT6xBXKS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E0FA8C2BCB8
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1788170433;
	bh=jNhoGMNfXF71byJZPRS0JEFbn1659iliZcJCNNccfnQ=;
	h=To:Subject:From:Date:From;
	b=UT6xBXKSGAS3tQFFbyvHb/1mG8uxrcJjMD4jQbnbwgAVa0xAxBVl9iTcpaO4UJ6sO
	 PnHzF1ou8zI5I0S9jOHL1F2n21/akPlrDIkttoYXOy+2oH3KDfMJs8eun0tNo9nq5t
	 SGXYziARaUW2LYd8QaAAYa2kcNIBDnNnvRhTI2Ya1Hu/sfeldJm0VOSUE7eZ2M9od0
	 LbKqDPZukslkb06xHalCOyWIS5KDfxYka5/DQwWX7cbv0npKsd5XUbYlt9LnnEVRoA
	 G3cvlp59J+jYqbQSg93VZNTbvxJsPFy6cIgO324CPx9gwHsdUrDfqRysZ/fZhanb1D
	 QgwQy5Ri6yQaw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BA1CCC61DE2
	for <ddprobe@lists.linux.dev>; Mon, 31 Aug 2026 10:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178817043374.28734.13383070755191630553.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 09f7806807102163353514492b414e0825a0ac4bf45c55b543187ffde9bef969
Date: Mon, 31 Aug 2026 10:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1788170433
