Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F74240DFDC
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777128454; cv=none; b=QeHUAgon2hUjGiKNRnx/8Gbq2Ms+8ScjOY7vCzaZs2rjFkOCAyqFvMuChKHCPcwc1JarWq5QV4wHf+vthezhx6ltWGc4ZjZs94p8CPruhPxkletYkELNZ6hcUm/qOli6dZdV0UcGAgFHUskwlfKEB1rbWcJhGwWgUXVsVP5LiCQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777128454; c=relaxed/simple;
	bh=bJVJQ11VNLWzJllaipPuO3uHQ77ap0qd/1bJFj8zk6o=;
	h=To:Subject:From:Message-Id:Date; b=QPhnTtyfkoSC3MRUL515GRiN0wsmmDStsOj8eouoCmxvb5oScE+C4XUZH55EyYrJjcB65GWLtoAh0R4/BeU8cycXK63YApN8FA61BPGCX58GHvJ0q8Uqs1tRCBRCdhyN+PswOnFp9I4ByhU7eO75bmHHVPXwVU43Dv2v3QHBDA8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=H0B9Qix8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="H0B9Qix8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7808C2BCB0
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777128453;
	bh=bJVJQ11VNLWzJllaipPuO3uHQ77ap0qd/1bJFj8zk6o=;
	h=To:Subject:From:Date:From;
	b=H0B9Qix8Y7CPaLRqh5v9/0xOJXvJSRPWTvaYmOrgdzseFjeKBhRw4GTxBz94Mc64f
	 HVu2BQxoZqKirKQuA+vEu7MK/85NohPUiNR98Df17qlVDJnHbtiDZjTwXK1QcQZSzm
	 trYluaG4Zmr8O0H5sBwiEXL3iRlp0gRAzKiV/jrzwE1SbUjuQlYz49o57tzf5MGVGz
	 7xC1XuWCJpiRd5eZKV/+w/NfNOVRQ8N5k2mCfiQD8I0DoaoAQW7yfWrOgi+S7LMZOP
	 30moGGCtlKk7ahGuIBr9yz4dInxi/jVRQIKfKBkBctfb0qCBQOISSkJpsy3ngBz+MF
	 VJSinacs09GPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A959AFF8860
	for <ddprobe@lists.linux.dev>; Sat, 25 Apr 2026 14:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177712845368.3123.17385490594183586189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7375d8e447de69585ade4dd5b0c1679549236cd3663289d28183b31fa94f7db4
Date: Sat, 25 Apr 2026 14:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777128453
