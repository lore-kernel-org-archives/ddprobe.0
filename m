Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73D16368D74
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792164634; cv=none; b=tIcOWC3eSxakBnFlLVXx9mE/RojUs4EoOPvVKIhxNkyaiC/gemlJQemA3eq7wfTFIvXWq92GwJ90gL9D5VpSZE4PkQ0M2ubBVJLM2o7xbmgckt3roP/5iCwLFTbvDLsC0QWkiAaCB3GM8lY05qTiLPunvoQbseCa5BsECRP6LAE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792164634; c=relaxed/simple;
	bh=DnUpxROSmAN4dupnsL6FR85gy8mMOFNMrTVA86V/NNw=;
	h=To:Subject:From:Message-Id:Date; b=J881YSnqYAbtWk97IKfRvd/qKy1WUKVgWTIgloe0fm1eOdEEJ2j1ffu3t4ks2gF8Sc3/8IQGIrvxtWL24F9A9cCMcCLJJ9A4DWCaNWWpPjsYMhmuO0TIPd4Nd/PKngVPZtqqDBeYevBoKS0TLMlj4pb8c5F2Ro44yFvXDmtjUDQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=B8nguinS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="B8nguinS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E223BC2BCF4
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792164633;
	bh=DnUpxROSmAN4dupnsL6FR85gy8mMOFNMrTVA86V/NNw=;
	h=To:Subject:From:Date:From;
	b=B8nguinS74ZwKpUGSXpvMS+LmEmTkjP/6AJUHF1wEwSkhsPAQnKCQr9QHPwTSTiLm
	 ducDFX2EF/UbKlcBs/bHa7NYO3JV9IJHdaiH8v7TQYATyJ8CiugIZ6o4MRp30iZD8e
	 q7vxj2f7diuWFGN4Ial4mCabIQvRHPKfsevqszfYHJe7xBra4wzIQujV3OtmVpgzVo
	 gBYteXNtGS//p5Z0mjm98P+SxxK/ct+MThF9hHOhbphbVOtERjv0qCdOAuEv2kPFGb
	 vuaZDpgVXg7s+2ndipLmmPC0CcldmBDxeN0sS2cFMYvM8aMpbawzp3EPg0juCVCVY9
	 2AfO6KUdYzwOA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B8C65CC6B38
	for <ddprobe@lists.linux.dev>; Fri, 16 Oct 2026 15:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179216463372.11097.11580666519461766122.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ace26a36e283c534336749e48c8bc944a2ebeb8031f93e19caf8cd6edb3dfe4d
Date: Fri, 16 Oct 2026 15:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792164633
