Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37CCF347B4
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758286794; cv=none; b=PwgYUGyDdDTuIETTcUaAazvY+Uc+OQmTN7VeBu3gFjbSSHjYcn2C7u0MF5DnTy4O4gFb1WDt3J8i3ACCpytCDv+ZQnKjN/Hsyde0OL0Q6B2FW3WavXrkwrvQBLqQEnDP7QUBfdQPAQeQd2NX3Wv4o8icDBjYXc0Wku/3bcIXut4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758286794; c=relaxed/simple;
	bh=5gZxHaMM52XhAM1bBzAkTJjUNAh3naY856kMBSls8bk=;
	h=To:Subject:From:Message-Id:Date; b=p/DfQJyEs9xCHmZj1n03ixKVF7Z/xXvfoOwSjfH/qPvDy29qlZmFkc04gT9cc6MdT0mk84c6TDv35VfKddHIAeDgZJYtHj7v/BGdWDVGgAzAiPiYsf+HhmQhQgMPCvjx+Av5OzaW3KdvbcBpIbJ76dInM7S+QJbSzUAEvl5KwNg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qmcTefw3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qmcTefw3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BA474C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758286793;
	bh=5gZxHaMM52XhAM1bBzAkTJjUNAh3naY856kMBSls8bk=;
	h=To:Subject:From:Date:From;
	b=qmcTefw3LxgInFwdFg5ciUW8/AWfGxwIqFQAs+BlU95h/ySQpNS5eZsIwPhXtLTjM
	 wcXNd1Bj489VE/UYqaIyCTg1MNYSmzjiFGAB/HaNzy+xQbzgvJQ2tXus+JZaQCZPPM
	 EqP3+E+vWy8AO3H11euQPPu/OPxIu1s00kJQtUcKWSVwQrNL4rnVjP7ljksxwkybJ8
	 KdNjCCXzYUTOwUaB6UzjSRMpIkF+u1gt6ieS0XPfsH23mUUmgsTnyBhSy7bX7BPbiy
	 AF/IggVPGb/pmKNFlKbRxZ6pk2ICmKOVhwR9zyAKiUmbiPwLyPpv68t7FKpmVO6vNQ
	 2hxWhTOgTtmGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E28CAC592
	for <ddprobe@lists.linux.dev>; Fri, 19 Sep 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175828679364.12025.12329347835090272625.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 46d827068ef22b46ae4816ea5f18d6f2d4e25d29ad9f279274bd1f999e1a6303
Date: Fri, 19 Sep 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758286793
