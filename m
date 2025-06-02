Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 41F3C2C3278
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748864394; cv=none; b=OyCCB74k2AG2axdYKk50LQHiBjvenNkRwDVetlX2cOayFqgV+UCZpfaTakO8FDkjPr+iQPnZZtZoIaBdhe7kT51Q6+ikYtfExb2F3vyJoHHlOHF0o8tBYks5kbRBuZJU/Xqmp78IniIRX5Hyg4ipSqdYImNSrowFcbef1V2Ubxo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748864394; c=relaxed/simple;
	bh=XyqkFK92aCYSW8R5FLB5JUNU/Dp5gj2n8qQv3aZzMT8=;
	h=To:Subject:From:Message-Id:Date; b=nVpEs4up10Wl/fFeT14Yz8Fd/8TufL9dSsbUHIE0VOSeb9i0j9ZzO/vJXgXxzxvEsfHhiA/0OA5hlUqz91vHNpvkvgaJ2qMtizg26o3GTpA4B14BeGPl3e4W7crc297uX/kpHsT5ZR5c4kPL7Om0cempTVbBq8jX3Qo3TapP48Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XpObVZ5j; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XpObVZ5j"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6673C4CEF1
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748864393;
	bh=XyqkFK92aCYSW8R5FLB5JUNU/Dp5gj2n8qQv3aZzMT8=;
	h=To:Subject:From:Date:From;
	b=XpObVZ5jeMbVsg5KuUUwVx/ajui/gB4ee0n98z3cROJ+h/gq49zzVrmZZ03yNIJMi
	 XyA+KUrFKGLDtzxUInPYB8/cpLjiXX1ne8TFhlNJVurUekOhS3DGBQJCk30rEG+cP6
	 1ecwTDOFH61JrGcggYNxlZyzDRzUN7sHoZj7PpBoA9G5MpCsn9u0awOEmz7uWXrQxz
	 nIPWX8dbNP9TiA2Vbs0jFE2IbamO3wWt1tDp/+I6AK4P4j/S6V1VUKsD47xQ18xSXX
	 Ka73JKKB0gzNAZv8Kg07lbKQm3GSfNQF7tLkCkEk7LiNK3hxt0NU2GTLqSjz4SmRMa
	 +98ZecdyRQE4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9199DC5B549
	for <ddprobe@lists.linux.dev>; Mon,  2 Jun 2025 11:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174886439358.19497.17911590221960741052.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0022152f7a7d0826c7bea1dd1ed42dcc3be0afc8e9e64b31f7720b2cf372c039
Date: Mon, 02 Jun 2025 11:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748864393
