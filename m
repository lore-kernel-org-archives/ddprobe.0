Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B153202F65
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770143634; cv=none; b=dFvrZ+/gHL6uGK2FK1nuLAJhfOXmPaNjgVkSvdn0h8CBF8npq06id6T/0gFSS2t6NQO9v6tgVYpsJPdFU9S0du48QPSw1eDOmpftNujEgX4ZH5WfIdT/ru5kO8ypkY6q6NKXLIPXb+uBRs4VR2kSu9ULOrLpE993YXFlYGYYz+Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770143634; c=relaxed/simple;
	bh=xhZXV50ml9NqFWQYglqaDqszgqbvvFHE2ZctuJbSkFs=;
	h=To:Subject:From:Message-Id:Date; b=DtFaSUC3/Aq3lYtmGU/vauR40FHq3LVuYIES6G2fsB85mE6so+YVmJUdxAqvQCJAgrDtYdPFa6hjHb5N4IZwCZFjmqaeBe0v2v4F+h9LbGIGh8Ajx0Vso1kuB+At3ttD2lbJbgODWeGo+HoDID9Y59/mvC+3mwW7XJuu6pA6QVM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=M7OZb88c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="M7OZb88c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7150C116D0
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770143633;
	bh=xhZXV50ml9NqFWQYglqaDqszgqbvvFHE2ZctuJbSkFs=;
	h=To:Subject:From:Date:From;
	b=M7OZb88cbRuCZ8VH9RFPmAnI1Pb3kL0aeEiU99HG1i2skzj+TBg1FjxpyWAk6a62x
	 Pt65G7+NkzczGg0oUfUA1PdQL3X6pWYuA2usLkYu77qwO0tKXAg0A9lFi1lvfTbZu2
	 BH0qraeBD6S+qMYNa0aPlNksITVer2RknP1VaxGzMFrm5tcOhW6HS9GUbYXAnQd/ZS
	 Dhkuf+90Pv01t7xUCp26mhcFlDe61IpfkAD6saOgMbTiK03F/6Lf0RBk+8WIlkzq31
	 L1F2+jNrBPVC75e3B+S5YtTZfTnCy9TJHQ9PKmzyOQev80XzgoeoW3J5PFDnZ4VHnR
	 HirzdNioOAQKg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B178CE87855
	for <ddprobe@lists.linux.dev>; Tue,  3 Feb 2026 18:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177014363370.21396.3680574302346054968.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2e9a783b346e56909cee0b7f108a99732861d6c125c8f5deab76033e13800a65
Date: Tue, 03 Feb 2026 18:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770143633
