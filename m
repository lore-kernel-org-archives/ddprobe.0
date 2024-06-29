Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 542AD224CE
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:54:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719640463; cv=none; b=VEAxeWV3WX9UwdXKaf992v6phgWwXiC3X7J9gVLwn55Iu/XuysR4HZDk1tgt32faBX4BepyN9xxQd0oqB6hp3JpfzhMrE6y0JvH+LlW8+Y1CgsxyYZw4wwAkSo8I+qxG66obgKyM4qoBNyuTEUSfgHyZ1JqJeHd/5YMqa6VsKlQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719640463; c=relaxed/simple;
	bh=/cp4mSOUuSjHjGT1zonzMPbyrsPgr20Sw8G8d1r2Pew=;
	h=To:Subject:From:Message-Id:Date; b=GaGFC1k8e0lIgz1qPkusYtp9F1Rqmc+TtxzJiSyhC+SHaWvGKDsed+V4JTfKbHaUF9JTfTIFd7GVHOc2QAkg0e0LoHYNY49LBo2azhZ0F8tCa2jf1xK0cjy9CFioTsoIH12RgTdc0UkQ0QTkBLeMezVHybPfzzWkd6z+0hCNVQg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=biUWZIjY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="biUWZIjY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E85F6C2BBFC
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:54:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719640462;
	bh=/cp4mSOUuSjHjGT1zonzMPbyrsPgr20Sw8G8d1r2Pew=;
	h=To:Subject:From:Date:From;
	b=biUWZIjYSMt8Y0qy4Ia5ZD3kufB50fks/0dcVd/W13Pkmd1OyTel4JiWx7RNtOTS/
	 6fP/iudNgjh376JrjGMvtYegBLWpVHhG60IZkjMui2TZ5066u4ZK9KJY7OzW2gd1Sw
	 yuPYVfStkHm51vhj3H+5/pWshRPIoPPwsucbaoErIlA1ZuMqDd04gi7g55K8aSMSuD
	 5zrex900i8ecAHvdHX9L5sjwyBw9MTjEWh8+pToP9kpbpsefTU/EXWXzWdSc2td0nG
	 yBRGiPL7Q7BxzdntYQW4emVZ4uQe2lvEtRP2MnIS+3dneWZg4AyEYHeUQ7PbHkTlVW
	 znD1zMv8+3byg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id CE2C7C27C4F
	for <ddprobe@lists.linux.dev>; Sat, 29 Jun 2024 05:54:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171964046281.26414.3057500122068105348.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ad47de66918dc1e9842aeb79d718b0a8643e373fbc848cbd27c71cfc2bcc2f2
Date: Sat, 29 Jun 2024 05:54:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719640462
