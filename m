Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1AC24221F1A
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753681194; cv=none; b=Wp3JyOjf4KDObYd3GRt1sET2HgEz5HhsYlqUUlNIj31XQ4PEiHXbcGGSC1J/UkVpgb2R2ADxe8Rt2sqistPSp6j3Lt+xhnhGYU1hYTBwAcwkhoD83Fpj5jilKcUZ131NUG6/x3JlXrnL/xMCmhn+ZvMk+rruwXU7i8BleLgqA4o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753681194; c=relaxed/simple;
	bh=48MIzLdFiTTDtZ7IYArpEQRp/PE1WzZv+qy6d0g87Ug=;
	h=To:Subject:From:Message-Id:Date; b=SZRz6qmJWCDr3FqNPlywYx0ERRyfaHwAwf1Rd/ofM/mf0eEZ6cK8bdyBzVck/Y5eBvXI//0upZ+b7t257lXEzLmA9gmkfXn+gY9YuJhpNsTXolHNll2d4J0WpjlNEyAB9jSpqHrPo4Jf+TnFUVTEvYvgFzpGEn5YtHJk+aF7c9I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ZuGpGTt7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ZuGpGTt7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E1C0C4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753681193;
	bh=48MIzLdFiTTDtZ7IYArpEQRp/PE1WzZv+qy6d0g87Ug=;
	h=To:Subject:From:Date:From;
	b=ZuGpGTt73Ty07OpUPFxlaFXRO8TshBlwBfZuTiv3ibV91jd78zYzfgPd1o3qS/7BW
	 5fXAcqCHGOGvJ2QL7h4T/+xfhZqCkkXlGh+kQD9Cyq1QzDKJvbPIu9dnSXEd2uxzdA
	 UDXzVigDa10nOkyKmKL7Xv86l91aVQFuI1ISed7xPR08gNDJdqznlS1O8atTaUWZbn
	 MM5+TcOyT/pSadeALAIceFBabrOWmsGi7pz084iSXB+FKy3nsE3TCQIBsevOJIXcDn
	 RPt9lRZ3lIBEj6GUtFxMPWGu4uFZuty3Ysa/yWSYzbv4J6iCbZZcrlYJkh5HN+w3Ep
	 MyQBbpRUQ5xvQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F96DC83F17
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 05:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175368119357.17051.10497283367164517084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 605de38d0edbc4c65157952d2dba9972c215e89f7f8b40192140adda5d84f31e
Date: Mon, 28 Jul 2025 05:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753681193
