Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4C25638AC75
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:40:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1791117634; cv=none; b=WO8OXJtRRLIOlWUDx5VhX3tJOtdWEINsTaG45/kYiYawamNQgUJM/BfiWTM1yJMrNRl4HxGY5ZGFYrx25CARTN3ZP5jUjHl9Y685DHw4BsTE7zb9mWABdhlknefI7CxdK1Db0m64vzoSz7qkE/xjBPVD9qQwvMzM3+QIZl7BMzQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1791117634; c=relaxed/simple;
	bh=qzRzU+UtLnQbm8LFc5TqcPJU4XG6XSUxCPBvNkJfMEE=;
	h=To:Subject:From:Message-Id:Date; b=b1jHcVnZz2VwhMkd2BZLr1qH30ed0zuRbhjNcNOq3GIrJGyMDJPPFozHVE9YlakYYwtNBAm5qtBIVMmFmlzaXYPAjdE0UQVpHpKM5lOzsIfbrhPHui4CMom6ESAJcN9suCvgiHWP07OC+8LWIhGbBhD1Bla9I5jnzYBWU+7oeM0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JwSyR4Ou; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JwSyR4Ou"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CA6E7C2BCC7
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:40:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1791117633;
	bh=qzRzU+UtLnQbm8LFc5TqcPJU4XG6XSUxCPBvNkJfMEE=;
	h=To:Subject:From:Date:From;
	b=JwSyR4OuV89vctZWHF0EjalYJAVohhBNOw+JceDgqpNXfN7gAuo5/8DqY/CJYk2/q
	 MKc7+okN4zSOSfwvsdr1Qm5L8FmPwomw/IszoJNJwX+LQLOycg1w0d/3hvM1O7xngY
	 F5XK4c5CbHqFLd14MEgKWhjqrCzE73APoRC11O5+TtSylvbpJVY8egG9TQpSowpgzC
	 vS0LAPMbybm+6mbakkWO9GeVTpsmzwA+kykMSrCNJ3SLyWnhJZj5VVG/eCUzHe3pPI
	 s5SRHXpGLkvkL+IW2nNl9zxRUXkHroErOTIHs9QrM0WyymEhnyFsi5ZvNp0yLb+ogh
	 MGfHNQQ/ZQVHA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA4A6CA5FE6
	for <ddprobe@lists.linux.dev>; Sun,  4 Oct 2026 12:40:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179111763368.22927.870589414680502084.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 487db60cf7e04c30255bc6f6c58b550304dcf1e78529bbe508453695f3f2f275
Date: Sun, 04 Oct 2026 12:40:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1791117633
