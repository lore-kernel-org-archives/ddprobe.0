Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 494912E1746
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:36:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782070594; cv=none; b=M3p8cOkz/NRe69bIryPlQJ4EAMinQaOQJb9JYF6rsOTOBVfBqu/8/pjGj9UZNjvfE9Yp6CYgF+TADI+LLo0VbbqEIigUkSLaHMXf+SGgQAJbmalo0xKkntkPwe4r5XE/usv+jq/WQkjg3gRoezzK5+0UtIYrSLgUDgdEQJ1Fy5E=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782070594; c=relaxed/simple;
	bh=TJu7ZKwvkMkdioNNKI/G2Rg7vQoA0jr3VlwfmtLiZSY=;
	h=To:Subject:From:Message-Id:Date; b=uZYYUAcgyLgyuHuwqsSdkhYF6uVRD0GWRiRw+jfm5wSvlYRXn4DE/whQJ8yun433RtIeoXyHr2KinWKBeB98HvUbJoU7137gexrncIeafKVrM438qR52yejkBQ49zuP7aaXd3Tk2QLQfAEkR/Nwot8cOAayWNWjyRFsdjQw6Ah8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=L3Zw4ggW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="L3Zw4ggW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC1E2C2BCB7
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:36:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782070593;
	bh=TJu7ZKwvkMkdioNNKI/G2Rg7vQoA0jr3VlwfmtLiZSY=;
	h=To:Subject:From:Date:From;
	b=L3Zw4ggWFw9YoKmWM1eFP66vrA8/PgwByFzRiuZ+bd1u7QsiDvXrLLuPy8GUVPpfW
	 xRqfl7hrEXocIA8KSYhzgTOGKZk/JWkjTu0URSFiH39cxCVzzTlXDMas0iON/qDRo+
	 vbY6Adiglsqihhv1ePsWd3PoGuqIHEWmMyNBlfDgszYYa4wvhATHmspAhNTdGBmnmV
	 OWQjtY2U5uExdX1qjBhceYr2f+4BAuItq9OlVXqPM6zPxa8ROFW4VT9DzTJDXpFJqZ
	 Vb4s+yl/BZcpMXEb8xC4wj02cQ1cSX1KuJYeRUOT/TFpI0/4B9wn9MiwKSMW+YipMQ
	 CG89QCMObyQYA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD72DCD98F2
	for <ddprobe@lists.linux.dev>; Sun, 21 Jun 2026 19:36:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178207059370.16121.17073492018075255962.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d4fab3bdde774e751dcd165da8a667123063c2edf7ab6ae528c860d5e5a99d4
Date: Sun, 21 Jun 2026 19:36:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782070593
