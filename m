Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 33BA028937F
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746628794; cv=none; b=taeKMMYpE6VbljgHG7ymifswdCbB5Wwqn2kLwC2AAZkr0mKIxPFu65Ng0Xu560wXO+DVA7Pqa+0iEh/YUn0tCAeeVVq1hvcNRH/7+Zh+HO0LsxUBUs6vWY9cYDoUdcPxl6De/iggadtKNqh8t7ezxao9KdyDBzzoJ2sklwTRCZs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746628794; c=relaxed/simple;
	bh=+iD8dD9hSejfSxfjFI+F44WumkoApWTEqk3uGyORMK8=;
	h=To:Subject:From:Message-Id:Date; b=T3EsOj7Whk6mQrtv+3IvJZHwOfH9MV+mgTjpMf5sG4JEjGn31jQvZOGYcXERtZz/gfYB4U+MBD6NEF4l7XQ4MjNGyxd68Z86CwotEowCdDw7NdQeWcC0sXs6yMhwM1TPhgBWygzbKyVQq+oqyL3fyW2zhObDEJAyj3/uoZkBhiw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Yy9FXCiz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Yy9FXCiz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9DC22C4CEE2
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746628793;
	bh=+iD8dD9hSejfSxfjFI+F44WumkoApWTEqk3uGyORMK8=;
	h=To:Subject:From:Date:From;
	b=Yy9FXCiz2pi4x7ogBlKvC/TfH6IUOWyErqzp0l1SBjfj5GvBAtYpiIpylLcRSLTi3
	 66eabfon41C7zOE96bXSNuWuuhlAnmkxwZfTtC13+BGRpl35xEOJGWr1sChALUHC43
	 z0ACfFxLi8uU5qnajkqJpm3wr0DACyXiPurtVJnu0dmX4WYC+aHDEhkbY8zLlloIZt
	 KlXnU/dnjlyIFQIEq11KKNaL8DhWrBQu5UxuLcZ/826Fh35CGmlJXcERPTAqirHMM0
	 pe6IUSwa1rdC9FexyMA01UtQ3x2/YPZ/qKoA5a+bh5eLx9AlKocAK71MK5LX7t31HJ
	 LE5dQ4QHqWTrw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBE5C3ABC0
	for <ddprobe@lists.linux.dev>; Wed,  7 May 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174662879357.2166.130336845349109936.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 34cfdb815b754f34a117e64470ca63702a73fbc177ef6bd742bd03bdfccd2421
Date: Wed, 07 May 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746628793
