Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3C72E2AF1E
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748590194; cv=none; b=FPxV5KQi1ZFF4FhQ4GlKoxHRCljC8YHV3Qp2CISdEoq6PvbGh1nKdOYH7blhkRp02XoW1KOtdJu0tX7SC2v+p6K4vSWlk15ZUxKO/qbw8gnKu6AkL5ccCViuzvBop5V5x8eygkqVfJyhpHfvVj9PJxfzn+VfjWFwKWbBob76RIE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748590194; c=relaxed/simple;
	bh=sT7kCmTgx5OzDWjXRFxzWWpWfuR8RorH2Gg917i4x0E=;
	h=To:Subject:From:Message-Id:Date; b=Pqf3S9QyHeYBhdJLTr6sXgq1qrdb+ncZcs1WRdqTBbAmkvBaOKke4XTUmaT6r89B1ho2jYfh0x800AWOx+ghecff0yjaLaJEbgBgUNWAVx+JrGfmWX8w4F3ajJnxTQO8IZzfm0Lf6WaAHgPRFsti4iU6LebrH4wZZn9hpgZJJ7s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eTx1ujCS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eTx1ujCS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0070C4CEE9
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748590193;
	bh=sT7kCmTgx5OzDWjXRFxzWWpWfuR8RorH2Gg917i4x0E=;
	h=To:Subject:From:Date:From;
	b=eTx1ujCSqe9jG2CQwOK9+kV70t10kbNInskiHjf5E5p1G4UtdJXXZqiX6xwQmjVd1
	 3aA+F/rGoxyrOvsf0U0XVixBLowI5EjT5wCkmmNIoKa0a2cMYWhmDVf7jZdOZI7Oy3
	 r+BHIwX/jf4FnShQAS2ULej6y+fffm00z4G2JpSiwTN0OLwJkzI81W9x4dWVy8WYXm
	 yRqkA9PerEhxE8kVYkTDTmauxQGRFJ+AYJjBfwX0bESHZrXoo3QFzWutVEOPUl0S6v
	 kDKPsnMfKPv5BmcI14H05pRWhAqbZU0A1sium+5K1MMaNQCgyTWMv4tSZV8tY9qkih
	 XFLHc0QlWoMeA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E69DC54F30
	for <ddprobe@lists.linux.dev>; Fri, 30 May 2025 07:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174859019357.16826.4142700381063086327.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 47bccd78fb786b5798f4192b1e851d067cea15621fea2d1fc188390573eaed34
Date: Fri, 30 May 2025 07:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748590193
