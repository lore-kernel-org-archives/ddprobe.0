Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 46062171A5
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:25:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717269923; cv=none; b=LvyANElKMhwnKAw1ID3VwtBPvCbS7XMMoiWMDE8KBRo5WYk0EHQQINEel7iCOW1VoO0kd/XeKYNqz/ZYbvTR9ZKONJnx4g/v9+jHx+YZRTsrfC0ELBpnNSMrVtuONm2k6CuJIG3M/oRpByU/QgbeUKgsU4EN6znryAdraQg+mPw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717269923; c=relaxed/simple;
	bh=F7HzArzUOZa3MVNQ3fh+in1ErKLwUNkLNCKW0hcdj8g=;
	h=To:Subject:From:Message-Id:Date; b=aLUeKPMMa+NA8ZJfiZnrMmB3h0Kfb4lF0kUYnyTZyjsM+nF3c2yVxAlNXE0HKxS6sj/STxrDREoYSLpSQxvgdXB0L5GxdRs05DIltXwyBmw96QLY5+xXKPl4ZzCRG/aRQvGqaR+nZ/SGTkDjBGcLt4DMewOghXYQgRv0TTl066k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PMFuop3f; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PMFuop3f"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DB36BC116B1
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:25:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717269922;
	bh=F7HzArzUOZa3MVNQ3fh+in1ErKLwUNkLNCKW0hcdj8g=;
	h=To:Subject:From:Date:From;
	b=PMFuop3feoXfL121zr41sfUSHpEW0xEmAddj3GQXnh5bhUaD0c6BwaSSw1czKQpcY
	 H4unrqk0WzwQzFuVcNyjIGPfWvk8Q8RPek2NTiFIqhtCsf+32iWKsbVnfVdsnouMQE
	 j4udow5UG0VLQF3O2e6o3J33JsbOLQCP48CSdIPg0iwLtWh690lW9DEVDlfdnjGfrt
	 FiNaVFagF513BXk64pIXMvLC1nLwY0R/r2SZ7GkNZFr28+wAHgLbTFxFOwDWjbtYj1
	 V8pNhCpR1A+PAiJ0i/C9uVsyx8kC1EFDIEAoFu1Ji5ExL4oWNrJ9WrUrilV+YZWy8o
	 xlT8u5TObeehA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C7A75C25B76
	for <ddprobe@lists.linux.dev>; Sat,  1 Jun 2024 19:25:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171726992279.21882.12402891319627896429.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 33e21373d7c7ad32eb4e2cc6b01a2cc4f6c1e85bb7886d9da88709e7474ab7ef
Date: Sat, 01 Jun 2024 19:25:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717269922
