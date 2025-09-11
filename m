Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A3AB322A12
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1757593794; cv=none; b=p9CyqSSJj9t3oIjl0r2gpurA0JwPEKkU/9IL5O/+Cbx/zyJdJcj088JHSZfehzrMepM6D+Jr/Y52iB/QP/YlXzIn2/g5IdZ1qMvWjKN13UnIf4KrOjsfw5lq5nmE9hzmXgv6ywMzgHdLxBds/7M69+wicTg+V4jcoJXInRDumOs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1757593794; c=relaxed/simple;
	bh=96pDkf7ZOCodMpKcpHQl9xkKPdtgT6bdJfUoSp4P5Vo=;
	h=To:Subject:From:Message-Id:Date; b=GxUoTllcqIfsFg1Z0NN+sZGrhpRQn8wan/6VVXutGuRe380Nt7aK0OYLy6X3MkT1US20Q2pDfX5L2nUozzIlWJ6porz2zwT3+nmHtq17aSE1NtYlce6KLhr3XbFFSdYw3QKk3UOfMuEaia48v6qJnUwtkC0PxiZuFVbHUR7WziQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TNqmALKO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TNqmALKO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A45F4C4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1757593793;
	bh=96pDkf7ZOCodMpKcpHQl9xkKPdtgT6bdJfUoSp4P5Vo=;
	h=To:Subject:From:Date:From;
	b=TNqmALKOY01c3e7VoU3+yj1TPvHcC96Zykt+4LWp/ub3hJgLS9MxwecxztN9IvCR+
	 VmJ2DPsHZOiRQBpDgJRiXjuVgq6r1TLK5jBABcq8/6DrBRxI8KXQsFWW+IomWifBn6
	 BQT1J1rUKNIJiU7WI5+qf+oLycWVkKde9dK81BD7gev4NL6a/vXDuHmhLh0+jCqMlk
	 CRiIqir7NAJSbTkzrZQG0bBF2faufMpztG7dMir5fA7PTyswfOK3EhHw+GruNlyta7
	 xxoKN6LEgMo/F5wOcydA94GbvAu9hw9KxfqNnEu/3CbuqnUmOOb2Mo89Q0MS84l036
	 9L4eoxppboO2A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9395BCAC58D
	for <ddprobe@lists.linux.dev>; Thu, 11 Sep 2025 12:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175759379359.17194.15416654553223606016.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 82fb082f19d3cbbfb2912df9d7182ec97918fb0efc4c41804a9fd004decd5bad
Date: Thu, 11 Sep 2025 12:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1757593793
