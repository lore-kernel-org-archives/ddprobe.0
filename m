Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3877D3B192
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 01:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737162354; cv=none; b=D/R6cxC0Xge/OP1Jms1EkgXSFehpsQDyXvDKLVimQIAVcPCNJwqijDlXaGVHxBYAdBoBhe2jRWnxcUPDF5jVzcFmVvhJ7GgdaeDfggHZLunKigGh+zFKOrdChPOy5EJzMFhwDT7WkxdW7l1f7VbSh4AGw2Xwz1wVBivZ6TOrZek=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737162354; c=relaxed/simple;
	bh=RYJRXBrjgT0NjuUdbW0Exi0B2xUa3lFTnLDeGDpw6uM=;
	h=To:Subject:From:Message-Id:Date; b=mz+xNv0WbN0QFZHqKFqmJiP3lJ2YdSWPSjEhBN9KeGnQQjvQ1UiyTEl1vugFaz4TH6gFeGZOelz5VpxNCmkWVzGThqywyx0/O60KoDcqlZLx/HHkhF8Kf+lwS78ctRvXueFTrbeAX6y945wBriiPMbJZomBIcxXDETBdx2iSgVA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lZ5MocBa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lZ5MocBa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA4E1C4CEDD
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 01:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737162353;
	bh=RYJRXBrjgT0NjuUdbW0Exi0B2xUa3lFTnLDeGDpw6uM=;
	h=To:Subject:From:Date:From;
	b=lZ5MocBanxJw5Wc2aNiDtOF4dQGbhksATzcoGHJCXWHErSuBkSEoLX7KJj4DhQhA1
	 Y9gbnDqKDlXdlwG/h0t5+g7KKo0siFTf4FUAw6VtNM/jw/6534uj8M7quQo/H+jgFe
	 GR0d/0lbl4Eq8gPKC73XKXONbjjQk0Hvx08pQKdsF2Pfd2wVVUCk6HPx7v2ep22xIF
	 IKrOWKm4U7/Q5aScM4h18jqn1fpYCv6rX2oXkSb6gsduVl+8pwlLylne0QzPIKArUT
	 qa2PtE9qFhTa0xAi4/UHUsrZzgBHr4gHX4fKcuoVcBfsDi/5+TVNcCZwUNA1viW7RE
	 aQOtNCJTW8L7w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C61C02183
	for <ddprobe@lists.linux.dev>; Sat, 18 Jan 2025 01:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173716235359.19163.9558331565056636803.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5e2304ecce8925ab74d4746b1425bcb34edbfd47b8a0fb283fde2d387ef602dd
Date: Sat, 18 Jan 2025 01:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737162353
