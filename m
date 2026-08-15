Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 47B9D313534
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1786801834; cv=none; b=W2r7F/MH24Sg2w8yOiDc6amwpP4nYsLYca6MBUERtgxXYAkCaQc3wY1rVQbD+jytbGmm+2+KPq/FARI7FfHXu/ykGQMBax9FQ7ylOb2UqN/zwF77hjcAD9ggs1/1roh/IAmnR5Vl1dsPoaIqJuLCJDH6qa7yM+s6CzeuYru+BQk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1786801834; c=relaxed/simple;
	bh=aM5oqog4VpnebJKTQ5rFwxrrWO2Zp4E+NGwPZEoYoW0=;
	h=To:Subject:From:Message-Id:Date; b=oAIWDSOcpaViqEzwDZztb5f3ZZf2irhxgKN24irn3TZ8K8HkCLonmKx/4knjlqSYju1TQso/+JwfrQ/7Tl/yoNi0NamD6CmkbuDVEwpxSm888tJwonr7pqjeeeQbS5FLA+biwPF1VCfXxJENgO/211IsbS3G0A/3wfgFUPfxnls=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QXBkcpdz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QXBkcpdz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CDAAAC19425
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1786801833;
	bh=aM5oqog4VpnebJKTQ5rFwxrrWO2Zp4E+NGwPZEoYoW0=;
	h=To:Subject:From:Date:From;
	b=QXBkcpdzWNeqejPhbLHY+hK7UZUt6364u3iE9WZRv4Zxe4c7ZB82L+gM4sXWe5LdF
	 eESS80NOzHMLkU0d0SX8dq9HHwCFjICgEZu0ljf+ReY0/wBDLmJVzBByQhEUyMsB7w
	 hBy/Xng1+5M4fix5r9m4KB8uS2PDXB2V5D34K0eO67uWzAIs9uJINtd941vRMPgxxu
	 /mOIKBIIk9x0SuMs4yS7fORaEAYnM6U2P+4CTHCmYIx0H3KlIhb3MaG1LWPX6KdlQZ
	 bkEnPydCwpQtXLSCBP0NI5gndry7K4LZrJWGLUYokde9erm+6vXIjsjUpblktz9st6
	 ofvKohahIo+tQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA060C5DF6A
	for <ddprobe@lists.linux.dev>; Sat, 15 Aug 2026 13:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178680183368.2398.12182879576144135534.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 26c5f93c527082b09340a09f9d3f0586a0153dd9140d263d882b469c4886edb4
Date: Sat, 15 Aug 2026 13:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1786801833
