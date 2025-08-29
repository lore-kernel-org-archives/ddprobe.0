Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0FFE14A11
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756500594; cv=none; b=INKo2nabAOP6myUqk8YFcKoiUe0J694QeblcCyvyx3aa9K03dw6+cuUOwJ8beaIi04AiKL9Z1/g+yaBirQAcKUCe/g/wQRNfYufSBmzZiTRva9CvMiYpdBsv9SPYSKfkV6YD3M+d950do1yS7q1+X4ipJ3eRLagAkH4VAHKAhDo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756500594; c=relaxed/simple;
	bh=asBk/rW5S2Yi4VzRDfeWSLdU5xJI4M90d6sptapJCU4=;
	h=To:Subject:From:Message-Id:Date; b=oL6FOAXVSj9OLvModyPu96RnR3jNV7jgnjoBof2cOpeEPcMJNZIJK5ER3szIeKQPm7GnFimG8Wyig1AUKh0lblNdc271nyViUK8WlP5Pk7Hji6PozWhpG19TruimeQWGaQZcXLKdtY29QhEM9yQPAscVeBUDZCz7LNVnJur7AYM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=t6iXra+S; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="t6iXra+S"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5988C4CEF0
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756500593;
	bh=asBk/rW5S2Yi4VzRDfeWSLdU5xJI4M90d6sptapJCU4=;
	h=To:Subject:From:Date:From;
	b=t6iXra+SJU6b7e2BUJNIdRvYV7jIT10OCUXScQkAygt17WjX1jrg+AadjQvGMeBX9
	 g0XMg8iLG0Gp2RxYWz0PtVgXME7P6SSbbLeEyR+jfnrOtWyTTHIRqU0A9TDHGv4EdE
	 enB0rfEmUOE+36+MhpaCyTeRWg+5TeICmCC48h5ySowXYXnX4o0FMmHyefn3OUiKcS
	 86YLjV824JfiFFxBghhXo8GlcYn2kn5Nc5jDs1+EtzpNXCMEzOLGuEGEhwDM2iWaYy
	 MNhZeZf+13IYcXbWm3n6nnAFGqYk10anHeysOocaGII+TKu51LbdBWUx8Gi4KF1ADF
	 hFQndoya98UyA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90ABCCA0FF9
	for <ddprobe@lists.linux.dev>; Fri, 29 Aug 2025 20:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175650059358.12571.9344285713848351461.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3f6e0f916a88fbb987fc2d961c3fb181c35d189a36dd22ec348fd2fb215dee5b
Date: Fri, 29 Aug 2025 20:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756500593
