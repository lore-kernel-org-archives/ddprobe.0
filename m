Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2CB252EA473
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771176294; cv=none; b=qWwM9kTIQwUiR6bRHO5mO58mkeipBjJwXQqYZvcey+A0/Xz3+fKuWJyVjZbzA9Oe6oyYzwCkXaINKX8GvHxdTwplLPvgDhRgGPdfRRi8lal9l7VijVua73PRg0PW1Y2arsa/xx/bo4qIruwHvE8DjsKMsvpP1BNj8zUw71vhkdg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771176294; c=relaxed/simple;
	bh=yaVu0mlqLQlXyAC2hJJHBIB2+oHXCJlGwwrYfbooai0=;
	h=To:Subject:From:Message-Id:Date; b=R2nHY6Pu5iJnkdt9NyMEp4fMNrtYaiS+I/owalDfRyoxUUQuZ7hOXzM6RhbtZy6Q4NTJj2u3l9M6X5svPkFgsokM8HgvJKIqPbyIx3ERzGcTb9mkc7iQT0ftZEGR+vLghbeljBPEQH3cXeTV3ZQLUbBEF8aZZc8dk5V/ohLrt+U=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kJHqITPt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kJHqITPt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BCC82C4CEF7
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771176293;
	bh=yaVu0mlqLQlXyAC2hJJHBIB2+oHXCJlGwwrYfbooai0=;
	h=To:Subject:From:Date:From;
	b=kJHqITPtdT9HCQxXZuiinjl1oMEE/YkxWnCDIaZIjeWZmuHSnGpdcYY4K21K8zRH1
	 zFKgVfRYOHwjxPers5Dh8ZxfpmHpss5tOwXTufj+BhyCllIKhiHHmVqb7NYjkACKMB
	 vzSJKUTVDNt5LcRgkYn3yts72n4joWtjgRdwlK7XxouofU0gN1PB8dI6h9Dl5aO5i7
	 bPwcNHmfsWB/T5ai583y8Xc+gKEM/FOes2sAg2mFHzviRR+KO4UaCx8esjQNhbw2zZ
	 oDEh0ezHtGdz4boo7ooQSuxRV+oYrX1CZ8/zsZDn4lwvESTV7ijMf10C9QgyFiXFkF
	 1sGKwgoh7VudQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A742FE63F06
	for <ddprobe@lists.linux.dev>; Sun, 15 Feb 2026 17:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177117629364.24481.4653153398961409734.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7cecb4a7db9592ae35772517eab95a791884922d3955a229e912cadbac0c3b9b
Date: Sun, 15 Feb 2026 17:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771176293
