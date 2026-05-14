Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 885503DDDAB
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1778765434; cv=none; b=nQgKTpam4fhnIgD8jrl3vgp2JTMlFgkKMAi2xaKTPIMT4fnlS8XVzIxxxwguLNl58h/vrzIUaMmxkyxLYFtYGd7SiwdU7k3DbO/BznwxMnAXNNgcuAFtkZI5JY7vOBMdxBGAH+WPuj+QvxMLkbgA2GApOThdfE/qkEdZGNanSmg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1778765434; c=relaxed/simple;
	bh=XAXKUqjQbnGIEL+mW5nbCK1lVp4/ZmNKvWrgtR03NH4=;
	h=To:Subject:From:Message-Id:Date; b=G6IiWrt1DFQ1ZbdYQ3DEEyEJXZixb+yxvNx4W43lPQuzBCGkp75aLoPX5cEvmmSMU3dcHwXW9EdjPb/biQBuwsyIRIp2mkelffiR4Loifqb4uZ2MTVAs4vTQZlVuwbZqufUGohy+ay/fi64X7SmKNUbEHD7mbUS6K6GpCTGyXYs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=qny9X8y3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="qny9X8y3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BDF7CC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1778765433;
	bh=XAXKUqjQbnGIEL+mW5nbCK1lVp4/ZmNKvWrgtR03NH4=;
	h=To:Subject:From:Date:From;
	b=qny9X8y3XdrQEFa7mBZZGAZ3ou+RgJdE/FbQ0D/J0uMzTkw0bH3JKDSpBrS4PPve+
	 viz3I4tje2FK79dwm42qg6T8K6t0jc/jia39mKWTYBL10cZojEUPuJqa+HctMiTvE6
	 J4SnlQ0chmJFpvv2DGGEEn/22wfHKkfDadocV4dw8z/7JDTLKLuaDNXc9cWOpX2RQx
	 PQWnkVsM6vfHJYQGbpY/BFyZz5tjLpBj6O/uaSaklah+O1l9NRkuEMQ4ECTbHoMYq+
	 gwAcFFzxd72UKI2Ih2yfucVDgACj4AhtalifE5+VtTD38YYVJjgo1DrotVXrg2Hi9K
	 g+KDbnFeI5r6Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB368CD4851
	for <ddprobe@lists.linux.dev>; Thu, 14 May 2026 13:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177876543369.6816.6914261548023803139.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66d9545391e5bd3992147c72aee28494ee8639f67d14b4dee8308e100cdde087
Date: Thu, 14 May 2026 13:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1778765433
