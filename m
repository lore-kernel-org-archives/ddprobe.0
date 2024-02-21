Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0A3C1376E2
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 11:18:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1708514297; cv=none; b=r20c2YS2nD0vX5Hte3rSaPSCxmtxSA9BND47DTBxsnSA3bE4TWrC9UgQSGhGPu9b/YiYp5FQSIjUl3ZSYsgnQp/jxCOlIq/1QDhw8Q46fcrWcLInJOwe85B99YKvMXBArE2RPSV7mWa3NEJuBkd7ylA5nFSAxBxfHJ+cHrXFy1U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1708514297; c=relaxed/simple;
	bh=4/3FlgR0DdyT61VY8gcJrA1gKVduRIpe3I3S/M1128A=;
	h=To:Subject:From:Message-Id:Date; b=sLONSCqIEDw9tm6rI4x0+ZnieAVpO3WoaaoPFrYyJXrXBCM+/vC60U1Tuhfc7UECGX1ktevYU9RtvAkzUeY+Jh7lHDkqWCkB8INCVxdT2CTVgUG+AZ+oQgx+58oh0IPAe3eMu+s/AQn2jWo4l4aAurJwOZkGKuw5FhDXQrykUAs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dRq9XoL6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dRq9XoL6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7E91CC433F1
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 11:18:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1708514296;
	bh=4/3FlgR0DdyT61VY8gcJrA1gKVduRIpe3I3S/M1128A=;
	h=To:Subject:From:Date:From;
	b=dRq9XoL6yVhFkm/OolnoUonw+1Cj/cdjtPEBhwNjoV4Hu9QZP9CxqcQAlR/qmAMql
	 W4XL57tfAZB1x7e1BmgIbebdU9fwczar7GCdjYt3y6mc4nddTVvOEALWElwy/7J2xG
	 s+iz9wo7pHJuSXTUqcnEWU5MDpOL4UT2TPdCmEqmSueJRwhwIbi3JhAdVSCn5v+z4Q
	 MQp6J3GVB9GrVwfpsiRVeIxvTgeop3cOW9bMJTJz+hS0ZgzkrCeI/ImMujSjD4knGb
	 er2oj2Kqs46pQR3iVJmOjGzzbc8E3Emqg6EGx07ycLyWzskbDmIVt1A/6bl6rBfqZO
	 9xSl5opsvPs/A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 646FFC48BC3
	for <ddprobe@lists.linux.dev>; Wed, 21 Feb 2024 11:18:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170851429640.23503.10985489516458529633.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71500f9e8e5214f9c6b14b1a7ca6e8935cf1ccae8d3ddda5ec50183da742adf5
Date: Wed, 21 Feb 2024 11:18:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1708514296
