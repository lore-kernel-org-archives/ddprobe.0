Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 288181552FD
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767256434; cv=none; b=rQwNea6KJ55b6CN60Bb6Q1zurTrxOQY7FfTPDMcyNoLGux3+W8KMKpXEWm7FGicS95fKljeXAen8+x0G+OigE9sztnDqK/xXGnpMg8F577yePMgeHjvgW98rF4rmgi/TFC3d7GpaSnb6VOYuLB+q2fs2bIZzvvqD5/c5GABdi4A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767256434; c=relaxed/simple;
	bh=aRZz0p19Gko9mMe658eS8Bkyu20CaT2h8cpGqF+6aao=;
	h=To:Subject:From:Message-Id:Date; b=kDT7fs4ZA9WNMgcOczfE1BRVnydMW7my+41o8+EEzYGz/+7MwZ/VtIjhtBekY8kEVxT7Q2UYDJ7eeiQJSOEvSEMKlxFcY/+Mt5ZzC2gkoYAeXhX5vyLyGbb4M8b5GXZHYmpzj11WJVvTkRE6/HQtrRjEQoiSkJ+di2NQjGvpkEc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HBxOvyUl; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HBxOvyUl"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A62A6C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767256433;
	bh=aRZz0p19Gko9mMe658eS8Bkyu20CaT2h8cpGqF+6aao=;
	h=To:Subject:From:Date:From;
	b=HBxOvyUlQEXnhpt8eq3Fq2VrsB9Y0ck2x+YU8zIJO6WyI/bztBZqObccixafQI/G6
	 6kCIRAyaqaZ2zZ0PgzGkGiSv6meZE8DHMgc287d5Es2R8VDjp7kCE2+sQKAh1MrQxa
	 xMBL7VojwWR1XdjkNrj1d4kMMRU3S+SEB18DSEKydtjxRGF6TKrQWD8JeqOULFaxw5
	 xN8foJ15ukXfcGpSB474IZcJSxUo0UTbDh+9joMQ/CNlYKoV4RoxZkgZ889WKZWnlr
	 ra2IBRvLaZpK+EJeGr0ulWRCoIbXY58v/tguwV+/77R1OKJaY3qGSN6XS0kG+Uqkh4
	 4utNKiTkd7vsQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94C84EEB57B
	for <ddprobe@lists.linux.dev>; Thu,  1 Jan 2026 08:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176725643357.16726.15164977466713631409.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 19368f19e7f522fe14c98bb97d26c581b66231cefede55bda32d0013bad45399
Date: Thu, 01 Jan 2026 08:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767256433
