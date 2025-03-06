Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E50918DB2C
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 17:38:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1741282734; cv=none; b=VqwMjCBFEgqtqZVNEkoYfnR/bCPDGoA2mbW1V0ChyBQRAEX5qnHSbGqyQoguJ+crISiMQgo8cYS+Vxk+7XuUlvNOyFFkzepn2uRM52GYR4XlnJuqNAKOkcneLxQAqm5qqm+a9SQc7JXvDG9WQCwp1RnqynOk6uhqM3FoDSuIR+4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1741282734; c=relaxed/simple;
	bh=jiLIkhfmJZpupLlb51F/ujSe+8pwtIAV+XEICR3nAV8=;
	h=To:Subject:From:Message-Id:Date; b=RTIrqMKNUNrxCl/bDjU7/RroJRQsKguccD5Y/5zVf35ii6du9SJrpwarnqM6RqXsgisbb5/qIv/Dpuv8LFNfHFjeWQhkBX/tzsToVIcbvz3sY7BrRLay6BMMcN/VmLb6BfSeT8p/hROItj+B6gsQRr4rIO8CVL/Gd4jvAqffyyQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qaESzqQ7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qaESzqQ7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7069C4CEE0
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 17:38:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1741282733;
	bh=jiLIkhfmJZpupLlb51F/ujSe+8pwtIAV+XEICR3nAV8=;
	h=To:Subject:From:Date:From;
	b=qaESzqQ7QIn1+e+2c8o3LTSW16SP02y06sS2z9nN1V7YKCSxlAfgukKh4y8R1/xer
	 Svf6Re/f5M8wbnpedQjdWeaKzd7guxdi2w2SIT+fpFZHtQbsNsok0B/9E6aderzItM
	 wUeR6hZpuap10RECuYzqUHIs/SgpDYeRrbQ9Dh+u3DWgpPbcTDk6L9Vb7Ap1vBE2LH
	 MXMM0/00fOTWT5jxlZ122R3jmCg86N+Nh/ZSEoh5SZro2wajk0VXXBYGZescN+ZUSm
	 o26x5xsiKN2ylqwtcAtFzQCShoqSQ+fwp2NEuxDc2pes2C427NOXixKpdQNgFNbvQz
	 iWI3TI5kFvJgw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A31D7C28B24
	for <ddprobe@lists.linux.dev>; Thu,  6 Mar 2025 17:38:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174128273365.24908.11652092455662717227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d196c305655427e6c5f407143ec3bd1b0e27e430e5904a57dbb045d19a3a2f3c
Date: Thu, 06 Mar 2025 17:38:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1741282733
