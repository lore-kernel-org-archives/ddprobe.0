Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33E742E7F39
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:14:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780380874; cv=none; b=PM9YvvbqSJlHBXCW3o7IH6JXnaHzJRtvlrUuMlqJE94bVqqKwF4ghok454+MqBFwmsH0ZSvjq/YKfV2oZYRWyEJwdbLGaNL1SAFkZ2fvRUa+TJx2+xUxu852d2fEBWJlZetqICrkLoR7tjQSxcGwtGthA0sUfEv2vhhd5yV+LNQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780380874; c=relaxed/simple;
	bh=XT8fBsp4XhkO8ziDauCZhKwavuJQWc0dBlOBvoYn2MU=;
	h=To:Subject:From:Message-Id:Date; b=MsMzds3JrGxWRgqh3v5i0Xyjf0g54pecgwkfOO9RRDXewuBreP71WaWLjc/R9f97EC5Phh/aIaA82J6j0ThtzvasdJvWKbyAECYsxCCaMLWT5hSrzXHzEZ84MJtXDWqglxIQi2nz8+j2IE1ohiIE44ZTcDbVmKhF3X9v6zuoqPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qx1j5WW3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qx1j5WW3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BB8EDC2BCC4
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:14:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780380873;
	bh=XT8fBsp4XhkO8ziDauCZhKwavuJQWc0dBlOBvoYn2MU=;
	h=To:Subject:From:Date:From;
	b=qx1j5WW3ujMRMInBo3+ELOaZ4HYjvyA2/tduwknF5C4iRGRyFuTGfQC003nq7/Dco
	 bYboqTHDhvLExATALQu2Hk/zoVjfYiEhLx/gkLgZZsQePvZulNwBLJV51in4pNJ6LE
	 wqO0qdq1A4ES5d8H4ehEaeAbzG3x1B6S3f6QH9+HtsnA7bcUAHBNjftFHkcVrlLP0Z
	 ySJs/X5VeExijudjbvgx3E5/CKOMNioDlIH+0HaQk7D3ERYgiyrBdcTIDkuAFKKtTJ
	 DzFcsVcPT6D0t3jGBhrAMbZY68AsIZmGT9qYqA7NwPVH6CpKRYgwbTS5Uv/2R2GhKK
	 SnSdifDok/dbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD724CD6E4A
	for <ddprobe@lists.linux.dev>; Tue,  2 Jun 2026 06:14:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178038087368.3814.6731143382251890555.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 372f0e83ea65e648e52c97176593ebeca769921aed5da0ffea5b995d418fbb97
Date: Tue, 02 Jun 2026 06:14:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780380873
