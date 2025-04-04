Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4102A2E62B3
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1743747594; cv=none; b=rNCkxjTU95v0jSzcm/q6aX48wigwXbw5Vu2gyYg3OOpik4fn6eEnDPmT7d9uszfNxb11je1At23z9zfqJu2f8GQpE6ISaP2ddB2c4aWp/bZLeFA4LFVmfonmsIUKCxZ6FJXj+CbFxxYG+6Ti1httX1GJcAF48NgAMXbmGK3Vkj0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1743747594; c=relaxed/simple;
	bh=iBHP2SOYb3sgCcOmJea8y50NWusZAzBxQ9hHL1RURFY=;
	h=To:Subject:From:Message-Id:Date; b=RjRY4vhS3ENd8P8JWyjYYYiAWUVt/zcz9u/OuYWh+n5m0VUlaea9ygbtgkEErdyrfcV+hHwTE9l6/Q7LDzrfZi5Wja9VNWsl5uAkcU3uhEWHqEX58ZVW/JO0LnzPGjmcMYj0xvEFIydY+lGAGLPLO0U1P4s3CBU7SDAE1aYwB58=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iccpnaks; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iccpnaks"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA711C4CEDD
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1743747593;
	bh=iBHP2SOYb3sgCcOmJea8y50NWusZAzBxQ9hHL1RURFY=;
	h=To:Subject:From:Date:From;
	b=iccpnaksl8HEHm5fudofLk+c1yDqYR9i76ryJIzBXp1NnVZJ17RDakckCgma3JDjk
	 s07ixmrrt91VgIOK+Wkppc1U5JOZSred/MLSbIbvQBROZtelqqmx+ZcWfLR2D2QvYc
	 D/fsQNPRUrESexQzLdMDjLHFt/7I9B6BhLohPjE8QCaZJWrcWWWopPf8YshCdHcQcV
	 Ui2LNy4U8YF/EzbjcDaSqFiZotZeV0qA3js5kMwoiFgzvwxA5rn4ooJRzatRBaWkmf
	 S+Wh5W5DotaqrBjxA4PLxjc7UOxAz3kex43A9wX+Psof0zcp7hm48f4OQDtax3Y8JG
	 6QTPVCUxQfOCw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99042C36010
	for <ddprobe@lists.linux.dev>; Fri,  4 Apr 2025 06:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174374759361.29045.7915770851076724334.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c0fcecbd22760a4add411c36e85d2018a32798a9bd50c890797aa09f3bf46d
Date: Fri, 04 Apr 2025 06:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1743747593
