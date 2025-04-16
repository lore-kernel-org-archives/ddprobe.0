Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 55F2918DB05
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744763394; cv=none; b=IsbZJI8LTcaJ9oWTAaSPkqzzMp/4m1e9Ov3WSky1wF/QDn2z0xZemc0YCF+mIj6tO9TyFSwOwu52+9oeS5CYlyBFW0icreO5i/SgyGKAvQ7QjO3xVS3PvE4cb2frDgll9rl6RS/5DWhq01j28l7rQt2DEzEhhi/sJe/BL0d+3X0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744763394; c=relaxed/simple;
	bh=PWFOgsgFI91AImkNeqGF4omIB6lcav/qBkupjkaDlzE=;
	h=To:Subject:From:Message-Id:Date; b=dNosixjW37NvOKGsgFcVBCCxePtmOhG5bc2YcdyfKehZy3a78cgnTqvw/uCkr3iCYMTW7u22sIh9HrJmDlcaTQHYYDEaYerV08+/1LuNsOWd+0oQIwIKyB2cE2+no55DxKvQtXTJNqFqXDJgBB3krEQCD+A3AVbpB1YY2XvcIxo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gUpJsHgn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gUpJsHgn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDE88C4CEE7
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744763393;
	bh=PWFOgsgFI91AImkNeqGF4omIB6lcav/qBkupjkaDlzE=;
	h=To:Subject:From:Date:From;
	b=gUpJsHgngNhE5DXjkr8Y+r7DXq0MUiL6CzZ3YIeSGliFwFVbF7O/RwLDJYK3bGrkT
	 prWk0vBtoaTeWRxCShTqJdyjl7A88g2B3bc33prXdihxHiK/eQL2yyHRXbCkZCkUef
	 y1X6/T4YWTCcCawqV3K2bQw00q+x6CPmaJQKhfmwURBvz5ecq3NqgPnOE9PNlNGfu3
	 4+m0yxEXE1KtBLwaZAiYiax+eV2Zv4LwcfFnabXH84QaK70sa2ZDd3Mwl832ljEO2N
	 HLwR3YKV7Av6mcEqdgipDyxrXk2xj5gn+7UTu2kpm7Lryq8sh1oqNS/payJWTnsU5u
	 4+FzF4X7hLj1w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D4F6C369AB
	for <ddprobe@lists.linux.dev>; Wed, 16 Apr 2025 00:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174476339362.622.7734515271198291161.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b7926471a066a02b4a7be87fba21aca4f9e2d73757589f57306e95e9e430e6c2
Date: Wed, 16 Apr 2025 00:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744763393
