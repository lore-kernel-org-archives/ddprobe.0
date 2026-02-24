Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 029F226ADC
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771965294; cv=none; b=YDlx7Tzb0I9daXA22vXDKSMj8Qc0C6X4LXHabVcMf2sGVHovjqzSH85HiMuvuw5bGRNiiPHGaHEjcFkCzmyx3Swv9F/ELNMX3OX6kZsEqrdg7twh5t70bmg0zdfNv2x/e1vHo0VLcGqs2osRg5sBysfSSOT8tsBAkoCLkbi+L1k=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771965294; c=relaxed/simple;
	bh=YN6kSSZAPq2E+j2W3Daggq0Sl/Fdtpq1XnQp4WriFUY=;
	h=To:Subject:From:Message-Id:Date; b=ATCbCC3wf58wWvJqhDdJySHhFtEt2K00+cfIi6TyxCD0hxqzLbR1MGqAXeMwVI/Yo4RV+87qrBE6p2MaXSZykQIkGmNZkCEt2LANkzIPox39eEkI7Vk7deFJ/LetqXGboVLtP6H0maKnvD+/WEgr+zC1dCUq+2dMkN4dVloPOfo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Zog7FZUa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Zog7FZUa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5EC5C116D0
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771965293;
	bh=YN6kSSZAPq2E+j2W3Daggq0Sl/Fdtpq1XnQp4WriFUY=;
	h=To:Subject:From:Date:From;
	b=Zog7FZUaJqpiKOU/a2G5oxoC41XPZLqoGkzT+EtDHejGma7TKo8I7ykdldLbYcc/H
	 mTACeFGUDoAz7CBPOX7fOpP+MtHskiWOzzDfG6xcwFHSHvH4/wwSu4QNQW/vgS9Pdi
	 ucw1wXopIMD46XHFD1kjWez9X14r3LucOE5dF/P7c3ltTH/jCGfwFg8webPuRYHRbF
	 61afJeC43+JKMDSC5BCTu5J8k1aNYuGWrwr7+NyxPGAOQhcuweANQxVO90zqfKip3y
	 9qP/CtHTgOtw6AWNeSEnbb/RDB4Bqtx3wpXlNcZ3gUX8aDqyJxVtVtufhMqW29V/2+
	 yC+KmKeaByIJw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91B4DF4BB89
	for <ddprobe@lists.linux.dev>; Tue, 24 Feb 2026 20:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177196529358.11857.17740555458433304536.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c4da17af56b225a3f54374faf4c9b387bc63bd20aca8964da9d9855fe46cd8e9
Date: Tue, 24 Feb 2026 20:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771965293
