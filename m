Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34D09310779
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:34:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780479274; cv=none; b=lBNrobuVD2LOc9vGbPpHx6wU5Flo/P9rljojjHiKJbgRcPjGEKeAF+l2fQDzEcBqhrRpInPkscQBmy35h4COb7rmmsvHgAq2cjNZmpp6ENSnFhlqqHhVkr3siXo1qb1JgAJmXYyUQRnc76HsEenRTQnoKkj6zSCJOm46Z+DTiTg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780479274; c=relaxed/simple;
	bh=TWZk8DmRm4lsFjRPx4Y2N7pKD+FUnkyKFx2Cddvi0t4=;
	h=To:Subject:From:Message-Id:Date; b=JNIpxSpU7eP6IZcc7HMQGb327c05RxMYg7aqbhqJlLQv9/dWurCQ9yhnwLy5Es3nPKh64MWpvHLQ16q7sSKmoePHHUKNdByTA7xpCE0SzkpXK6vTga4Vo86vbdysA/Vs4L/6LfXBHIuUYnedKw5NtXAW7CBoBE8nxx/PBwxEw2w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VEvFtk7J; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VEvFtk7J"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2A42C2BCC4
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:34:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780479273;
	bh=TWZk8DmRm4lsFjRPx4Y2N7pKD+FUnkyKFx2Cddvi0t4=;
	h=To:Subject:From:Date:From;
	b=VEvFtk7JFdaD87VFeA1uFp/CSJOdoeqrN9oscQGcqQHdGdn3JGrEQsWL1qAMdpLIc
	 c5ijzUEE1djd2VM1RBUlwRx12t1+PsMSy/BuPkCsAn/z0KkUGgZbNIQ3wbIEZOEfNH
	 3+Oks3fIS9KO+9e+iSI7bV/pOzP92cWRCdjsUqdESmnaPQuG1A4brZrcymetVpduLS
	 TEmmIuJuS44NdU3hYjxvh0CsxsiWCDnVqcrUFGij0UqVbciajsjJWLdg5+1nuahCfi
	 TdgurfvXyM7niBQmikjualPAEyKg0/LV6n8bRV5o8KMgb50Yf6q3JIgj01wpKCiGXa
	 kS2W5U3S2IIXQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A922CCD6E64
	for <ddprobe@lists.linux.dev>; Wed,  3 Jun 2026 09:34:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178047927368.22716.13899902966935983754.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e5d0fac0e4fba38faa6cfbc01124e01fe04762ab4d48b2578f402589ba1b3187
Date: Wed, 03 Jun 2026 09:34:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780479273
