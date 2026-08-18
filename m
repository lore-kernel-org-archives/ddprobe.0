Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id A37FA46EC9B
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1787056834; cv=none; b=qSbAbdcPEADEg+hEbgl0i0+tNOTBykpzyL/DpYaUIBXb5WFovuTwOTIZ3Znqd8g8t1Z0htXP+jRYqEVjFG61ejzTeWFrTdCNWsIKTnK3Q8bUNl7dw1NVgJNmwZ5hFR6ktZEFUZep7nggKT1hG+cOejY2CPKUSpmXuquj5fihGno=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1787056834; c=relaxed/simple;
	bh=U8ia0QYSpCjRDVMWiennowu8ANS+NWwpXJ9VQBTbMGs=;
	h=To:Subject:From:Message-Id:Date; b=uvnWG4116R6dt8KFObt4mdwu1kwILk6GSMZiIupEWaIrFAERbXF0azeqlVnJz4nqbS9/ThVYc0tI+YK+7pfZ3YqQsc12Tqe7tINcGT5C2pBAT3fMUQXho7UQXYxqFuU9HUcmHQDJm1DNlMNNZU9lFEZhs6BC+P6YP48PPuJ0Szk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kYwDCx/k; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kYwDCx/k"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2B3EC2BCB3
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1787056833;
	bh=U8ia0QYSpCjRDVMWiennowu8ANS+NWwpXJ9VQBTbMGs=;
	h=To:Subject:From:Date:From;
	b=kYwDCx/kl3PkDIQiYOml7qfxQB4P51cclMeQu1ZVCn1cPOgzhlSVrK/1Dh1oW6Ev3
	 unSkjuRtvsMV/tgBjNl4CBpa3wFCVpHmgYWXHs5EvDJCmVsBQI3opeEhBFlwTZCxJ7
	 19T3/89LtMkTFchBVeuGvWRq0LhIuAvV89u14N7UB5C19fzbnhD4JJsPr4pJb2DtiV
	 WVPrG1zgN1gpuFrOHNr31oU8RW/7LfShdHPYpCur1bTIpe5ewNNBQcYAYSx2LyKfFd
	 seQwDZ/05h++gLQX9UpNAG2ILOXBZnh/ZZIdt+1LtcqPWDG3F4jRhuMQr+XlUyTPdF
	 ef55/jEOTwqEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC5DEC5DF7D
	for <ddprobe@lists.linux.dev>; Tue, 18 Aug 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178705683369.26778.11589865249041870839.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b2ee0731d488e7f8aa67e486e704c9ba3a2c818e78c9a215abb490a32afbe2aa
Date: Tue, 18 Aug 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1787056833
