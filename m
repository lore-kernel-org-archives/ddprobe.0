Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3EAA61A5B90
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1784953234; cv=none; b=QA6I1dt1H8ibmyCpSA7JVYhvso2Q9era8kzCb64E4x8WFBfZLgWJcWeXZ64F1XxPbZM4II95tZrUj/bMUfHNeqU5yRFojvCAjtgdWHfu/3rqpx4Nf+Pde26UAaB40n+eWhKDaP45AdOwInHRdmTB3bzoXyZ0EB/uPJQB40sECto=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1784953234; c=relaxed/simple;
	bh=bknpLIQSREAgmhA/Exx/FqomL3F/GCw71FC3nauZneY=;
	h=To:Subject:From:Message-Id:Date; b=lIozxgTQQwfmJaICdhOJP9N6WL9iTHNg/qgjZHDruUP76IEKxa9Ksgm5F4rayjiK8W+DIJVpkP4wvhjwE/gUZomw0PyQ/2Ap3Tv/mSq4CrOHdIVQvcN2iS0mwZ0coNJlw832qpxwQW9R6MnODB98kxWiMIIZ4HrVi46iv5Tq1eQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N+mdm4oQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N+mdm4oQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D8F2AC2BCB8
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1784953233;
	bh=bknpLIQSREAgmhA/Exx/FqomL3F/GCw71FC3nauZneY=;
	h=To:Subject:From:Date:From;
	b=N+mdm4oQhuZr/rZujcgHwuLzdiicELyt4O3Mjl4NoYmvVKid6ygF4ZwGIsOm7s1LY
	 QKKje0gHgTH93vdyGDtvFDGIkjO4S5DJV9vNc7VGM120nuNdOp3/l3A+55zk5a5QSE
	 1FxEuGN/I6UyZpkUkHZbEG8mVgvEX+y36XbnmJlOzePH0WyQHF6V8bwYq8BOUj4CMQ
	 D6eCWAkC+xuE3gxStUbQQkL38bloR82+yM+BO5Ok8qBkA+eBvjVlhd4QgdpvDiwAFY
	 qOcw+ojWtKJUY5jgXGFswIWvbM3RPSUegLxNnIigZdZRS46Jn3bGFlZUXqtQH1lAyx
	 5EQ4LAs+34iyQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD508C531C9
	for <ddprobe@lists.linux.dev>; Sat, 25 Jul 2026 04:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178495323370.10745.2528721461807237994.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a893a745944eb6121986d3802dd820011158a083e6e174f3be804facd0350d45
Date: Sat, 25 Jul 2026 04:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1784953233
