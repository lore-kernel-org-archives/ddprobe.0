Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16BBA8633F
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752608994; cv=none; b=qjSH+Dw68EVHGUz4+dAQKyfntOmRsBWp+a1GEcoDjqNUrOZ2DmWUKRfs4ocCTyCwY9ujV++NbbQ+l8R4yUNSMGz9I31i4iuqQJdCa7LjV1FHR/+cw4rIw0spqMjDQQLH+Ci5h7nKOSVzg+Xl5cRP1GcHYPZ5WME7Nz+XZFNDkwc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752608994; c=relaxed/simple;
	bh=zdvc3KlqsrfNIL3nOdKMOLwTWy6G+1WOdXdrBjbV11Q=;
	h=To:Subject:From:Message-Id:Date; b=X4fOSyxSztDdVA1FAY7O1/TXTq5L6IoUn4MyQFUm9S3K43Onc2pOhKqJ2FFfaeaFDemuWWwBv46jM6H5vfIUFtEO0Dvkpv15NzsFcU0y7JK6ksKuywzH7gyuVSLnHKl7jhDVEnqAuM3FSR1lFO7+Di33bllFF7CyHbFf3dhRP5c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dMgIP3zs; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dMgIP3zs"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6376C4CEF8
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752608993;
	bh=zdvc3KlqsrfNIL3nOdKMOLwTWy6G+1WOdXdrBjbV11Q=;
	h=To:Subject:From:Date:From;
	b=dMgIP3zs/ZAVuv+9hvzpn7LZv1ubp0p+0j6JQzNYuH+9GcHQfnPdcCnB/0psC9GWY
	 arGbBTBA+FZ/cGSphqSv3jsiPzJIqcBn5LatygSnqw40DPWnwcGsdVuraGw3g9FBA2
	 HXzAlYa/Swbr4UvZs3qkE8lDk43pyco42wNzDfPJ6/QfR9mY+x0heHhEokTA4PcqkE
	 BYwJ4aWjBaCFvqCfNDvRgch6dBscqtW1mwTwrq5OcEAUnjL1JI6jw21pyoR70tS846
	 pzJ7ip6W7bSLN4SCnXoZNb7xvVpt8JpIkdBLwO0NkeHsuYW6XF94/YBUUXbTz9LWhe
	 AEutYMkn0PZdw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93180C83F17
	for <ddprobe@lists.linux.dev>; Tue, 15 Jul 2025 19:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175260899359.10016.11179905559867724381.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9ab7aef34df81823bbb55cdba8c1992f4cc5400e9319bac900fba4c291ec47bf
Date: Tue, 15 Jul 2025 19:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752608993
