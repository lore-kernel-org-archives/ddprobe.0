Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35A682063FA
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744095594; cv=none; b=V3L5pBeLrxBFEHF1eloqPeKr/v21sx38Dto5oi2fIp5J+aE6di/nFMjPAfI/0Id6COjY28eT/vADeg1h9hkE76Riwv+vWqu+9albM83MyUJ4PtuL6f3yqza96bdKSnMt0m86r299qYoUx6M+nwYJfXZdj8Y14y1ZjqOd3uxf6SI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744095594; c=relaxed/simple;
	bh=r++yHbOEu5GEN3VjdjkyDPeWXIuuGiUYGvJfcDHp1QU=;
	h=To:Subject:From:Message-Id:Date; b=b9f4tEUPf5T/frcEEGJoQaV5bWVqup40iQwI70DvsGxn/lqNRuegsONvDdW+h3vJ4DwRpDSPSMKBWW1ROl+rq2KZ10XdzM/MT5/Zu7hXn11cmedvOxgMQli8XPgrckhMl8bjgRzoSvyDY8fXqA8eyVU0p4Q5rQ4PbU6oEqT4niw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mHn4CcWS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mHn4CcWS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9E0DC4CEE5
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744095593;
	bh=r++yHbOEu5GEN3VjdjkyDPeWXIuuGiUYGvJfcDHp1QU=;
	h=To:Subject:From:Date:From;
	b=mHn4CcWS+pvrQuzUR7yf6CXWciCtV0WyTkOxM4zUt4YYC0dGkKGKdil6Lezmmj6lA
	 1qv7xCpHkScQFojv3/qMjpl91t5z2m6oC2VCtQJeemn9Jzp1KwxlR7FBdqtiFTklbq
	 zVK0SyhpeYWQSqJ8tC1MfdOiCZJ5kLIvO5ja72tFtq2+VPoXwz97ecvP47MQKxZjdp
	 W0xsJ5LvTFIadYhbl2tzL6XdSA8O7xKz2Ku3+TSe/1Y5tMV1L0IkT06/YdluhvDJBW
	 JtVlRU6WYsYRLRgPwJNFPTWW0/7qpLfyKD2N1lNCdPV0eZdERRyZM/NqdHgkkOy944
	 qNN6uDCEoXylQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A11C3600C
	for <ddprobe@lists.linux.dev>; Tue,  8 Apr 2025 06:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174409559361.27287.4291687303752748497.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 918b203cfa6b366c838bee24b05a8ffbe6cbff27fc48abea0e1a7d353a58b28f
Date: Tue, 08 Apr 2025 06:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744095593
