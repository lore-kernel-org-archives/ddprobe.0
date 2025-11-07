Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3F4402FB0BE
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762480794; cv=none; b=uo5mMRyOB7QMXrOnKW2ukXwzSEmGs1yf42NYkgg88yjg5wS9GCGLGQkYfxKVbwjAUQALJF1+cvTL9eL9LffAWPAQRHS7c5uhDoI0Wn4WonftJJUDArXYTLnlqe7NfJnChIQwaegYHzKPQ2hTu6NVipJrU4OHlrMgHwbDDujFUoM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762480794; c=relaxed/simple;
	bh=DjU5O0dBcxJtq/FsyRnvPMDm5VA7C1f7QTBdcWKLMF4=;
	h=To:Subject:From:Message-Id:Date; b=eWmKZ4DxnjAx1Wx55/ySSyKtdWa3owR5ieKMq18sTjymL7wMeBbTs3ErtT6Hhho+ZEJP+Fp6Sn2l2ENgU7kSLyxRM2i29RI7+imEX03fVpDthxTkiNBMADzkh5YR07OuH1nhpkVf6+/ntETJguA3GpADSKY+GeU7Wsigg9OI1Wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iWJq33u3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iWJq33u3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ECF2C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762480793;
	bh=DjU5O0dBcxJtq/FsyRnvPMDm5VA7C1f7QTBdcWKLMF4=;
	h=To:Subject:From:Date:From;
	b=iWJq33u3i2tJsG1kWKwUNpGvsi7a9bBwpQxCtK3TiRt8zsKttlCRU0vbfKNNttNxY
	 DecX02bbkx+wqzt7TwL2BLClL/1Bv/4dufD3yJdq4A7frNVVQKxSWx3SglJN147M47
	 zZzQN2z7zQePvbQNX3kzCruz7ZGa17Qo0NPhkNVyC52MeoUQHHoeCcIEaY5ij4wH0z
	 Dvd7p2MFecHQ/LyZKXWn5v6vdBGcHCAXueSf3s6/BamxgFfDwMemmLKZaLug7NUk4X
	 XgKbPMdxP315BMka6a+WAa/gAwpSj4X1jt2DZTByE/cHETFh756UuYe1h83hTe5uNn
	 cfaOzGsmKz+ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9318CCCFA13
	for <ddprobe@lists.linux.dev>; Fri,  7 Nov 2025 01:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176248079359.27814.2190451950638566717.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4f52d13266b41a5366bd3c8868a45a04d3dd51ff4e9099d91d2e7fae92108873
Date: Fri, 07 Nov 2025 01:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762480793
