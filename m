Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13959320B
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751167794; cv=none; b=hhmCexUGCBm0rwtxMqcd9t7WPJZEcVdSirSkfTHPD1rjO9ejGu4f9GGCaxYfwnuRjGPX6ERFKR9t/aHGbm6lhkf3KzpeY/1tDxjGFlwRWz1jzaCGtxM5dmq5QbLgErzCjovqtmQ+oMrvqM/vBs+DfPcpoHgufjY9Kry5EIWM+nY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751167794; c=relaxed/simple;
	bh=tNt27shls41To0mOluoACnl3WnBqOR7oSM2U+G68wkE=;
	h=To:Subject:From:Message-Id:Date; b=uyBuTVSQ4r6vG1dAcOrh/QlFgZURZx+Jx5mG948QszcLOluAOTYSnhMwZBcZS7dcl6eGeNg1XhTsEdQiIMV73NCHLOUZ1d6MQpUcMvOEQtHpAzmqEg6aB8oN12OmE/pkMPhKIWEH6mnYAxaAnG56sIyAukr67h27oUXrAA3BUmw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBYV9J8d; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBYV9J8d"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F1FFC4CEED
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751167793;
	bh=tNt27shls41To0mOluoACnl3WnBqOR7oSM2U+G68wkE=;
	h=To:Subject:From:Date:From;
	b=QBYV9J8dYEk5pOgH7JjfAudehfnLgcGsDXf1Ux4dkUhL8m+8xrbgpd1odY+yyKUL2
	 LK5k6trAF1GfG/f5jhb2GS/cFZi6Zw+yXPsm0q8S6HomrqUSFTMPxRrjm02zFCezTf
	 mAPsIanzm3bhtOdMTq+W0aVUuvS3ewOMconhgVh0owCbOnGieTQvv35BenbDT7l/BC
	 JWXRIl7Lb9qQ7LGxeJSbwsvVLKqOtqe5m1N0YzGr81k+mUso5s/0hxX4OVa+cpDH8G
	 Pt7PNM8mflheVznzIyqUPjpCrE7Oh9x+Oo6HVn0uz3G4CpXQKpbS+KulzDDbdaoCcd
	 h3Zj0rB7WcEug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F5ABC54ED1
	for <ddprobe@lists.linux.dev>; Sun, 29 Jun 2025 03:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175116779357.5932.6981323988307018878.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e266727a6b5f6fc39b3cab506817623408374157ece2fd216218f197edac4fe7
Date: Sun, 29 Jun 2025 03:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751167793
