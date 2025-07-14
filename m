Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F05F33991
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752474594; cv=none; b=ECTp46ZxeUOwvX4EYVYHKOkJz8fPwRotOsvt6cvf0APLShGwhsRpSrOio9yMZYX/+9vaHgAShxnBrT0/iAVJrv851N7/TAqOQxKJ0tutV7u+tUu/difb/h49FlvRLuCtyKrQhhlJOz0ToA2IcShdbpul9N11srz4voahMdbXYTk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752474594; c=relaxed/simple;
	bh=hnd7g6QaeSFNnu5yG/NEq0QD0g2x/ICPfz3lcyQj69s=;
	h=To:Subject:From:Message-Id:Date; b=of7mFAhcsdaN3l/UBTPaCquRStC4WMji5432awnvjKdGQiEN83BLHIK7NrCdD836g8S3OleESbPh1lReb58pgHm/yASSugF+tIVoo22Ixs0fh40FXobVF4zJrgynxKUhyDW1e3MQ4Mbo78s/8URa85u+r24PuHp3zLveUumdvzw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OkkaDlZ9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OkkaDlZ9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A37E3C4CEED
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752474593;
	bh=hnd7g6QaeSFNnu5yG/NEq0QD0g2x/ICPfz3lcyQj69s=;
	h=To:Subject:From:Date:From;
	b=OkkaDlZ9cm/iumKJ5hsflYleZpQAGv7sUWwrE1JieYQPRzKsXiwcjwtOW0X4oz3wd
	 l66krlqy5jZhX2QRHSeGyx6n4AQcNQLQ/JOTvhQkdTYWST3MlYD1DPsE3//ZCffWTg
	 vW8oNamEwdTD7wkrSYEzt8vex9XpHmY0y6E8imuYkUxYIfp+5cW0UpshMU+ZhXoLeI
	 6IAYMkMy2XLvd/B4CA7K25Qkiiw51Cbjxp09YGbHpanPvU66YS+BT4Nu9zu9ZziI4w
	 7WWZXSmtVBXxpsIYTIVLA8jlxYvSBU6IFiEzy4weGWshgE6i5d0t737c0kPt36QhBD
	 FlaKq0f7q7c4A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90744C83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 06:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175247459358.14362.461366806106237966.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c8dbdc250a8aa541c52493b23eeac86085f5bf5f70f251e7db308754f895cfe
Date: Mon, 14 Jul 2025 06:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752474593
