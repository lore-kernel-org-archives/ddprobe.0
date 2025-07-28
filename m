Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0AAF4271A84
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753717794; cv=none; b=aLDdapjSm0iDRrd642MZOI31Gz+vCVnkNug9vpeY5cA0WE92k3JM9ARkx92FLsSU2feYq5brbJmDTUjO6WCuOSFN3ECZknLSW6uQZ8zd1gDl1wxBOGxRGS8chdVNxGkNW4V/K429Zmk/sg3526OTtD2fGKVk4Vd55JqykIxHA/0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753717794; c=relaxed/simple;
	bh=U+hOn1Kebe9h+B+A7mUtIh3ogi3lZsZQMlgvH2oZAZg=;
	h=To:Subject:From:Message-Id:Date; b=ZkBPcLzghrsjPGtACr4CElKnuklCPuaY4Hpo/sgKYBHdgPtO8w8SZHPR9o1O/UdknSTz9EUjDZfQ5sSEHs2EorV+T8Wton8HJVmR5a1vuYx09ReT/BNbiv8UGFgcCqMKzEQmoVgex+vAa8esZCd0oJgyyI2mp7jl4ix7voHHK/U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VZ5SaXOe; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VZ5SaXOe"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F21DC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753717793;
	bh=U+hOn1Kebe9h+B+A7mUtIh3ogi3lZsZQMlgvH2oZAZg=;
	h=To:Subject:From:Date:From;
	b=VZ5SaXOelcPUIUoh7sSXiddznyf9Ogiqdf93qypnhljDvTSkIq5UKy5pbXJTnubaX
	 jC77gt3OSoXIMRK6APS5VmO4QQIphcGXWH2t3wZu+BKJB2LD2v4r1/twWCLxGTFwM3
	 AmsveFDcXXbiZ5vooxC5furMl6BCexTSXKO4hushQScV/yQsCJKVtH9YCTtGbpqUgR
	 eWK52VuCv4FpLx8O293JcsXNi8l808qPiXJ7vMfOC8kTkafElMSKY8fAtl31pKw+mo
	 qAWzJi6tCvF004AelkPsgA3LP7/Ed2ggQV9LSx03vyQxO3WVbSYNXdZps0rK4xNHm2
	 hZgJB+Rj4l/Ow==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FF83C83F26
	for <ddprobe@lists.linux.dev>; Mon, 28 Jul 2025 15:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175371779358.23278.5002317476735500948.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f55828f38974632b1eaa3915c4083c6bc41ab1b744c9cc89da7fbc8cc4226004
Date: Mon, 28 Jul 2025 15:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753717793
