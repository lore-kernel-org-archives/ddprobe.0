Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18D7D3B2A0
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1773584094; cv=none; b=RBAi5phpwYbjF1kc/u4bSB6xVaaDNEFxB617rXaYCjM95AI8S5v0TJ5cej/zfqYmYsYDHpXUvEo0t8z7fD1Z1c4frvfTkjXQMPubZLyaK4peOjtD4zF+ZI85UTLKOacVfBNZo+OjcC3h1FKpjE6jNdiH3ZvYjikBx0lK3OFSSIc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1773584094; c=relaxed/simple;
	bh=GFFPnw5YJ5PwNbrVnXMeWJMgdk5po2WYGz5r4xJhwRs=;
	h=To:Subject:From:Message-Id:Date; b=om98Pl2t9sXzYwkshyHKoNSBB82ma0uT6azZpnnez39TQlkQc1jaqa9yBOPxTN8RcoydGF3q6Q5yQJk9asGYAnitXYztIhI/+V6UNMnCz1HcC5a/tGVQZfmUKKdHFsG3sblZ5iiQL0u5VXu59+m1kP2ny/KbaRsuuC342e/EWNM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Et1XwAQe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Et1XwAQe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A56BEC4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1773584093;
	bh=GFFPnw5YJ5PwNbrVnXMeWJMgdk5po2WYGz5r4xJhwRs=;
	h=To:Subject:From:Date:From;
	b=Et1XwAQeZR8ARybhVblLJpMdQ+L5AVPfGUMUIkePihw1wZwPOSLb6/JUsKSsxx0xV
	 dnWWmMjS1arjQr2LNQE5sU6uzlaSJsSjE2wNoMHbtamZa0bVeF2lfzUdlEfq4p84xA
	 pErBXoQkQAKyIRzI0jrVB1NWDXmXA/xcyD/X+w2OsgF12fzBqDvYLrIVVFiBWCx3vz
	 vtIMN3HX8SzzGVxzuVI2riV1lwFaoNfXMD/lYZplWx2XDRxg5KPqJKJQj8qIjbtXXj
	 +avNEM3K+RS5rEk/FeX3iLfVNFhNo59GJSl91Hu4MRUzIrvLYgcAI9GJX9Tdqb5VzT
	 rQlgkjiuF7bZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93DFBF30268
	for <ddprobe@lists.linux.dev>; Sun, 15 Mar 2026 14:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177358409357.19716.6679339847009299927.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 525e78ab2ed2669ce3ceebd15a4925372e92e7af2cb3ab8cb8d7d9b8209b4795
Date: Sun, 15 Mar 2026 14:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1773584093
