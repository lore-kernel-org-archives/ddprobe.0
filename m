Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 753C127E05E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:04:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780988674; cv=none; b=QlBFbg2uTVKZEX8MKroQ5oFSCJJ1l83Hff4Mwnc5ddqYh7Shh2hxUdWskTSY5mU4AHnjwQMsHWm9Q0KjkK7Ciws5fsSpQv/ZtQHeol/yQEac+pnEWY8wcaXEGktIlCz1O76Cz4EbuHkvVYSb7zlifHoxTndIWnRKOtQ1nIP7PDs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780988674; c=relaxed/simple;
	bh=zuuAP4jGWVuW/By8BCAcvx8gRt6vL8dyFVgvexQtpDM=;
	h=To:Subject:From:Message-Id:Date; b=DYllWCCGqPcQcMr07CxiUr7W5/t6unhM4xW/skX0nMFr5fHwb40tP3K2e7Kvd6LqF/I/j6yJ4ZEd4FabX/eyKy9S9MVo7hZVoKoaz29yVDwIhMvcvNbxp6Drm994PyRvYpNjSf8upgP4Zn30CxxktXraXeb/wPY5enrF55nawLA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=l2cghnw1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="l2cghnw1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ED4E1C4AF0E
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:04:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780988674;
	bh=zuuAP4jGWVuW/By8BCAcvx8gRt6vL8dyFVgvexQtpDM=;
	h=To:Subject:From:Date:From;
	b=l2cghnw1CMw0jLwvDD74W2ba77Ib1iT1Ts6Ra4zbUx1YI3LbKqzJ0GjVabw1Vfn2n
	 NzkP++HEwG7SCliRTIMtQujhPqy5F3RIp+CbFW2dhA7uH4NDZAPeDGyqg7PKxu/9EF
	 96bYtuCQFLJo4aS6P7gQOYc+u3tf8ygoOtFfxh70j/x78rxdOLlMYZPdiyICdAuQCO
	 a1KMskY2yembsMC3xaXG9NMPHvMI/tQp9f3dpBK2WJYxNEckh1kLzYA6Oa+pJ8uLOT
	 bTSNJgPRoyAvTbwfF0nNy1YfQEdRr3ZvxewZVRpGYajWIm+GUJsCRxK+TGyONuw57p
	 Pg/d76z1vIbcg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9523CD8C85
	for <ddprobe@lists.linux.dev>; Tue,  9 Jun 2026 07:04:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178098867380.10912.15392995252845645165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2d8a4dea504d2f87ef1675cc8b24f321ef0fae105397ae02b5ed44f931f24dd1
Date: Tue, 09 Jun 2026 07:04:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780988673
