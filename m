Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id CFCC7432E80
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790927434; cv=none; b=shtLelBJoxNTx+YW6puLH3cwgOFSzrzFjfpDKsBY9DhC2QGLwPKNmpXHuTdcnLJ84t0O9SdYXdSZ8sdNPWAGxK3+RERW++dO7W1Rc+SdyS5KnZPHLCzNqf/bVLKhfZOilbJ9LDHuQJBunZTxiTY/KJz5mrR8R6s+Ue4y8ij4Fsk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790927434; c=relaxed/simple;
	bh=LGnd7CZwPFKV0U3VDfkVtsq/J+s3yR2+WLYhogJnf1Y=;
	h=To:Subject:From:Message-Id:Date; b=gZ8ovUQwoQ7EnxZgU8txFgYYalOO145K0kPSltFq+UFeTf2oLd0fE8aZEN3j9CLkOuDiVraCsC8qd33fr7jAjZG/3DB6K+3IY+UZCOChuKVEJ5DDADNRNtYdjQWH/hZUiTmmovr2vY9y0lictMZCGIHqHmm2RxqFuf6egpgh6XA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LRYbSZl+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LRYbSZl+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CCEE5C4AF12
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790927433;
	bh=LGnd7CZwPFKV0U3VDfkVtsq/J+s3yR2+WLYhogJnf1Y=;
	h=To:Subject:From:Date:From;
	b=LRYbSZl+4ozF1U5QxZ0DthuLH3RKVeCW47oRfvq+yCyIYbwNMYzpnMw8m9b6MJxa0
	 p+dZ41vraKJtC83SihEoqEtI/kAfFKuYnSbZmaaaHJBOgjw0mZ5HBdoCvufjP++BLH
	 C7S3VL2h1fygucjjUyQpCzm70w0qL9Q+oIMxyQHvUk7XrxVDW/KZlgyuEGmwx6DuSs
	 wrTni4WaxxrzQoDK9PkBnTui+L6wZNSxctPLxLJYFgC3XtOdYR01hel2I/h/KASqDX
	 +M4coKFtJzcBrBGqmVkSFeu+y8ey1G1GRtnQNL4AWueeERgQzFnmHX8M2fYCe6gfSg
	 RsjyXZgY9sltw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA9E2CA5FC4
	for <ddprobe@lists.linux.dev>; Fri,  2 Oct 2026 07:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179092743368.28551.17854161556995586598.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86e35d6c3804077caa3e96af3a7f3ad74d7799683f11345d466e6e4310af8051
Date: Fri, 02 Oct 2026 07:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790927433
