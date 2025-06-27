Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 415BD17A306
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751044194; cv=none; b=VR4IyZYvNbRt2AUbNlJg3Zm98Iz8yc3qxf/grphOsy+HuZkisya5V30pqu9h7nQf53dITy8K4hxK6Od8Era1F7ls5aAFpbGQqB7KGGEYpv2/CZ440uUMSVixARYJC2MQIfSJbMkuKcBJG/hV5aR2zbxKTuOrOFjhn+Sh61sugw4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751044194; c=relaxed/simple;
	bh=C+gO4Ae56/oz+Dyk7L4H/J3we+mxOzphGUGeHH9erUE=;
	h=To:Subject:From:Message-Id:Date; b=bTa3KYNmU2hVZFSGfKr9JOzkrY9AD1RCO8oopCaXOYqHGmxze1ITTpql0C61RnO2RWIdAvLfLAldM5IKAY9z0Hb2TpokBdCKYN2jAVgi4QyuGOBOl39VvLjBrOlW3YcD2sjNPlpsDmee90ztLVOUx857pqwBWjdJ1lcWLOS4i/c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=RG47ZbRO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="RG47ZbRO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B4147C4CEED
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751044193;
	bh=C+gO4Ae56/oz+Dyk7L4H/J3we+mxOzphGUGeHH9erUE=;
	h=To:Subject:From:Date:From;
	b=RG47ZbROCn1XQ6zTeZc91uKG5E1IMZC0UYB8ym2shjlKetD2EGhGBGwMapfNXsFZ/
	 FC4nljrxmRpmLD9MwxayuW5btoVi8BWb3LrMx7HN2b/XzvJvfhcC3LmQRkI5xQ4JGZ
	 uzGL1Uyf1tcuiIJORfFij/8PY7hQu+cSEKdPi5AQW2LGpP4YFnwByHYd2i4C/xvTHY
	 TkVnRK2ejJ8aEB4iQBAFj9Xv2kCt+b/CdfLKXsr1k+9JjmTvhQcCVbcZzr9oOM7Dkh
	 isoBRa6PvX5/+gpZmOBSx49qJf4v8fNwGDdPoEE2y6uQLnalCAb6Obv0cO/6qYK5Qk
	 MR141+2y4GX9Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9C698C7EE2A
	for <ddprobe@lists.linux.dev>; Fri, 27 Jun 2025 17:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175104419362.10990.1564698304004823125.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: fb8a9dde7dcc24e6c95d8c3d26d971c2db4571afcbbc12c01828e649a4e3934e
Date: Fri, 27 Jun 2025 17:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751044193
