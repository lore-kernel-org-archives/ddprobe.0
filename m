Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id B68543C342B
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779321034; cv=none; b=cPr1dOkS9JHdIR20tL7WyeORJ1/DB+wW4CCUxuHx+o/fzS0wgwrfHjeNjAOiVbF9mknVfTW5YlGF3eP1yhrUqeiO58RSKYMVmsIoylMK59we6TdEF7QgutG+avtaQoSxQ1U1PwJOrKP7/Ujmo2UZHNE7QT2ZHEkNp2uqfIgLKLQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779321034; c=relaxed/simple;
	bh=qVO3WRQB44G9Ba+0oj0Q9Z2NjSeT7s3+7w3mu10bkQo=;
	h=To:Subject:From:Message-Id:Date; b=CvRBDEHe4zqU2EI6SVvFFeerYFBrq+6bHlOlbCdnbsQvk6V2rjTFqzzzaIjAqLTITcMX9hBQIMxDONiJv567rAiDOKhBb6YqGTbRN434DGGU8i6ogunVKbfngHM40aBbdi4oMPFJjE6zoZzMExq9DJYl/Tk4CVQ4tRs4zVXu6no=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YNjmxeMR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YNjmxeMR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C762FC2BCB8
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779321033;
	bh=qVO3WRQB44G9Ba+0oj0Q9Z2NjSeT7s3+7w3mu10bkQo=;
	h=To:Subject:From:Date:From;
	b=YNjmxeMRMMiz8dWhpRQXGOtsQ1kqISyR+gSQJsKul2QtyEU075F3AeIpEje96xtik
	 DooWkDxBfV8a5mE7ZK95PXZ+upmO4n76g3fZjq/tJIe/GFNGq+M85tNJUwPCrjVwyj
	 ygChBvv0iYjhQAFo4KJFDAU0fsg7RdJ76w6q2Qd82DAV8d0cOqtLqXazRY3D4lMPu/
	 mOQtLK4z9a/duD7KHWznnte6naAyEEiCH85zDQgQJMVSFMmgyH2McbZbJH4YSZwszC
	 0CZ3t1E7Y1eXKd/OZ1zS6bcowE5Zupfhjs3ggGMy3KzIjXd9KBtl33HDNvVA887Btf
	 ymeEJZnkEKA6g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACC11CD4F54
	for <ddprobe@lists.linux.dev>; Wed, 20 May 2026 23:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177932103369.22952.6082198663304329374.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9717551071c288b11a2886b64bdedb3c122fcf2c845a821dc78f3388ce0e5778
Date: Wed, 20 May 2026 23:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779321033
