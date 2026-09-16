Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4E38A4FECE9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:20:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789568434; cv=none; b=uFmawbZ2hY1jMc1+fJTw+4R9mYBAjiSA6jtBrMDSBWbEFGBKeLHSyBFsLi84QrX9t6yftfMIu1iyafQ6HnEDBGPfgkAmEl0DYVBTqXUWL+cB5RBjvHkWv7DUevMYcYfMyXuiAfSygANoj0dlzFiXBiQGd1e/ekY8u+t9rAyfynM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789568434; c=relaxed/simple;
	bh=QRpwHQxdaY1AHEcPbMIT8d+u+QMY/fVJA3t0Ri0NBEA=;
	h=To:Subject:From:Message-Id:Date; b=i0hRHIi2/4I5exYCMXbiVG9LL0OIDhtw3lbVCIl/T62y4osdiW+JVG8l1ouJ5IT7F5WENQe4f24ol/s9O6cfItprgnYc/BHdJtK2WiSYuTt1BMrjxgtNm8KUGNltd7Uf8GyIKtKjPCjXap1j8nv4clJhdrQju9mSGNehcwiEQWw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=gTnIyDmO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="gTnIyDmO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C3597C2BCB3
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789568433;
	bh=QRpwHQxdaY1AHEcPbMIT8d+u+QMY/fVJA3t0Ri0NBEA=;
	h=To:Subject:From:Date:From;
	b=gTnIyDmOP/uamaCUnzAIcOrtXMP29uFIAHbnlPEQwjDB6DFiHNZjfcI5gV+dGOEyp
	 873miPcy3fw+104bMOqTTvQDNYBIQlbVFnaI88+RCVeG6QZTeyPkOMd3QdS71Gp/cG
	 am519GctuF2lchGEw4G5/F8xaNZomlHI5XyKhV053Mn2C2cDSdTheoTOqOVa2UBnyn
	 3V4VaSAVN6nE08vvKaKdo/Ifuh8gyGISqMNPz/tCbWJuzrjiiAbTL5r3EZgBR0efD5
	 yUX2YNQHeTwADh3Ih4hUlUzGc6pxJ7lIC2B0IMaHgNc1ByF01CqD6g31mQBFmh0UN2
	 b7FjFZHIwzBYw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B1831C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956843371.13239.13766094392683095392.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b07ca7adf3a62836bdc7017530d32bc872bd8e4df34303d7110ffbf64d8006e4
Date: Wed, 16 Sep 2026 14:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789568433
