Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30891189F56
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 08:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743497995; cv=none; b=dl+5pojHGqTT3e/iWCohSEj2/yMAOrb0HCb45dm8bG7ZSfsU80NV6nX53cGI4ipYGhMuwVbjfWeVuAfqvHs341qfCm5hvIbToGFQhk1QrL95OtSjvl0sjBd86COVvMXPDi8Hf0WydB3iKSagoJyhpQV9txR2UqPsAcjZRGeUyug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743497995; c=relaxed/simple;
	bh=2JOw+y0E97LPgJ8P//OvkmtNyWSg+TcTBgN/rhbmmv8=;
	h=To:Subject:From:Message-Id:Date; b=RZEFQ/dBPosR7Vohy9n2jrRF45XsfrJEjeyW43oZr+rcimxhanEdhNGO26vnHlI3FZaSSyI7gpapx5QEV1QeejcFZpXFPnEr38Y7oHSO+A+h28Ny3J08YopS8pfFE7lBrtHzESBoqmSgZly+fgPqsaW0JSZKUpjSc9zXZsZSsC8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kFq/t6Nq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kFq/t6Nq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A8C2EC4CEE4
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 08:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743497993;
	bh=2JOw+y0E97LPgJ8P//OvkmtNyWSg+TcTBgN/rhbmmv8=;
	h=To:Subject:From:Date:From;
	b=kFq/t6NqtQtwQT07O41TIjirtWGUIPya30T38SYTiuKbjtDtNUBWexEMQlEQNAmzn
	 kAQ3ZbVLnW8+UL+CuoW/MztMSJm9FkKuOipi2+aK1nPXiyIKlLFfb2CiQsO1ajMHl/
	 PU2XBifVkN9VoSkyiE3nb98Wfn11Wr+Bhq8kJX0rckDaqSISwjgk0qT5SWtN1ErG70
	 HNSUZkWuYdkijIxPZfzHwigxlfd9PAcOUQuEEFmmyEL/AjZzwBOyWr5GCIVfmPliqm
	 m1KG28K8OL0b5ii4S3OWSW/YQGxUJ0UjyNTM6HrVz9Pse36gijaUtXBgA82BpT5UR8
	 5NAKpr/C2P7yQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 987DDC36014
	for <ddprobe@lists.linux.dev>; Tue,  1 Apr 2025 08:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174349799361.28812.4111563918752349682.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ef664001da7efca5d8fe5aec107e2192553886a4a05c86321f1fb9ee25ccbfb
Date: Tue, 01 Apr 2025 08:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743497993
