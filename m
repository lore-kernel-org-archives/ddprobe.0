Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 225C21DC07D
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 17:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729186554; cv=none; b=NozNKfnFl7K7sG8oaZLnwY8ROBBgD1TxBSRzlGwGrjcb9xzd+TINh40MQkvR/7UaaljSB+XJR4EIDBNTM8Yw/51AAgOiGNXd8o+cdEi7wkagaMIXJKj6SiNXPouKgAhoM34zXRp79QF55/2wvCgx1zSkeqnVGmnXWYCZrDBwBzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729186554; c=relaxed/simple;
	bh=pNxi/tyUTtGc321VwurEBZi/KsM7oYzkA/4touP+Gc4=;
	h=To:Subject:From:Message-Id:Date; b=n+uMWg9sKViZPWHF32N+yNsS3PYTdjl0msPUUHbDsSzAxO7nCDP0Rx2t6P6SvSLzSbcTh6Gf3AfR3x/4wt7U0jhwwrs+/xf9U3XpMc+N55Wqm2JuWiygZ1BcvCYr7EmMXQGRmdX+QKUP+hbaQvVVtH66qiHfy0iTbOUe4vvchMs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tvBFFKPR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tvBFFKPR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7984C4CECD
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 17:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729186553;
	bh=pNxi/tyUTtGc321VwurEBZi/KsM7oYzkA/4touP+Gc4=;
	h=To:Subject:From:Date:From;
	b=tvBFFKPR/LJ53yDcksVmu3JxWQxqEWSuShhrMl4WaAMyI3AYvdzdtC2XZZy+dryAf
	 6N3tBvZ3DNa7m9v+8ZBWWM4mkWQKHGywURW0kc6Z22voaHghCP5+fDL+XZK29xweve
	 HaEcAm4Fhj//duGHg+7NTW/syopsdcif/4/NPqN4k41wnPvaqaEfkiIbmdLvNc3Rq4
	 WLvTVkB/PWRlhXACs6JjJ/3a7kl74WxJy6RRazDCARXYLiMICgBpSY6QeR2E+hjc/X
	 vLop7Et/d0eTo0hJrxJZOkhAWL3fHUknPqgpQteyWUWZBMz1UWM/a7oCTT4wJ1V/bP
	 b/B91UvdiOK/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9482AD3C526
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 17:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172918655359.2115.7108274205568537029.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8bc9ea81d19de298480c50298f4621b421f349c83e32b16536a694ed76f1ae28
Date: Thu, 17 Oct 2024 17:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729186553
