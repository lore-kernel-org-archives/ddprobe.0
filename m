Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 05E5E40B6CE
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772120094; cv=none; b=ZXc1n4U0pd94RfOq+PIOCuMVqaKji/mVnPROc5JpD7Khi+9N3VPB9dgz3CE5YWS1igceelVSRkcAvY7ls5qObZmDEDKv8AQlRhOb2PcKGKMbL9ws3L4bF9lk1zcqjQBu/fsRZwMQu69/IyKeU16zZzGnpzUkSn/FJ0yomYQ0uXA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772120094; c=relaxed/simple;
	bh=ctY1MynMGn4GrnKfgEtjaMsA84CNKSQknPAnFZsnUqQ=;
	h=To:Subject:From:Message-Id:Date; b=SOEDqYpoUPEW1jcetGWZVPco6gMFjbwoa9LBcja0f2kwtChnf0RCoIcO6aQG2b0XcASHyTBSPphBIjQPhAZvWc4W8Ch2Xw2yEV5cwB45fukbWDG6l2VZrIRVSj5/Tn0ccOqjqGpBll+CUByjDiJSixR+4nkUklB4i/zxqe0uY6k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qczh5RGE; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qczh5RGE"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC1E0C116C6
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772120093;
	bh=ctY1MynMGn4GrnKfgEtjaMsA84CNKSQknPAnFZsnUqQ=;
	h=To:Subject:From:Date:From;
	b=qczh5RGETyO2Z/QG0trsG3ecAY2s3aNtoyxWck3eiTxuVMZxMvWWewl6Hs1HA9X6o
	 DEelgHN4ROnAZaeHufWVQUBd5BjPzy5ER3MPXes4A5uChIjXHoZfPv89/s2gP+hBGg
	 i4MO0cNtD/jx2ZSxSJJqkZF9Ma1W9DyZ8eMB7vS4T164JtunX5fNTRnWLP47Wx5RbV
	 dsu5Zd9B+UiSwmn4oE5wsiBfHh+lgt8Xredfi+Cf2DW88vkVif1gg23xL49Ar5tCbh
	 PEeSBWGIaWW6I76i2LoLmexag7UXcRmfDgbVQ2lZ4SXHwpJbQctYN5botkY5nUc72l
	 dVDkxgKDNyLcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97198FD8FCA
	for <ddprobe@lists.linux.dev>; Thu, 26 Feb 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177212009360.19092.14329034339797029610.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ba6dd09a80ca42b20906802e7e2958cc98ce9506bea857462fe4608aa743b660
Date: Thu, 26 Feb 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772120093
