Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 50D5139A04A
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:54:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1780599274; cv=none; b=MEy+AjXDBX+DnL5Dsp9DzdlVwferdpny7cL8NYsdvOJ4pMIZsK5JyRpo9WETMug6xP45c+4+zo0Ke7LjqOXZU+BXW824Hgt7MZ7dv/gFXf/TvYOBqaXGzua88dvWzlSzEtc5awZIDBnXpYtBXK9YcaRvL8HJdQCqVB9pS4shTGI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1780599274; c=relaxed/simple;
	bh=xCdoSUaYCAPaK58/7pNQWO+uFLZTnOOmreC6Qn+clhU=;
	h=To:Subject:From:Message-Id:Date; b=WPVbj2uVYWAL+0J2socEEjzBUqu9iMu0wM0nhQjEKzqEi0VMc7WKmeOYW9zW4hjbH9Tpg/0VtTTK/4r1FK7TY55ojxtC/I0DiS9KnQLI+IVXvEEv6nBXYD6/Zo2JcNy3Vv2hS/xu3y39/NZZ5tvuOiAgx60AJXIMu6rJwr2rhvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HnVeEAXI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HnVeEAXI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C60FEC2BCB8
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:54:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1780599273;
	bh=xCdoSUaYCAPaK58/7pNQWO+uFLZTnOOmreC6Qn+clhU=;
	h=To:Subject:From:Date:From;
	b=HnVeEAXIYkkNUZUqGFxAxh98eYVWq/blITF2yXQazbkKvTlBtPWQD8Wd3df8vw9Nz
	 HAK3rB2VQvWcLZGnblBd9MLhSBYYgsL4Q2ad/aNHz6Fe9j7C+UoEA2HQBUuwMgVgqQ
	 9mJaGgCk2JKGY7T7oyOgP0zP94CDJdnoXANib/E9iiiiuwbzQXclP1zsIHd2CsFKML
	 yC5E0J/P1Wqa/6TDEhV9uPwmFmAk26K0e5mvbajW8nsfFEtyqZzp23680lnO/h7gs2
	 eZJLI3u+sgjZnIOgkY5tNP0al/BP9+tJhM8Gd4sUaHDcP/Hh6mChP1P2ySwjkJbnNv
	 NLiWtyi2aRfuA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AA540CD6E75
	for <ddprobe@lists.linux.dev>; Thu,  4 Jun 2026 18:54:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178059927368.23572.12106948389395266189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f6391466159bb8b6b3ae18090f04d7b2abc6bc919e1aaad535831e7cfdaafced
Date: Thu, 04 Jun 2026 18:54:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1780599273
