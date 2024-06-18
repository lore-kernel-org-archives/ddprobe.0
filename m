Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C2486FE21
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:09:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718694563; cv=none; b=vAQgRjMpzmRDGj3a8AoSgKTtB8e+GpHyqXcQKtvyUADyLtszU7ONzZz2ROGkLQl27ulYYdIUqKlqovfrMMoIEndrKv4NUPk8Uu5bOOnW7dQJnyMkz0D5sCgPa+o2aJqOfZCxI9RVLNW23aqBCPQ8goNN51ctMiqG88whAjOsCyI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718694563; c=relaxed/simple;
	bh=TPE+m3qQXBwy6PcYb+9iUO263bfEWYP74OSeLRR5AYE=;
	h=To:Subject:From:Message-Id:Date; b=X8kpQDGhq+jpHXjlHo07kiyQPrf1YbCdIQzm9XmuXy7/2b3qEep0K1lDCs+sqvQQh03qvoF8fhqRwR5OcmMfk0dKMR0YD6uDXhh8oJTGeWZ6s0ety9eXHoe/ptsS3NUWPBeAAwEHcs4l1ya4RF32L5rVwA7f1TIZhklYpUUddK4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JOoeC9FK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JOoeC9FK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DD94FC3277B
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:09:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718694562;
	bh=TPE+m3qQXBwy6PcYb+9iUO263bfEWYP74OSeLRR5AYE=;
	h=To:Subject:From:Date:From;
	b=JOoeC9FKcX7tGVmPSqHXR4aazceWXyzgtZeCFMWbSuBRoFCUfNLW4dtGlmFOa9eGe
	 n+3dtkU4RkIrdYc0wa1ut7IwXfk+DzN2qu2ewlQOFh44fcb/KqdyzksJv8ch6ELd+Q
	 x3DXXyHQLMev8UsTZsIhOKGJLmMkrDg3dCl31VdbaS4+W/KnodK01MduneKp3IVxrJ
	 +PI6q1Pu88tryij+hdkjQaRpY2IQMv+84e+1vKzk7ZZD9uL813VIpKlZNOJ2Jg+llq
	 1V5UrmA+qYqO6lZT0S/qOOcYKzs6c26HE4F/W10DlUDKYlQ/dIXQ9CldqKAGg0VlsU
	 2vp5q8OvGdByA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CB095C27C4F
	for <ddprobe@lists.linux.dev>; Tue, 18 Jun 2024 07:09:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171869456281.30796.14790141120133110999.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 302a438c708a92f02e4a518b3faa4037281f2af1f363cc7bdfee99241ae4fa27
Date: Tue, 18 Jun 2024 07:09:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718694562
