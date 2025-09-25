Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 34178611E
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758761394; cv=none; b=QB7Zd2ttbol/KoAvHR2RPg+4bt1d+Ohkm9zcHCDPpk1uJKvfRpOzQWWM/HOVh7vavqDx4RJEi3qIONZqJZoFQfJvMpbnF7x2O4s7V9xwDkerv/uI/v13dP3AXWdZYeeJp5RRTmUbH7RdN+uTulWX+MxwdJ/2GF+x2W2fqJ5V90c=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758761394; c=relaxed/simple;
	bh=/s2rbGsQ1GpjvVmn9QkaHDRycbaS0TrTzXfmagQUCNo=;
	h=To:Subject:From:Message-Id:Date; b=N5aFNelBy2Hbmb9bv33Kb9OJSejZTAtE0WJaIGA/nj8VLns6Y4rVlxDmKCbKfNeBw30xmKz8+ILQf0T1A1XLlYq2hqVCWvjsio7YCZwuYuKBd/f/pc5qaHa4ZRNUoz7+r5dGCXkLdztKh1Z9QXWcTISS/7LQLLb5GT6HM3o5X38=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=CPJyMjx4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="CPJyMjx4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A575FC4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758761393;
	bh=/s2rbGsQ1GpjvVmn9QkaHDRycbaS0TrTzXfmagQUCNo=;
	h=To:Subject:From:Date:From;
	b=CPJyMjx4pm1BuZyQc8eIJlOJw2cq72fV6hPHhskIWNfRFgHro8LcF7Zadg3FCsOw6
	 wSMBbuZUSJv6vvEM1D7UZBcDu0ZH9aUu9FO+eRoMlexx7eitYrZyqHsghQjNcYbEV8
	 +QgsHNrJpsSENvl+JE3hXuqO4RBLp1ZNalzgcXhJgfWPJsiuwGAhbyhaGPCCYKCtYO
	 U+Ir5o1lVNUQB7rVZg0B41Qiyf3LklI6/9aekbrH0uuNNoDhM+S9442ANW0M7dwpAf
	 6bLX4V0AJtJesxhFyqgUNqoafAWXu/cc5d2+2815H4z1ZuUYwjPRqQP89gJsC9Sr/b
	 GMfgw70W6UySg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E58BCAC5A5
	for <ddprobe@lists.linux.dev>; Thu, 25 Sep 2025 00:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175876139357.31771.4675438390473709637.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 84055f5018bcc09b9a58b0a1b4e6aa6c6a1c877d955e3da9950731dad5c9166f
Date: Thu, 25 Sep 2025 00:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758761393
