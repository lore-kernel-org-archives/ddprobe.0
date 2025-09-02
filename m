Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id C929315746E
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756815593; cv=none; b=V3hN8Gk26wfSKPGlBH00+VpEKLBvVwxzAsSWeua2nGN8gkLFkoemPNZBrBAwruNC+3lk/BGpN0pKw4UcSh/e0LhJa6tgemtJQJ9+Zq49/uzL8MUdpyGjiB2/teVZhMa+NRXfRTnQRpxq8rrI95XjNFyoAkoQJR4VeK7vjjKUc70=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756815593; c=relaxed/simple;
	bh=ZhCYR3WDKqnPjxExAwCz7MRruwORReHJ8PDwSje312o=;
	h=To:Subject:From:Message-Id:Date; b=WMVKs4C1JxhHoCT6xm3jaX1OYBepOngycvGjI+naFQ2nwiNWd6JLzmgPzRvp4OBmQU6XF5kXmZ/TgB0k9whm2viozmIoP+eYFUgwdC6YCbGzyosA3MZIhaHUpfoyvKm9RVbvqfGJrdkzOga1mjQ9Zh0FH+YpqwXQLw9OsQndEF4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MKJ0JL37; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MKJ0JL37"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1262C4CEED
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756815593;
	bh=ZhCYR3WDKqnPjxExAwCz7MRruwORReHJ8PDwSje312o=;
	h=To:Subject:From:Date:From;
	b=MKJ0JL378NO5duMSlr8if3MzXqupfLm2sNwevOWc3EVh0sTvazKvuhhSBlbYf9qAN
	 X11TOVLFU0opv6xnQI1yltVK4g2q1NB4e1jIudHcDpdCo/GDSLw6/5YEZ1r54xwCmN
	 GWKY1GZldmyGaqwJ0Pf78EsmLJLIxJDhGQ6RLSLyvyaiuPKEiKDGjrZ3yRLbOe2+ac
	 LOy1sQ4xyoHA7F0Z3m07sHUgxs8n6Fg8eXhoygDNq8VmOyWl4BMjwVS/CrVYROV9JK
	 mvVpJW8Yv24FXD8IGOUum0euoqRjc/rpVUdfBJ1oPQ+sUjprOJOl6J15KSMB4i+6Lp
	 5eORRLIGNnqsg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC0BCA1005
	for <ddprobe@lists.linux.dev>; Tue,  2 Sep 2025 12:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175681559357.10082.1406163904400910119.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0d1da41b500be91d88b12d2639420d9f89f7a15f75e0cced1df090ca48a0c627
Date: Tue, 02 Sep 2025 12:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756815593
