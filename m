Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6324CF9DA
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 04:15:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1731212154; cv=none; b=r4cGyEUjDZ6/lP+njmkqaC/isgufXg1wsjOD9hk0XY45cmWdq5yynulp9ol0aAmbNXrHpB2zo1gLrIC5KdIpQa91folowvFSQCr1Atz4NG4j/lcrtPPxP8tI+ZxKOmgbMYS6LwVLH70Xox3j0zhSSF7y6s1P1+bNjMoBABi9MgA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1731212154; c=relaxed/simple;
	bh=jsetw2pIIsBs7EHJvhb0VaoNWoS59PbWaHkYVhrqm9w=;
	h=To:Subject:From:Message-Id:Date; b=ghs8eTysfQ7sgXYGwEXI8pgAKOtVkimhbhpczPqNsSllW3TU9aHWyJbGUH9gW+uU+WQYEkXCuHolGTs3S5ovNL5HBKhImJJ6g9XsGKET6gpX54lVGKy7gASOQdxVj//zI8QQwZePDAfIXIBCT7Kan2ZcmSawXosmKJXUiBNW95o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AC0jE1rR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AC0jE1rR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E6A23C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1731212153;
	bh=jsetw2pIIsBs7EHJvhb0VaoNWoS59PbWaHkYVhrqm9w=;
	h=To:Subject:From:Date:From;
	b=AC0jE1rROSrdIJU+j73qupJhj9VPqDwYu71av0fZ5K9IisEtln8Y7+nzta9GP0Gjc
	 vObiOTzQua1jNXx5aQODNK2r/scDxBrkJJlXuiZWxvtUa+PV9s86qg7wiZpl6ZYe05
	 R5KGRzeTCqVQLSnfB9CprI06Gq45/Zy+Q2jxvTHUnkjTTlPxtg5tE6H7FFals86obU
	 k7a4ZVAHT/ncNJw+/sVwN5ghBjPg+EH27Lr2y0lMOsHv4eI4VQWAtVRAmWrR0QZ87U
	 fPdfREeHi9x/nXdSldMgFMkqAyZp3OLm2tfDV+yMLMGCuuhTT9ITWrUdpWuYJxqQ1e
	 Ch8XySVkAG1mA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C1032D5E399
	for <ddprobe@lists.linux.dev>; Sun, 10 Nov 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173121215364.9684.12236849090284600547.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 32d4ce7c617884b499fca0fbf7cbbe9549f922353dfcffb334f86d5b57b57cb3
Date: Sun, 10 Nov 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1731212153
