Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B82827B32C
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768467834; cv=none; b=NuAgsakjqIGDLwFg3dyNsgN7Nn55VrkI/5j8vFAtysZayFf0nWaiV137jHabhzTBJF35ScrLfJc5Ab5EizuhdUcAjYtYMamCunTCgiSu11Fyu26HZJnP1txHScHMjiOvonAXsMJjjgDSAYhBa30WOu8hd/HZaAN0B1aXKb2I8Do=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768467834; c=relaxed/simple;
	bh=L8HajmQwf+9RzYhVDtY/0YFvUyMAT9TJaRFctxHiRGQ=;
	h=To:Subject:From:Message-Id:Date; b=H/51KF0blgzvDlHJnEy4RMWMxcRyQLosGSDr4lmSqYW+RuzgBT3Rr79Bvwf5myQ5dYCSHil5Kcyg9dMb9SadyKamdCXdSNQ9HUBTZSrq6LRw/NLA+DxjZJQvzaS3H/09mu7Dm5pnGkznvnVuML2l6xqM5+fi2V9XFPd4e2h5sHo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tsNxayY+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tsNxayY+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1B46C116D0
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768467833;
	bh=L8HajmQwf+9RzYhVDtY/0YFvUyMAT9TJaRFctxHiRGQ=;
	h=To:Subject:From:Date:From;
	b=tsNxayY+8g5WdLekE7Kcr1W1Y2fPoJGOKtDSzkB9UgH+i2r0Uw0ET0pDa2fC+fwTY
	 Bk72De2+lLVQ7IHNz1938pOMJEPy2kcqhzpCjxxCoi21iGmSXrEj+Ino28z1IaN7ZU
	 V7plqM+6xzyou9aFWTy0SZBYb+5vphtyz1baS8DlXoRUkWt4GP+M18udvZDziPo0Yj
	 A2s5ZV8FY7lXzm66JnEKDV0+NHDbx9yqNbLY5P188+8zh7Bb0RIHtj4MIcDJdqzEDd
	 b2+3ljJg8kcacNpq6KQpcz6eWfJzlrHDOCYQuxGQjhPTIcElENjMoZtN0Om6cYMQN1
	 H+OOue8mhcReg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9398AD41148
	for <ddprobe@lists.linux.dev>; Thu, 15 Jan 2026 09:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176846783359.10794.10451883871300015525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 98ac7d0abacd14b56df84c3f18196e1966236ce78e1298fa7efb1dd36db36781
Date: Thu, 15 Jan 2026 09:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768467833
