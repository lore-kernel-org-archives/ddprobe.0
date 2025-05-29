Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33A3A20299B
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748511594; cv=none; b=FmAJwJ+WOjdKcNTcj44plSk1Bs4YOrhPfK0f2pq9ejrYtRnpFvfd/CPeNOvTbzcA0gQanMLFg8BmhQRtvoRrQblCbHsbiITPbYBUf598yWPZUWUWu+jVg5+qd5YuYEi6i5AmjeLvFRIUwuvUgoZTmSj/dJowr3vs1rIbTfcZ77I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748511594; c=relaxed/simple;
	bh=HPCGFkbPs6/LWsfB2yR4mQDDZF/XmWZjmIaY637zHig=;
	h=To:Subject:From:Message-Id:Date; b=cOZtrPloa+6Xe+cyxoJrH8YvXaYHseB2p0c+9gJIC/3n7SAM/wt34MTK3TSuaF4p8cP6d3JutjyDdHx+ecGJ2cE1LBUuH7Mn52drkswjf20YXLEOqtJG5H9qIAQe1ixJp3bEDaagTMWRyHoWmphhnt0Mn8MZhpg4cDa2IVAr6Pg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=oxulXXWX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="oxulXXWX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ACC8C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748511593;
	bh=HPCGFkbPs6/LWsfB2yR4mQDDZF/XmWZjmIaY637zHig=;
	h=To:Subject:From:Date:From;
	b=oxulXXWXfxlpUZdFX0SZXdKRG3Yes/9k5bJscl+MLv7EZLWVKPFTZ6guKx09+9m22
	 H0clbDvT0owhH6WKmW1idIvZRMm7VO4g4V7PDpEDgSlMhOA+FmuG3+qsUJCrMn0QCp
	 RkKD8TdWupfzYmZ8b1kgTpec/UQzVok02lhbd9peVWC+a+L3JDDkO8epstXvRjnb9O
	 gIkRXscj+W5cJC/K5IBqQzmmELtTLEwb8eOEP41DXner4YU3n3rr7NNPMn8qUQNrUR
	 o2IM0EV+YZn5WHq8GrdxM2y76AvzMGsiSEloSmTDsy80dtgmamZHmGiO2EQBApWO0n
	 viyKOSeKk6nOw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E1FCC54FB3
	for <ddprobe@lists.linux.dev>; Thu, 29 May 2025 09:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174851159357.23280.4761479050794124862.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e768b12f7604934f7b8f487ec9e4d741e62711ebb6e07c81188a6fbe1fd2273c
Date: Thu, 29 May 2025 09:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748511593
