Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E9CD1426C
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1734909354; cv=none; b=SXf8hDEh5txPrvj7G0/Mng/pCu4F8QsoaiUeN4VzP0AZST34qRcDVnOz9y1jj91QwkC1HqJx53c5A5N3Ge4vx3wXFYN9D937sFBh2kTjr/oEzLwIv6IR7sOMXv/b9bB9lRGDpx4ENecUtKZ8Tx8ikEqJ8ML7jdpQOMgZptJrP9Y=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1734909354; c=relaxed/simple;
	bh=62XP0iGJMkIL510Fg3VO1eIH54aq40F0vDEuEr8vwSA=;
	h=To:Subject:From:Message-Id:Date; b=SEuXHU6qIQoa2OpXq9+kJEU9sqpqevGI6rSxZbPApgfyeviwKkKdGMPgnDSS6oFAKsyLR0HLZsLfes/NSzvOCnyCPhleJe04k9WCNOj06N5N1dGwNzcOBh/mpM6Hfpy/IT//0YYuX0TkW7ay6UuWbz+xM3A78yf2FOrK0RPtToA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=XVeA/nsP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="XVeA/nsP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C0498C4CECD
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1734909353;
	bh=62XP0iGJMkIL510Fg3VO1eIH54aq40F0vDEuEr8vwSA=;
	h=To:Subject:From:Date:From;
	b=XVeA/nsP8v7Dfzwh5KbOLmCHGpQsxxvlD/tZ2c9MtZ9i26L4L7/ybYJZTm3zcdBQO
	 PRUtSqDKZr7R0R7jRwGM9N4/VMHkK9YbcpuHM2VyyUGHPf+ISxw9SFh8BezUnyCrWW
	 R1EZbVQ8GryyHRF3UA/FKdk83sqUhapzaOIQOJOYqwOxoAnyYTidRiBmIWW1qvOyR5
	 KvcKhKZrkyEGVmK7nKElClpfxT5ZwunADPKC7I796ZEwGDc+EwxtbFX5gTqkEOlNdn
	 9UGZckDJEE9xBqyoMWR6TQLkyasx1bMIJT7JHOJDkhEHsxEwxTMrGV3Uz64P3t1ycd
	 l+H3cpp8M4EWw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB353E77188
	for <ddprobe@lists.linux.dev>; Sun, 22 Dec 2024 23:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173490935367.27923.10197934822913592933.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3cf4038c9243d80f8e390ed2093c924b2887edce2782d159c02305013afae85
Date: Sun, 22 Dec 2024 23:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1734909353
