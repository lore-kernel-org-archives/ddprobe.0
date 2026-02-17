Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16AAB3EBF2F
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771289694; cv=none; b=ZX+KCsOLNTBqh3hn3dOTlKnxVvYctjFzKj57wA/MVdoi/h8WMZU5dFynNX7bHVJp8uVwSE2d8FKGfz88Qh9ARsg6yv/aKNRH9CB2lW/by1W0ZcEn86L/nKYwDDRUmxH1tv4EoGQhmnZ4gGSE0Jqp/RWfGchIkykHZZO0XQEhdYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771289694; c=relaxed/simple;
	bh=LQlAOx1oVkr+Qp3y5xvrCirQex4GlekeKk1JRqXbyhQ=;
	h=To:Subject:From:Message-Id:Date; b=R6Kuo3YUAKPIH4P9Ni1swGQGmT5Pd7DB/YSri9u08PS6Jc17rePOmmGmusLHT1uye/cTHv8JDlg+NBmpM0H5/NKvQh2Ha6PlpBEqeQUrN2HhhfwcgT2gxQramShEfJfWzDB5HIXTzJfbS1p5J090xSCFzGusBAE7X5aa2mKOncE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=BxZjzGcY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="BxZjzGcY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0F13C116C6
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771289693;
	bh=LQlAOx1oVkr+Qp3y5xvrCirQex4GlekeKk1JRqXbyhQ=;
	h=To:Subject:From:Date:From;
	b=BxZjzGcYanFyCTB+dxx/cr8TeukcAEz0vvp9diSkBaJm/s5jp060R32wsR7Ee6mPD
	 3E8ILj7PMvfjYlq3jicgWivgH2x+rGQJCW3VCa1pNufyH9z0MPjPfbfjlgb9K3QB5C
	 Ysn40eHn3hz+lGWts1s6VJpknw7G1KP/sI7XtHJz5MIDPiAocWxwcdiu85v7bcoD6f
	 2eKW8pAyaw0FPlrUvb0EGxEaDI1JeI/jGVa8pKo/Yt0VNDBMHIIZlfsJOjG196eIFz
	 yaUNP0IBmYlqP2JJ5R0EL+g17YyiXQyXz6PVbm3qxFlctiikc5JTWTmpoCW2fs1QyP
	 4fFrZdbfldq6w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF2EE83847
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 00:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177128969358.27260.2586456927535603429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7c3dec9dce709ef8c41e8bf1de26fa3aed5fb3b1cf79708952182d6a962d926b
Date: Tue, 17 Feb 2026 00:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771289693
