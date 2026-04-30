Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0CC873783C8
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:57:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777561054; cv=none; b=O3uNv48TZSf/yP1PDOlfcSVHpEnH6Y2uh6BSXc80PiF1NJS53vdkHjnHRz4cpSKJZOeKgQaKXRyHRLYfRWem0k1YuayKUx3q5a4Gww2a0Q/LcbMfRhX9cb97/kTdDavjtOmnXzYuNl9BVJ3TeWAZMI2oSNKizzpMi52MK3Ay9h4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777561054; c=relaxed/simple;
	bh=Phkn4PVqfxzhb9J30W/VDSN6E9Zj9wuBeIaT3I8KkEU=;
	h=To:Subject:From:Message-Id:Date; b=jeUBuB9ChMIxhU48ZoOy11XSanscPVN6QgtwOJFsj6W6D0fDDE7lYVBy2cX7ucGa6X4xOKyTj+crBsQSypoTY9QVi6q2c72uM2FUoJ2dxA6X66W83gVOQSg3wsJuB1ZJm6eIMIUFI/kRgw2pquBn3RhHgTmgPd5JgldI8qxaMH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JXVNt/FO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JXVNt/FO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B7EB9C2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:57:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777561053;
	bh=Phkn4PVqfxzhb9J30W/VDSN6E9Zj9wuBeIaT3I8KkEU=;
	h=To:Subject:From:Date:From;
	b=JXVNt/FOB6UswQVO6poZ0Hm2Xo//+WdDVanKRXTUKfeaCtttUwkiuMQEpkTLjF9+Q
	 TMb517ZHtJHjsq7rWEu5/7p/vPRh6W7lCrznTu9xw03Hz/J1xK4iAHXQR08DgOyrSi
	 c2hITpnSwi4er5TotdT3Ovr5uQKilQukWmYARbT+DXDHVvZwJ7ntJ3LjgYCsS9bDzF
	 usNnYUPYeBgi3ql7c9irSyiT8pJ9iJ436TsO8GKMpo/9IfJlnV0dP+Z0liEzkoFqZt
	 3+zUHSqTddC83OKo+U8Szm77GXBMtHbgWaFxmUe73vNWgZSXAEfAt6rF35i2PUA9Na
	 T2tVx0br9DfLQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA07BFF8873
	for <ddprobe@lists.linux.dev>; Thu, 30 Apr 2026 14:57:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177756105368.9894.3623133870901271221.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d3005b241d32d3b6a29ce8dfeb6fb4911a3b11fc504b424094dd00fbae377f51
Date: Thu, 30 Apr 2026 14:57:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777561053
