Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 165E2279917
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769409834; cv=none; b=VhX/RDbmTo/0ueWPbW/jwk2NCJp6nkGV8Tam40pU6LiLm1qahEX6QsbQrkgh/CBWfUdjJyj3dufsK4Fn8dLHEVhdsglTcQII2PBvpSAq24uTeagtOAOLiOiDavwFVX/4dCSEExg8TbC69HfWcXL96ar8I/Jd4VEwzTqRIoeK9fM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769409834; c=relaxed/simple;
	bh=sJM2x2TjocuUmUi4PowIAUJz1aMaI01MHaXnPz42fKs=;
	h=To:Subject:From:Message-Id:Date; b=YOfJ02z/ifwZEMaIL8EeSur6z1N3Dxtb/9TQUzaHxJwXhBj28tNdfTD9AlOGE3S7qW+6ixIglkTEou5U/jVLPQLfA++q0abQIEhgZce48PgwxTeWRxEwJZFRe4cp9M6QvwYMjNBRR6rhlctOq6uarFZJDsWzsK2m/YVfHBn2/wo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=btDKy+aO; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="btDKy+aO"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FE87C116C6
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769409833;
	bh=sJM2x2TjocuUmUi4PowIAUJz1aMaI01MHaXnPz42fKs=;
	h=To:Subject:From:Date:From;
	b=btDKy+aOzrX8Ok9ycSdyC5JRoZ7XXTDxZ2KnlI4vjTjQZdxF9zikxj03ftQh4ITnt
	 NN4BZW4kAxxDUlLvXm+o5ZbOMTOZyeonPoGKMG2L10b4gtCgGwIdOmYUD9dUJqNHQP
	 qNpcE23sY4wjoEzg0T+jpw6nH//ivN2cunzu2yw9icRox794gQdR5vgzVkZzzBiYrK
	 UhWuc9FKLnpHsPKH6AWteGSqfACt2L9nMffq/IqsF3oMvU83nYb2EpkoKTL2WcJglv
	 Ktq588cxlTira3ovlab69y7BxrhmTHrUe6ozciuxLDAm7+7xmG1YRjAQA7vMJDxkrv
	 hi+ZMK38wZkkg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EBC5C88E58
	for <ddprobe@lists.linux.dev>; Mon, 26 Jan 2026 06:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176940983357.23304.4689829848077221295.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9f76bf525ac3a82dbdb6324d80e4c05e55d65493294dd68b5966eb59118d4964
Date: Mon, 26 Jan 2026 06:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769409833
