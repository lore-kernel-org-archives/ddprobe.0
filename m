Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D628536309F
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772668493; cv=none; b=nU9SL9TgXMmgtbZmZC8nmqWuAbmY/crOctoNprkBh0zgV0F2due06Gq2YvfvfVOiSMAf5QC2joMizz3L4oEE05XL8Js5Aj3qTlqK1B1L3vqQwFSrTuOriRKDaoY99DmmLb8LtdRtwT8tf+Zmaow7vzg3o7O2ePpYEKo4IXaXQHk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772668493; c=relaxed/simple;
	bh=h5hbRySzFnU9K70IGfeqsYZ8ZlFROJK3Mz53OPDrekU=;
	h=To:Subject:From:Message-Id:Date; b=WUrKHDIuigI8Jtn4cigyIrtWuLR2k/52vgu/9b09mQEvUVL+UzdSwlNfcpsjG+WLgfDiaTswoY11EvDds1DcQie9R9pIQ2VNyX9l7nsbzXCmZMDKJDLSiiL7ZfUR18HF4n2u6fZ++veALBKIO4o07EmJGgfJoDxXN06h3GQQC8A=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VToQkWp2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VToQkWp2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 962D1C4CEF7
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772668493;
	bh=h5hbRySzFnU9K70IGfeqsYZ8ZlFROJK3Mz53OPDrekU=;
	h=To:Subject:From:Date:From;
	b=VToQkWp2GCY/CUbEaSokWJq7WEXVLF6xz12nbD0iDe539i8j49BLR/5/Llc0WlNki
	 75I1vNtK1nNKcI8qCmReek72YLR6mTC3Aj+xV2sJwJVxn53eomN/AeNZ50OemLOTCP
	 xjZL9ZdiWdZS+/YaC3D0wv6smhG9KelN8x1ZsVmVN+qKbxpPYFeFFFxi8dFyy3A/k6
	 Npg2xKsjXXXiHcKNeXDvRSf1k/idqHgN96acY1Tj2ioqLxIr5N/HxEmJMIIADDRZwx
	 yfsGnqZaKmBr5oTMJ6tX27of3nKxAPDpfg5QQeMJUljAyGCJS2Iv1utXNisVy+ZqC3
	 gmykiH0rQlINQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9012FEFCE4D
	for <ddprobe@lists.linux.dev>; Wed,  4 Mar 2026 23:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177266849358.31276.7230328297656214849.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c34226d6b8c7e2720d81741bc9dfce169224fc5960be42001d2caa9119f9a9f
Date: Wed, 04 Mar 2026 23:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772668493
