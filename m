Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7699138C
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:24:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716773063; cv=none; b=tWfdTJoU1TUzDzLfnL+z1V/DgiMjKVdPhx4MYdkYF83OVXkkwceZy1pmegvoXde7PitX+eJSI3OwiRZe8u2Y5Dp61F6dbOAyNz0WZ0df1T/OtXhGJlKQYMsIt0PHvIHDQ/JxpiW9oRtg+mu47EyMAVdUr8MW/Py2TO2tGLRqWHc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716773063; c=relaxed/simple;
	bh=elcoxTZAz9QEwxt1TS0sEWW8UBoAjIGo5pUzwzcbSMo=;
	h=To:Subject:From:Message-Id:Date; b=MT5ShohM6LbX2ePcu+2pOqBfKaOzBraiz6+peMB3r2NQmOwFCrUcMvyJr1m9BC2KY+8zWqOaseBJORmZc+5Q0gI+Xo/lAKryBjIRbeh2HU/FbX1nHKxJMcNDQmlAD0p2/dXq84UFTzPS/UGYZVXYdjt68dDfiei8fzaTEiVRiL4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mY2LSpmo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mY2LSpmo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id F181AC2BD10
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:24:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716773063;
	bh=elcoxTZAz9QEwxt1TS0sEWW8UBoAjIGo5pUzwzcbSMo=;
	h=To:Subject:From:Date:From;
	b=mY2LSpmorycIl7H2BUxjEuCjY9F0suuIaO26sAYaX7hb4VDJHf8hY4ec2rzaxiulv
	 Nm3ZIjlsjpGL9Pq3nKWyl8hFtvFn9DibWrg4MVmctxJmNNcQldPUUaSTM7MLnUsJmZ
	 +eOifEdn1G5ozLNaZo2MNxwBx17DT5pCSdfJ/vg9rGL6kN4uqZ4MeblX0qvVvdXXWi
	 eH9yZ9uXBZZRtDZtZJW0MI6Drsf4uG4BhpPoZOht5o+V1QXjdJnsUnwkK3D8K07G7P
	 uKRxzuOJffArJWoPmiEeeRaiuz3xI0HKmp6S9N2PjoAGdkiGXNxw0uUAeDY0hhBiCt
	 EH2/iLYgkeCkw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id D1CE0C25B75
	for <ddprobe@lists.linux.dev>; Mon, 27 May 2024 01:24:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171677306283.6226.5855985100168770055.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1af4fd05104c4fbf1d4f9380ea3b556e6827d9e60aac6301071f18420bb18b41
Date: Mon, 27 May 2024 01:24:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716773062
