Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 468E148CFC
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1747522794; cv=none; b=Lmir/gXf6rf1rebqdoLczUe9TcZD+GYjQArW4g/kGgHUX/a2JLzWaZerc9GWn9UqwMkA9RiHbm1ZL+ObZZYR0lrji55MJpPbg6O936ZwGMavUscdFQQ8xRCyfFSEJx6zQTXKODXYJ4WP17db6rtWL0YarxW0YE9cojPvaI3kVaE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1747522794; c=relaxed/simple;
	bh=gKaxnG0vRdZtPS1bHhf8c1kfvtKKlEf1Ntdb4DUa+v8=;
	h=To:Subject:From:Message-Id:Date; b=M+jaNbJPElg1oY0LebvzdT+8AVRIUtKEHmOAjl9NLhMC0j/Z5xO0GpPeILvLtEvTxt4f6aBQLtghZ8uk4idX9BPocl8MuXWgP/S1EOH9R5bPF7hmwsXGCvy+WKx2IUCSlTLSYT/GboV+kfrktV/FZ8S6Ym0SMr6xOQZNx+ZL5IA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gDbPunwd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gDbPunwd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB099C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1747522793;
	bh=gKaxnG0vRdZtPS1bHhf8c1kfvtKKlEf1Ntdb4DUa+v8=;
	h=To:Subject:From:Date:From;
	b=gDbPunwd3Jp7s7QnzL+FUh4qMl/yZ+WUmz2CfYKejOgxZoPdbqxwU9GCYAmu1NZl7
	 7rbK+f4dEca36eJFBdqxEpb9GtRCuAyMyHVG5YhJ72/yYrAatWlahmfL77MotvdN10
	 LASn8YaMjnQQJOGOagRzDF2qRkDGDYsa9QgZ4TInyewJkTStid3iUJe2AbPVoWUSAZ
	 2/r+9aMRhxOgLtzRdLhfz25hRQG8hPJl64Ctvj54JrsWEDIGQISogF7SEPgBWHpxEk
	 a2suBKCujQVT0nCS4pfLXlTO8qJHPHSYGMO0Mbrqy+/Oa/PSeH3R5saJKyY12Y/xUy
	 y+D1WLFC/zgeQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 95920C2D0CD
	for <ddprobe@lists.linux.dev>; Sat, 17 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174752279358.25557.13452477259467509473.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e246d2f75fb31158d3020bfb84fd5d58e5a9bf31c745d6420f93984885cb80c1
Date: Sat, 17 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1747522793
