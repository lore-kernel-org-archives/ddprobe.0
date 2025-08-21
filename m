Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 08F7B221FBE
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1755768594; cv=none; b=q3pHklnUO4SZj8f5km2JqMrPlGjxGFGj25hCQ1Lzat52LBcr4OWO7M7OzuCiba9LffBBqsUdxV+ue4dODdoy28fUe+YJs9Rw+3s67Vijf5oGHnchDZmnzwsmfTyJ44tMYw49EbEoYEnncHV+A8G3ngwyYxv+FxeNcmqYA8esML8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1755768594; c=relaxed/simple;
	bh=12Z6JqwNQrGsJ3JULvGZvRZ+A/62qt2ZsQg6bvACqJ8=;
	h=To:Subject:From:Message-Id:Date; b=PqJWWO07qJV6U1lBuEhpSxeJh1heCAX/JIIvsURE8hI7isa+1tsfvGbO8wxpUJldGxl6yyIbn5fB337eiap7q7unUyH/nHaCpED+p9Rn+K5wGqhYWKpd6HWf9cobymUa9NL+a6WRiKIwkNbz4dOssmC8CeVqsBX4S2TbGMyaoGI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YpH6yqui; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YpH6yqui"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9C8F3C4CEEB
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1755768593;
	bh=12Z6JqwNQrGsJ3JULvGZvRZ+A/62qt2ZsQg6bvACqJ8=;
	h=To:Subject:From:Date:From;
	b=YpH6yqui2I5kzq4P6aENBRAC8TBspjicl0WF+9V49gT1ap8vv0MWYkwixbw86amCL
	 UxJytT9tMC7b2Sl0sl2njjEPJyhM8/+o6yDtBw9zXzvPGEySWBBjv8g6ss+byvwrTJ
	 Z788atsHFzmC+wCAROxwuWq3e6qZqEdNUoUtPOpQunOwTDjYyrEr7sm9xS5l6UOWHT
	 GrwJCLZgJGkvKNI4gEeIlFsFcdBow9qQlufOmRPI5Lpz+PYdK14ecZIuB51pAsORVb
	 VBhp9j8szZKpNgqcs6zREZqVx4ZM9BcYE6efa71viUWsXK51VJW2FvOKyovP+9JFWj
	 tqzFqutzwp7iQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FC67CA0EF8
	for <ddprobe@lists.linux.dev>; Thu, 21 Aug 2025 09:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175576859358.12885.8989562667458983935.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3164ea1312b574c8f44fc313d8dafa5d32c3a46c732e4eb029cb43853395e253
Date: Thu, 21 Aug 2025 09:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1755768593
