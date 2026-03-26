Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 5BAC3386436
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:24:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1774563894; cv=none; b=Rpay2fYCno5qYEolPW+oTGuclmsOVcCh+BJg55DAuOxwSFcp3bFThcOhPfcgW2r5+emhTf0ZDqOFYgDAByccr3cWZLyN/Dp9o3/Gk8qpgDB6sdnkr/9bjv7h6oASa8+ZpBWQF1qeIJINAsBjpOorClJ3OTOID0MFGqPyzX/DuBg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1774563894; c=relaxed/simple;
	bh=uIuNi+BHFiACCkLtxckTS+eXhdjUfi74+9FrhTtWfr8=;
	h=To:Subject:From:Message-Id:Date; b=df1CFoyI3jM6TDRXq0uFXuJE1mK8JgUnDrTi3WzsKvxD95if5qpisfjXR95RNMBsGMy3oYF/jEfJXjTUppzsUjgp8mth29raXxIDpT9Z8C/4dLu5JfSKvZfTeaoTf5PcJ0CPRXJ6Th+JY1ZHP7xamFtKu39+pf2J0D2tCLKltbo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mnv3Jlcn; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mnv3Jlcn"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E588DC2BCC9
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1774563893;
	bh=uIuNi+BHFiACCkLtxckTS+eXhdjUfi74+9FrhTtWfr8=;
	h=To:Subject:From:Date:From;
	b=mnv3JlcnzLrRiu/Kk3oQtCTDXAc/gVv6nHEDMkPyGhsdQBktaCesYNgT8/DH6hlBJ
	 ZRqpmDnSDexijGboueGofIJ0bxVs4vCV8AUoW0BjWIkERW693SDAjZhBgLrvGpbxKc
	 tI5DohflkjFc+BBgabnXnEyrKqRMtdo6fwjWOr5soH6f8jrga6/qS9HS6+9CnUSfPQ
	 H7LHnXuH7iDZh2plymDmC/uCLtig2RO5A1ko7FdMNBG0aZwAtWAbtQ6OAJXl9WJGfT
	 mHpbnzwp3u0TMMYLJhW7289R6YL1xZJ6Z+GC8+qK0qpKYedsb3vd0pHuz4dGxrHd8/
	 fF28mHP5pEPQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AADB10AB82D
	for <ddprobe@lists.linux.dev>; Thu, 26 Mar 2026 22:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177456389361.4013.12392051801593974412.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 40d32ac4f93ac9e18e02e546444b35c78b85e3a7d727392f2522ea1620ab8c8b
Date: Thu, 26 Mar 2026 22:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1774563893
