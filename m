Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 67FBD314D1F
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:30:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791736234; cv=none; b=jnAoc5ovSa69r1MUzqN8sue4OS09Hl9TV01OGeEqoigrSDtsHFPmSzYHzFH1tCcCjvRddDDtIonbUuiUvS+C6pUAWC/1J7NGXzJRnsMu+y4apHarhBlpV0j9y2uLfQuUqthKrb8EhAZaFOmLsjYxygZziGZQoaXwUe7q0CYeejg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791736234; c=relaxed/simple;
	bh=GxVta6c75olUkHor8YCYSgSHmRIGFq32fWxpdwpLwyo=;
	h=To:Subject:From:Message-Id:Date; b=BQk4HmJNXVAhK7CuXLyrIJ3qKyrPZVT2c21bxQgU6DgMzYTJn7Y3cVrdVuiR6j/b0E6REilYkQnrEAKQU4uIpQhV+BhhPJRIsthx4qQTqigPq9XLPlbQaOwxa2oVruHB4U1lC9iWeI+2b2+97Dn0DkjtrT02CDDyNhcP7A2mhGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=j326hEBt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="j326hEBt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF33EC2BCF5
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:30:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791736233;
	bh=GxVta6c75olUkHor8YCYSgSHmRIGFq32fWxpdwpLwyo=;
	h=To:Subject:From:Date:From;
	b=j326hEBtWatXMHOkkgWjg6qIF9U7GtEhVR80pF5ZIwJZjyGtrSUIjAXUS14ips7Dn
	 AXhxgvWVe7IRMWGaQ4PDC8Gf7DW1kslbB3yjdoAR2bTsIqA9IwwCobyGNppOeqKwyB
	 mDbPRQfPA261flr3XJ/ybCacIk3da252t3nqsEHfetB6LzAfJ1fnepbHdJ+vEFdoew
	 ux0kmFgG/cl7u+4/IFf9lkV5wIJbC6cHPXMhVcnlDE9Uq+X3gFs4mXQiY/xGK952RB
	 b6CPRnfALYZAL663E7w37wmSy3YeXfo4dZEpkka/P7lJW1SzAh01unkGNXymiqMUWs
	 PNPG+44JGKx4Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABE73CA9EC7
	for <ddprobe@lists.linux.dev>; Sun, 11 Oct 2026 16:30:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179173623369.25647.118246955927603577.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f3085479e3d4ff1a3d232f93cb6ddf8a030d69355664188bc3b0ece21765942f
Date: Sun, 11 Oct 2026 16:30:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791736233
