Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 35EE8242D6A
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771268094; cv=none; b=HUYB9z26/KCQWqoQjCz7zrEIITi+KdqM6tN4IRp4hVwGvUQUACn1pKlQoB6oWoF5kyjKV+GuvBVjcIJAk2M66SRoJu/sDHqk0mg2fXBowjFucSs2sEfGWuTpr3SIYubVQ0lBiOHpdZzn0J4n3xcLHrUtghAfqJxKP39ACy5m5yI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771268094; c=relaxed/simple;
	bh=EdIJc7qlzGz9UsLo9f1lTWnwWj1ufmxAAghKZjbOoOQ=;
	h=To:Subject:From:Message-Id:Date; b=B9zQAC6U2R2WfhiXbUYaNkbLYzyZVONLYovrsZqiPr0TjuOMxdSxmvct/Iv4IcYi2wlb3ZT9q6JIAs7byNChmfMz2jwcxbQgQt6TX1PjXE+FLajWmMRAbXVe6/I7MKFxl0q9Zeg7cedGqZeqM3OpUzntreSkYJ23uScOZzyDzug=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cuegShEa; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cuegShEa"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACCA7C116C6
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771268093;
	bh=EdIJc7qlzGz9UsLo9f1lTWnwWj1ufmxAAghKZjbOoOQ=;
	h=To:Subject:From:Date:From;
	b=cuegShEal3CC/UfsH/vgXnPhcgqcWcZRCDeCQWJQ/KI5qiWExK8iNxy90tG0i0Bwf
	 aMciNNXuGESMei1g7C5Vsw4S8fYiSmTBjjvTSgs2vpLitvTzQxNktSnVC8acvC5kt0
	 wCzRfVWG706EH6o2ksn7V8/EJfcZJm0rtwixM4k8BfPMNuSx/XfeE5A1+luvWZ5fuj
	 j/KGcBYO7kYDk4ti5kTkLsCGkcMbwazqaIUjwBOu2TZZU5CvRfIfpY8z5QpbXVjK0S
	 SQn+Q+telBQqm7UAqHiGas10sqxcfGnCKhydmMEPUEmqvC6eWrQ0vkojGaCp5igFjd
	 rHJ7qHcFToM9g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9A132E83821
	for <ddprobe@lists.linux.dev>; Mon, 16 Feb 2026 18:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177126809359.13442.9398225656864149470.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d91d9ff085954630797909eefcd4b522354617e01b8e1f659020152994731b5a
Date: Mon, 16 Feb 2026 18:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771268093
