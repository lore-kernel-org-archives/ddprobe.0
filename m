Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2E05E3D45CB
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786963234; cv=none; b=kBgUyO1XNIr8VUcSOqZHA9uMmaeaISTjnfJiUyetDWt4vLvoS3zmn8MXS/jxKXiYqTkMkBj6bsgso2FGxUVFX4OMA08RmwyyUgBIIFd3jslU9bITIanGhbrQL5CYJcXDPEYIt9mo+75HuBeELjP7iqx8hbDhs9B7Q044p1Qa1ks=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786963234; c=relaxed/simple;
	bh=CyY749Sl2i4dbH0oeIgtvhZ5cbDZS9TUk14YNCwh2VE=;
	h=To:Subject:From:Message-Id:Date; b=DLrzVC6PJmvyIfa8ET3McXsj66kI4fkL79vPWU2ABlXV1VBMKlFjRpwKJPuErNKR3T0nOzvaLKuAn4n4BqyTBIuXPSlQEHJgEuboLOXX+5/sGC33BIB7w3JvZQULIKDztvEj9F/rrHke/stIp37ScHXsoatneqsk3NG172jELWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YMV59OLI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YMV59OLI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7387C2BCB3
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786963233;
	bh=CyY749Sl2i4dbH0oeIgtvhZ5cbDZS9TUk14YNCwh2VE=;
	h=To:Subject:From:Date:From;
	b=YMV59OLIeV1R2Oji5Wy5UN0FG4S/B8PpdmXIK3ippmM6qOkkHrgqX1WnvyMpbqXRE
	 PDkD6ICguNgM4kNRXn5nxFhOXwOKdB63Ej/L3fo+jY3KoJ1A8VxMASCSYM/LkjVHaZ
	 Lw3XLRAm7UVAlvLfbOtsi7L4m9tfa2004wNAg9KTvmklQKnqej/aEy87UOMysWVnQM
	 qWsUA6E+xPvn0iTVzqb3sEs3Z2MhKt6eQ2aLkvqPitd+VB9t5NwNvfAupZB3zF5Slr
	 3YCWeWsMoOvTBhleEvqoJMgrsNLS+9Tm4o1RqiA1D5ghFFQSG2z7tXvRAqi624QAsp
	 pHY3QJJAHY4qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1E8EC5DF66
	for <ddprobe@lists.linux.dev>; Mon, 17 Aug 2026 10:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178696323371.24846.2822749368358264788.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d68cad9c005d2545c9e2088c1c19eba67cd81f1da34f6c64c87fd7f5e243057
Date: Mon, 17 Aug 2026 10:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786963233
