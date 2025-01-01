Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B0363207
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1735723554; cv=none; b=lED1ghDts9sV0D/Rqx9nwIX2LihqrwQWAvpk7OJzGukV6eSMLPfK1rSTpM1ElHgfg54EmuFXI5YMtoaTkfJy63Fm6aItBC2oc0H7F1EN+cJStmVtAUGo0/Y6fLp8sjwxLw/niNl6SLoO3y4Iayg98F8mJu58VPdisql9nP3kCyQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1735723554; c=relaxed/simple;
	bh=eY9uFX8W8d6EDeCwO/CiXnUzFH8ohv7nsfoUvt4iaSs=;
	h=To:Subject:From:Message-Id:Date; b=nhI2crHXF+EDwxWuLFQZus7rgcShPN+aaU6hiSA162T4T3h6SfoaFfp2iMO8Zb6A0lkXbjV1cEI5UX/Arx4E8YiOx6XbVIeP0e6NlZVJvZCPY5Mkd3L8Ur5EYJ2bMkq/9Uhsgl6quYFjTpRvLR2RZnTIZQVAfqj2+U5gnfQUfLI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S+yrAXwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S+yrAXwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B29EAC4CED1
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1735723553;
	bh=eY9uFX8W8d6EDeCwO/CiXnUzFH8ohv7nsfoUvt4iaSs=;
	h=To:Subject:From:Date:From;
	b=S+yrAXwd7K6qRKjIlQe7PJtbeijdfMtVvOK9vijrf0f5mukNSDdS8vym/gtcopBOp
	 CP9htEMrpK7Q/RW56XWk3vZ88U+U1Rlq49FZYA9/EoLEBZNtAN1P37P3LTaR5g4/XD
	 FIy2mQXUc0by/yKeokj+ka+9XzsjhzDv3crLT12A52JzNy8K5AVkF3zmwyFhmPOYWR
	 KE8jOGbGXaErHvVJB93BRvTxAhHON12ejnG5JzSTjJX4htDpLrH4/R+8Y2KMcDjZ0e
	 oRH+uIXag5a5z26JTdmky/A4dCOdzAGzGsFZEi4MH+yLvtFODkA3nzzKwkXekK/1KF
	 DpjY3EKLiTQYg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C6B4E7718B
	for <ddprobe@lists.linux.dev>; Wed,  1 Jan 2025 09:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173572355360.32471.13305849724334082615.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1242f1bccb9b0832f1a5236c5be6050bfd3eea8ed6a58372168a18497e867e59
Date: Wed, 01 Jan 2025 09:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1735723553
