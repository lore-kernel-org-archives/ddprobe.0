Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2AEB0388895
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792351234; cv=none; b=Kq3Ku1QvzQcjkmbUwKFvseVQPopWBboYqyUuNrhev6CGBjwSIx6rBdjF6atWhrylPQCP1XJlNf+V/wNnp7CRTaRNanaH+VHf19dhVDXcxrem6WnwaXVfZ1OeijrrxzANm8USWD2u23mHdpqB5fuJVQq6Ybe/JD3s5N067FywgPE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792351234; c=relaxed/simple;
	bh=Ju3wyuZLiFS4jYeJ5lM1WQOs4dRqVt1rW36keENp/78=;
	h=To:Subject:From:Message-Id:Date; b=RP0ZiCRJzgrVBMIx1L42I2kojdl9OFaWbhm5SRiwzImeenKAWJD5vAn3hPvNtVwyy+CFT8MIRXJxfX6oL0H+1/YCGT3nYGcZBgTkI8+n5MSix1SJYF53XF6xJoACM5nDY0Ir8eoBrW1RCU1iiiyJrYMjHtoh75fJZ65Z3F753Mo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FIjA5Xv2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FIjA5Xv2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D4352C2BCF7
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792351233;
	bh=Ju3wyuZLiFS4jYeJ5lM1WQOs4dRqVt1rW36keENp/78=;
	h=To:Subject:From:Date:From;
	b=FIjA5Xv2qyNVARGMsz/dAD+pq/af9x0hf9t/KkYVjMBdOkcoKQlCyPiQrCtYiB5jC
	 RTRgRyGdKDJEAeXrwqVAJM7T5pUpxCF2v97eTH/bp6OQ0sHkqkSW2/CnY5ENXiS+N4
	 AaxOVb5hv5kO8iD11RLgEu1COp+aAJQ2P+KFl4+b9r7X/8s83mxpN+K7kvvQ748cWB
	 wnhM6wlzwYZ52RvurNWVcJgBLvVxh9NkGt5wXo3lldoC3gahW6s0zEqW4sgPl/fc2M
	 m1ztOdl7AHUfRRpM3NxuovoIB+oP9IAArkBi+8nJp3y/EO+XO6Ua1KL1ClhkoPe6jt
	 vPml9hbF3l4lw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AF10BCCA490
	for <ddprobe@lists.linux.dev>; Sun, 18 Oct 2026 19:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179235123369.20379.6366724174394904010.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d939ad1893a69d4693d70f0f0f40cb00346c8bd536e7b27ff2fdaab39e7a2e7
Date: Sun, 18 Oct 2026 19:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792351233
