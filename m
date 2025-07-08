Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 103952DEA73
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751984394; cv=none; b=ByQxsOCwfash/0ndPP/qsjV+6l6ISAObNSXqUwScWZIHqLlpCVY0EKMSl6Pwu0F/ejXWtynp5bmxFR1NuZXeDLYjjt/aIKgRtAsaSvbbU+RKAPZy1D8EMZHddL0+4dq1FvzY2k2AFlBVmjDNZBOgd7KtpySDZsf34vkK4j0NR8U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751984394; c=relaxed/simple;
	bh=hnKbCcdX/H0LkCDI/hJACIVQqEhaJ9D1tfWgTmzcMcI=;
	h=To:Subject:From:Message-Id:Date; b=HXFuVq5iAtQ0XvMFcfGBwozlb3xSjfgafbjrr3q4M3rAWF7qrSBaHt+r6DyVFTz/rBE4ktD3s8xon3AC3kP5FzbII1iarQjC5nV7z++z1EhjJvgO/WubnVj3C1jJ1zsuH5IvnR/P+iGCc2AHUF95neKepz/3AOj22MlSTuaa5O0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TSM7CqO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TSM7CqO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E599C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751984393;
	bh=hnKbCcdX/H0LkCDI/hJACIVQqEhaJ9D1tfWgTmzcMcI=;
	h=To:Subject:From:Date:From;
	b=TSM7CqO141Oe8Kc7oD+ineN+BQ0nchl4qvbyYZav0PT6Y9v4KHifpIZI4odT+MOJk
	 PtK0vyii0kk+8y7NHt5MQSZieCyH5Jfoqc5NAILAvWZsLmve5mZsHV2Nm5uP4t01n5
	 OmtRi3GnuKYqQ1/UUaxfBML1Zp9KudVSaeDUq/yNQQNgOu93HjKKjqnG3f8Jk3hfuM
	 ncQGtkzlZbERLjZUQqSUVM09MyfMcYTsm8YMDvwXWlERl9IqJi+jlgvCTpDFug8LOf
	 bYwwBQ3iYGiH+eLm9bvRqlUwUOU4/IumSD5sAbR57tUD5t75lqT/t4wJdCY8G0ctVu
	 PkzcZmKr2OQBA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F951C83F09
	for <ddprobe@lists.linux.dev>; Tue,  8 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175198439358.8723.11997251049858680115.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 916d9da1e0585e91c01ed1eeb8a91ba94ad29fba52ff09f3ce44a2c1da4abbe9
Date: Tue, 08 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751984393
