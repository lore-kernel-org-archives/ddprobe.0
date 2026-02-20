Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 25B562F3C02
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771617294; cv=none; b=l22pNibLUwtOM8Cazx6UG94t51QVUqk63riO0SVWeLAzPM8O6xmDD92SzN6U/NPQ8zUVszUJ3HdW1m5+t+yCQzmkh8yku/3NKfclunOiP/KjEJhI7yqeJYMOQwELiX4y+58D6DwY3VZ7iYu4YlYiIaO7+u7RW349IXAefIjtH2w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771617294; c=relaxed/simple;
	bh=fJjL3bRcxzNRK/qw1wY8FDFjUiV7i7ycKGb0gutRYv8=;
	h=To:Subject:From:Message-Id:Date; b=pdGqFFXFZvACMQYdEKhCbNh8z/TViGQHlr3oeXr5ER07XtZYpZ7vx958CLh+V6Ws4lAMz4n+QyamH0prTVAsIpMGm7UpHAw/C4VUqe3Db92pN43P2D1zIv5B4nb9NfPCoPsYcqAtvMwHHMRtlyvfgmWXa4DM0uWi0NzKNoLiSr8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=n4MhwUmS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="n4MhwUmS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C25A1C116C6
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771617293;
	bh=fJjL3bRcxzNRK/qw1wY8FDFjUiV7i7ycKGb0gutRYv8=;
	h=To:Subject:From:Date:From;
	b=n4MhwUmSJJvzhtuqDIl2wPWraru8t1BQk1IB4Xr/HnqLSbf7M4ALwda2uSHycTbXB
	 GBW7RpWe+aipfxrjPiRd66W76SCn1JbDbiDg6c+aYbsE0IakcDh5G8OeBsA/yy7Vkw
	 F/0QTVqQ2ClxhCKRUwtNKgGIF/9mTsqHEEyfkOo4krRq7jQTi3wApKX44MjO6dkk06
	 OE05+Lqwi1BLhQDfCuPXvSaytaDjPiFuXrS052Xt7OXLyPTkYrBavE9MQerlGuY66s
	 jwylXUxAcXPc6wW9+u8fueBVqDRHpHRYxl+Q78REA1Vy153RA/xBpI6JnKqba0/gZo
	 43MLgFxUUjmnQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E062C5AE49
	for <ddprobe@lists.linux.dev>; Fri, 20 Feb 2026 19:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177161729363.7751.16248701288311026677.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8efc3f094c5eda7a4c62c6e75daebc29fa8c7f778e7f6f2d59b8e3fc835e5e31
Date: Fri, 20 Feb 2026 19:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771617293
