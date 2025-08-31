Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 095CB1DED63
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756607394; cv=none; b=Iv8wMpbaJPT/9IyeNqx0eJpsZkKGRxYLrZEFZrbOdfu6vAU4JRhiEYWgyxIjySxRIMzt3SUbaqrdTyV1RTWZUGmf/1Gm35f8r4WrO9cXeRWj5XC3hjc2qIf2LUv/7WMWPykOSCTmQ+FQ3se5fh15r7YTuPClS4MD6cK2t4GvJzM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756607394; c=relaxed/simple;
	bh=zXVtGIaTPxxYWHwB/+JVFRsO5lbB+p4s0MYb/HG0O7c=;
	h=To:Subject:From:Message-Id:Date; b=oQWlLaW4LNC3HMT1QN04q194D3dsal1RfVfmBgGxJDlMELGn7Kqcf/lsIsBmhEw5pRWQAtSX6JuFaKLNZuNNxatij7O0kknctOr4lA3a781918rDY8PRovn5qpPR98jvf9+8N4WVdDBnXUy/3TdefFqILW/pQtIKN4DQ6yP4pcw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i7AJnUX9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i7AJnUX9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1885C4CEEB
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756607393;
	bh=zXVtGIaTPxxYWHwB/+JVFRsO5lbB+p4s0MYb/HG0O7c=;
	h=To:Subject:From:Date:From;
	b=i7AJnUX98pOGZ5100Sf3Xkxm6qM0xUt+HUnDKpTdS7doLUUHhMUFiYyqIkF85h2Qx
	 H8h1u9/fWDOnZ6nFhsvj/fR57W8qEraEyDh148OrpaYXakWTEHcKJXaYWjIx/4Zj+b
	 e5PK2gcJs+Gv/kOZUwCoBY0Eizr1mRf8E+SeqGFhylvNZ2TsM8CDBIKqOBX2+MCgIy
	 AUoep20qjkvPu1x6veWKnJDMtJis7xHDwn8dgEoau6Kxv6Qfw1fEWg6iBmV5OgzNLL
	 Chevx9qysT71CKTEDB0HBv7CyxQoBvh1rm8wAELI1NGcitSCKbnV3MRWvMgtsT0zPv
	 RGFlg7kKKIVRw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2A8CA0EFF
	for <ddprobe@lists.linux.dev>; Sun, 31 Aug 2025 02:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175660739357.9458.12325401282478417271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd9e8e6ce1f5f4c0f26e609e66d877572d317337ecde4d2ba8cbb24e31a701b7
Date: Sun, 31 Aug 2025 02:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756607393
