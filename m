Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22A821514F8
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776263854; cv=none; b=q85lc+smoTSkrDOylrwyVxXCuIEFicEPDg2MfHI8u6iQosY7HZxkN+G8597vMI8KktuxU8LHCQ+DXmZRjTdCh3MX2expKYRYQAi6yD38bq7kwisp/7aDwfaRNtyY42Lz2dHa7ttWfWSjGAAmXzDJmGBsDfpSkLwL6Q24k1CdgBM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776263854; c=relaxed/simple;
	bh=EYkOg3UWx4a3adaIDw4ynYMCyCqnKTJ2MlDpqx7GtGA=;
	h=To:Subject:From:Message-Id:Date; b=bnD8LO2wY+5E0LB1jgAC/JyGDcfgHYAiMZG6BWLvayRa3n+7JtnG811wl1mGMM/uYgEDdjHE3/ZkNTMh3Nw8v5aYTWXddL2GS0jOHH9ziEX6KEuL4576fxuokJOGG/YA0dSrJc/QZ0zzwglTmSJMolz79YbSjSb7C6gd6gV0d+4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cHXV/rr6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cHXV/rr6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B9383C19424
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776263853;
	bh=EYkOg3UWx4a3adaIDw4ynYMCyCqnKTJ2MlDpqx7GtGA=;
	h=To:Subject:From:Date:From;
	b=cHXV/rr6QZAWM9f6G+fFwJx0aG498zoJ6T+35uESXJKvFKea8huubq6t3aWvwSNDn
	 iYtWxmUz23zEFOgjB7SFWiN20Uxoj8sXcu1Hrz4Lz6g+l/mIhi/hQTQyRiYiavDMjY
	 8ek5E1QtyEty0bYtDVf7aihb28ep/0EovFgrhhJdCkVIMokKghVvXVweI+g4/QZ3Dy
	 QZwJ4k89tKSKcnqKz080lLPE1FhRAA03YfQ3IphGLuqKt9xAkKJUWXeQmVx+kp6YKO
	 ogv9yOhst5P5J1jb8HqKD33P6JxVZJLG5C55tlJTdpT/ztpRiBLrcQtqRnsnyGDbYX
	 RTyM0ThhNlH2g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABD9BF43824
	for <ddprobe@lists.linux.dev>; Wed, 15 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177626385369.25628.5965724253000821692.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bf773080ddc84f6190e7370d18b0e20c63027406cd3127b5d8531904b82e15a
Date: Wed, 15 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776263853
