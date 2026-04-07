Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 85BB236F419
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:35:35 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775576135; cv=none; b=aAqI6IjjGPabVFfOGxebJ2Fe73Fc5kLQzj/Zyu7POgdHe+1T7IjRv5+cKK1jjir/6sI3/yHMJUbeWpZYl1Y5DER+bQ1fWYXtwCsTauyCURS0dyEzcxTTzNIK8Mq3VDGiwWsXwOcjjZMydemJEikmf9d3ms3nwIdJPkeEuj1j1MQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775576135; c=relaxed/simple;
	bh=rjOl66fMCtpwhMvqjPM18Umkqv7PG9jQw8E9liS6LYY=;
	h=To:Subject:From:Message-Id:Date; b=fx5WzIPy+qYv4/l/fc1/tI19JsNw8QsGAg4JT1MZEH0v++S9fV0DG8bjTKhm+guc3KqaeD0fabR9wAuDR3xEYkxKnEzFqs79jE7FcjX7US5Rt4XkDqGNAGn87il6q+EuARhngHblVGoniZw8rS84paWjJNYG5BWl9V37ZBHVtXU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=T5X8bV07; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="T5X8bV07"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C8448C19424
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:35:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775576133;
	bh=rjOl66fMCtpwhMvqjPM18Umkqv7PG9jQw8E9liS6LYY=;
	h=To:Subject:From:Date:From;
	b=T5X8bV07/awbuUDMQR78dxG+yYXvKVsuO5WLv5DDz+DQTJXNrerxqIYY8K2IMZIF+
	 v36DTsFndmKYe3h3HWO/bwDAEg3zrGeWMvvkwe4fUfrCkc0xBblzvGMONWp9HUZIrE
	 6/Bc3HWVEc1BL8IY6YfmiMF0QQLy8w9h1hZbz+CMTkfFkoDVOg77z1t9afQiT2yQVF
	 JfS0BGXLlXZAb1Ak2xttrNutH2ktw24JlilZ8fKiPCPL0PdEQ9E6VMLbAojkXVAR0X
	 R74SF++SwJGpLP34WCByNOrtlpgSJgFEU4wSsxVEMN1V5hCrtgWv0IvHZGDlJ3su9Y
	 4hjTWxJsVYoUw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B533CFF5108
	for <ddprobe@lists.linux.dev>; Tue,  7 Apr 2026 15:35:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177557613371.3904.2828797654062651891.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1eb11a0fceaf2d695b9dbb55155eff79977c825d014ac954ff752fbbb9897c01
Date: Tue, 07 Apr 2026 15:35:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775576133
