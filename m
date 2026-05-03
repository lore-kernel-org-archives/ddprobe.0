Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2DE6423D7DC
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777786654; cv=none; b=N832Y0T9YQm90e51WDjS/XFFYr+jPDLkB0MoPMm4Vn0W/E+dSCcC3WPA3IagydXiSg+wSUKvtlh2WyLuYi/b0D87Iu5+uJYUk+PvTTPpuXVjXZCOW82OqW562zhIlAipaMZm7y2MTruKT8qurfhZvCT3jZPPQvc4I9k6fCB1s6A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777786654; c=relaxed/simple;
	bh=awZQ5+eCHRu6WmtsfhCTIea7B8Q8I9rINwpRyY69mUY=;
	h=To:Subject:From:Message-Id:Date; b=EK8VExhuxfL21mzNo1dUiQelUuMYImyj+spQgMAB8loOd6xVTIojysQL/qhIRQRBnSH7icwO/7xHIDJp7xWeQiUn5U1gDceYy1Jw7Fbr+uU0O75KlVckrXYXCfe/WTcoryqF9BASi6345bQn43BuOIoHR+X+Pev/oMSp7JYMTE0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Xn3OwD4X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Xn3OwD4X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3CB8C2BCB4
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777786653;
	bh=awZQ5+eCHRu6WmtsfhCTIea7B8Q8I9rINwpRyY69mUY=;
	h=To:Subject:From:Date:From;
	b=Xn3OwD4XW08VDWnUMR8oy5vV/aF+WkdAjG+yOqwu9j2t9zPjxEByS1mq5iv3INWf0
	 fHx0x7sgMidPHXRB12g9sKim6RfA5gge72Tz9N4/FZHCLHsOko0YdUx5W8v3qk6p9d
	 oimxPYej/N7YRnNJsm9+UHjWd0HHXhBZjKaG4cV0UuLXs2f/0yuJVAK9sfvNL23vDF
	 TQl1GAXZTRom8LtknvPO0RLSv0ZACQQp3N4/K0T3+bVWdvJMiRRESh+/btnB1Xq1/0
	 u7/FXbOFqgBpCnaNERN7shk5KWtSiuGGWpej2/5pOPgjv7onyLJeQXFvzFlAXeYooV
	 Ewz7IUF0AEQhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AFDC8FF885A
	for <ddprobe@lists.linux.dev>; Sun,  3 May 2026 05:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177778665368.20344.17897953848054341386.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d883da740d42be884c45def20b1f7168839a9e02bd7aa3a69a9fd63e5a5854c
Date: Sun, 03 May 2026 05:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777786653
