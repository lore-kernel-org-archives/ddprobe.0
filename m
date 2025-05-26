Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35FAA1C8601
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1748260196; cv=none; b=Tcs0QvtbknrSVxheW1mzE1DEWB+UqvycWaKvOZ/UykZcqSB8bLx39mdES87ocTfgJQSN7nyCfT5WS8tJbUSjUtuRbGFwAsypn66E3tcV2u6WZak3tY8zVJY5dtYDDNUVUIgS+v/LvJzhHNN7kecx9KB6lZdI6/oQQtwcgQbEpiI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1748260196; c=relaxed/simple;
	bh=soHrOAhvMLM85jPYZrNDfT0WhVTrd4jjZGE343L8xBQ=;
	h=To:Subject:From:Message-Id:Date; b=jbLh3BOZX8M0LYJmMI3YXRDa5MW87tFl7sEd+JeGUlvnzH1y8hDXVW8lVe0awRkp5wdL1/KGdcbIxtIGAAg9VllJnOc/YPmD0q69FAw22dzsVI3HzB6mYof3MIfwcdCeTcQvdAny/plrVOsuAK5FwY4+ojF9aVblzUg5EOBS4EU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=VvoLYtON; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="VvoLYtON"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9F5FCC4CEE7
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1748260193;
	bh=soHrOAhvMLM85jPYZrNDfT0WhVTrd4jjZGE343L8xBQ=;
	h=To:Subject:From:Date:From;
	b=VvoLYtON4h4UyKcOLSoNUnMH2ofkzJ8YxJnGjBrUzpABcccUQR1FIF1xIjOlkQerF
	 exJFzTmABeyFXIztO4rThEYpTk8Qf5/skzSaNakLuQt4lq+ixWszSJt+qfShltuvOE
	 EPSynUgExEdj6HGSksNTFIfPBbJmAPPZul7qME1J9I06DVFAbkHT1aDkV9AFZ6tvf8
	 dplltEvP93CP+CyhuPbt8VLa3YPqm+IpzXn7wJ7egBDe1MYoehTMMYBpjQ2ek3mRK7
	 W9JLTtcPQMxa6yW08lM/HuO4gHSjC7pWke9ztpa1FN0X6Mf7WVRqned39Dk23DgzAA
	 5t/OypmMREFHw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F49FC5AD49
	for <ddprobe@lists.linux.dev>; Mon, 26 May 2025 11:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174826019357.9287.6217285358408802199.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2453fc004bf0c042a52cfd38459621f449403f0f38bad513e0f9d60bfab9d39
Date: Mon, 26 May 2025 11:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1748260193
