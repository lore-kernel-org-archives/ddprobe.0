Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 28BC6485954
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792007434; cv=none; b=W4UR+8clNDdmJjQc1uN8qIJKa80RHzZmfJ+JcqL+xODV2klh1l10sTyj1Y+Gw7WMbFZF84j+Ouu8OZNQDA59168YW9dgePlzyvpVhdEwZqxrQpA5Nglsl8jyF46L3vm71n+32YEdQ9is/6jDYRMACG+OPircfi5+dasFHkzIR7c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792007434; c=relaxed/simple;
	bh=+Tfnuuvr2ImSH9kS9ZldN3CUG1FgmHH7/FNxgBM6hMs=;
	h=To:Subject:From:Message-Id:Date; b=DgDtfvJpOmHqQQxm0bBQyVou12+q9NTHk4L7Gk+P6LdfYNsWHfMPM9B+1JA3v9Dh6hIrPCLyVBJKtTUJd/TFIoGtFJidQOcdpdbYNn78rhDOZB9B5ZTUefSwdm/+Zh2i4t75eJzVDGoLqZtBdm4T2GHkLKrvMkBynX2RQJy7g1w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=asjkwTdr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="asjkwTdr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8C36C2BCC7
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792007433;
	bh=+Tfnuuvr2ImSH9kS9ZldN3CUG1FgmHH7/FNxgBM6hMs=;
	h=To:Subject:From:Date:From;
	b=asjkwTdrC85d9zw8y0muz53lEZSpJTfjeBDKz3W8/3vw524kCWuAhbBbluw+knjK3
	 aIacERpQNRmtXsUeFytD3adr7EpyayH7I4bq20Xl+6SPCGEkX6JMgced7SPI4EFpwY
	 nP/BnpzJ5AGRhIaJLinIu8QiR2E8alYUneknwbQb2oZT34LhRY2b7hfR9z5y1UbQfm
	 /UeCB8KMSzw6L075lzE48YBPk3rXD3txlSf4cb0H9Iy2W+HID9RTZ6zvV0am43Bxcs
	 EtvL5kqo4tyblSEH/TtJBbNtay3mTp3EDc+5ptC3qKzY8EWbEbNj8NMo09Jln9eDv8
	 Iow6psR7qpHyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B41D8C3DA7A
	for <ddprobe@lists.linux.dev>; Wed, 14 Oct 2026 19:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179200743372.25775.16647218601282120117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 960d91d6512f8cf1dc1aa69a91676a546b229f26375bb2263afc7e69c5c925f9
Date: Wed, 14 Oct 2026 19:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792007433
