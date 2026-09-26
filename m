Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 536DC7081E
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:00:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790409634; cv=none; b=CNIA43FuDcX6tOWDoIh0VyB/4IVuiGv+hvVRMeZL1iqDZ2HYFk4W+xTbRIC/UhnHvjMF6ym68yamVrm4t0UyeCS0rZTyyCBFPDObJ5jwpTSUf4vrDkV/Ae4HEVVNBVjNULVok3eFPWfcbhoYELOaNf2LDOFPbz7eqnYL7/fewsM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790409634; c=relaxed/simple;
	bh=jQVak7gMM6WU3SvnrPw/U4b256sLooh/qDuGi8wiVxw=;
	h=To:Subject:From:Message-Id:Date; b=QIegZHZEo+M+s0/iURcHTayyhMzOtIwjGvmv82i1lViGkgDAodRwWHXmrvLc1LF5AZ+ybiwdrMLqHXRMQdzArcsD/JJ3jXpE07oOIaAfrPWcYwph/gefW2GGXN4hmVQ7tbknpNChR2SejvUDEJI95lQPmBUK8pw1leh4a7OSfEU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eJQvY/Zj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eJQvY/Zj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CEB2EC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:00:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790409633;
	bh=jQVak7gMM6WU3SvnrPw/U4b256sLooh/qDuGi8wiVxw=;
	h=To:Subject:From:Date:From;
	b=eJQvY/ZjWqdmsEnYUA52m+IEaJgkA9xo3eDtv/9TC5EE1x+kaT25eKLuNvOaB4Ybe
	 nIBjRehIHYPmIA6UYYTXqSO1DAuQ1GaOXicuIfnLbOvyxPlSSFB/21+/cgMyeJdOyn
	 GgYBmz+wfvGGw1Tv32n9MUt0zL29j23lO6jj4bg6XPG4MwfliB3PzKhG+HZRZsR3qc
	 xRdfRbXGF8D6Ncff2oUO+U5ZG7ATvCdVTEfTNIyciCcjiagMtbD4d+Kc7hY4afrbTY
	 db2/aV41ddEGvVPlmnqHZ31/TmIzVg/2KFvW+J5nKg0CKrmNJuCSAG4miZlnq/pOG8
	 CUIDUBnlXqivQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE08BC98318
	for <ddprobe@lists.linux.dev>; Sat, 26 Sep 2026 08:00:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179040963370.6709.17873164210463605722.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2bc6e8a1d662cbf3e3809cf553f0a29a450f185f597f5abe29452ece0103c9f2
Date: Sat, 26 Sep 2026 08:00:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790409633
