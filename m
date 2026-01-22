Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5CCF3366568
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:53:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769100834; cv=none; b=UqfDkN6COLC5CVAhbACdBlgv82zLw9wlJjOjBd+rzCjUV7x6Zf6UimpIEqnFKxkyIjwqBYhpMw2A3O8mE+GZfVqW7j8HEb2nVhW6SrL8AD8dmAKhpmAPY08Ji9j/FvKRYI8aAYl90agugIJDTHb1N469e+e/kSdUClXmCuDDLU4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769100834; c=relaxed/simple;
	bh=AXuaj3aH8BSbNsl0sFhQxxmYmcKX4gOB1hfq/0YFblk=;
	h=To:Subject:From:Message-Id:Date; b=uZOV/dWg5l9Wy183HUS7MwvaCxIlFJFIrqz0NYa7uHAW8fjWDuHjIKeTd3LDzULsg8ODJgTr5ezt9QpJefOeD7YaxNV7mtFhV6Il9gmItDc07Z9KE3Xatq8f2FjDf9I6JeMohfKRLDeYqu49qoYIJGZPQfto6BFJjRIySFMPItg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AQdOtfM5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AQdOtfM5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A13C4C116C6
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769100833;
	bh=AXuaj3aH8BSbNsl0sFhQxxmYmcKX4gOB1hfq/0YFblk=;
	h=To:Subject:From:Date:From;
	b=AQdOtfM5to+eng75oGfk2f2LUQ7spk80Syas70tZ6xIzRdHnrW4KVAYA6zTWLhSTi
	 s1c7rh+HlMS/d6WH1y5yKXRGMBHFnOmIORhzGatycU1qHMeDX+DFG0FTpbybWwvWmg
	 wsjPsienowregMdZW9TFl6HxUU5ZiGHtLeKT/VD6RCXz+NJEvU0+JQ+XyXjdgvKnZN
	 BKIomeVuOSl+ybHouYpVxLpBWiNP980dJJGsJryyKCLnRkXgJoFVAPlYRuaNYSCYpU
	 CC48s8iKTEBE5nVnSIY6sUhU3qXhPBFVG7WoASuU9UGvhGDm8klrqs4gQ8rw3mHTMg
	 5TRa5p7Q1U8Wg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92DC0D3EE95
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 16:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910083358.16300.8740239662563320956.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17b165876c6a644d89db961a1de24ed5594e6deb37cf09f1682c391017a1f1b4
Date: Thu, 22 Jan 2026 16:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769100833
