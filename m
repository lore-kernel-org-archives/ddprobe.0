Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5578F13C807
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 19:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1732218354; cv=none; b=aGH6gHk1JDRc2z+WYh/XrUJnDHFqQqfxaeaZ24n7EsJWplrw6fYcwSEZ7IUWUYcTPCAHUllS8ikQ0gEsAcKwesQ2/xfDxRLcZBE8nzhbwVuCv6awddq7SGkbXGfrSMAmoSpE2jy/rbLsj9a9p0zhptM/tqxmDOxkJdSgC9MpKqA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1732218354; c=relaxed/simple;
	bh=aL7eoNquBmnRrqjWdC7OIa7bX1KH3r6zogIFuUH9RaY=;
	h=To:Subject:From:Message-Id:Date; b=Dzu3BZfT8/i/WvfqsxkfuYBM9rgO6gnPdjxLwfI8V6tLLYI1wsYIJxAorBUHQYFnOl8VvO7J5cFIlCPkHzNsXR6fOsAXDGVzaPzy6rFJmIT+ba9997dcqBzWP0CTYbWViwnPpUtnAcbQKHFVkYNI0nEyS1PssElYOY0J5/aHBUw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NTDG1A31; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NTDG1A31"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD34BC4CECC
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 19:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1732218353;
	bh=aL7eoNquBmnRrqjWdC7OIa7bX1KH3r6zogIFuUH9RaY=;
	h=To:Subject:From:Date:From;
	b=NTDG1A31IwMjRVQimbQbKcvvTNrHdsAVJMmw9MppqHlgV/nFod7U+qCvGprDKAlnX
	 53GPLaWjacItdM1ZAgVVOvWzq4cyvosn3PFyQKNDPVRlm5wIMGg+I9MkUA408uCGLn
	 g16QMR9cEHvs8vhna9jnsn0x33OqudX7jP1QEpmeT+VoS7vE+XqBpAGvdHMYrFSgdz
	 xeqpULTXGZPPfN4oGrR6bNbrphtZJ2j1M4PYEnQIlE34cPalTv0jAQKBxpay4w9l+U
	 kMoDiHRmojkrWhat7UY3ZPYaf3AzPCnB2i+r4zb4xZ5VNsfexeEq4XKebrPbCQZi+u
	 6BSjGdVKw5wPA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 971A1E6400B
	for <ddprobe@lists.linux.dev>; Thu, 21 Nov 2024 19:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173221835359.22277.16740212497482472620.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 62c6e5a4038a3a240ed3515b40cef76fc0657b7a956c3146d814a71f404b7c2d
Date: Thu, 21 Nov 2024 19:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1732218353
