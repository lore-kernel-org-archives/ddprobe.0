Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 24ABF239E7B
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749733194; cv=none; b=fYpZYGFme5SnsVUw4WPUu4mtI+3EBjzS++voGkE2gwvDMW79/lqIVsCV+PEXlRmPCmDsYpH5j8RF5L/r8LrFwbafqvFtcHXuyILfLyNHuL8w46sbg912La649k+9GspSbPidXzvbp+gKay0Yznx0AWs1xGkAwF6HSJQaqHzarZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749733194; c=relaxed/simple;
	bh=yj0ZfgXfqhV1DVvTrGWyppJ1IDbqc5kgRsyVNBEnB9w=;
	h=To:Subject:From:Message-Id:Date; b=G/Xzi2l2b1LFVGwzX8GblHJKvAV/AzC+8VLaOXuTMSzWQOE1tTnUEc/WhzOQt8ySnb1/nLlhc7MQEb3jtyE7p26Du1ub2Jpnb6eyfg+4wz4ggIQ9sE4GNb+yB6Bl0yxP1/8Btw3QHf2HiS+Zt602KbVUH+ftjshO5GXnfJPVHZE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Tyi6EAfp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Tyi6EAfp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A24A0C4CEEA
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749733193;
	bh=yj0ZfgXfqhV1DVvTrGWyppJ1IDbqc5kgRsyVNBEnB9w=;
	h=To:Subject:From:Date:From;
	b=Tyi6EAfp1t14Ih1TmUar5jwLU1FM+CNFdTimPDpjNN7gZMv7PmKO1DO5JpfpGKLa5
	 6RPcMO713UNDd4sgo5a5aHNrGIVXKmKPZY34XjGgwt1cZ5y4zYvJXwFz1UmWJKC0yH
	 5e4w4nqz/+sTQ0s0v3N6jM52e56VNaLiL4QhWTZP/FqtOmT/vsHXHtHImZH4P4HefR
	 M8Isv+yi9PGHyxQTWwP326xOHt/hS6BhZ7z4x7DV2xugX+QN2Cm0cKnilvKWzFZZVS
	 UrYLu1bXTKvCbFemUlPJXyrdi7nTCjXyrANxM4bLGj6lm9A/WFa+DZLUqAiozgrdjE
	 WPTEXiRlMOFmQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EEF8C61CE8
	for <ddprobe@lists.linux.dev>; Thu, 12 Jun 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174973319357.17894.6207393279629457390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9eb79f71901cd81e774d7ef1517bd4cda53a52f958ddb264b43cc017f66c79f9
Date: Thu, 12 Jun 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749733193
