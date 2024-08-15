Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D81C719D09E
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 13:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1723728953; cv=none; b=c+33D0RS+qs8cOzmmH3S/mZfyW57P2+7xEEyOj57c04OL81HIJROD5Ea0KDCp+tep+DS0FF/7CtdcfnouhHwg1ZNmJcUmAZLGZ06OitkwHg9DkVzZr9rFjEOeoJYkYzlyMqDxfcAwPRdfIpKsKiWj4QibpVxOXud1OUncLYWPYY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1723728953; c=relaxed/simple;
	bh=S/XJI0pjBPz2Z5yLbcdioLCOZREsoezxoFxFUTOrc4Q=;
	h=To:Subject:From:Message-Id:Date; b=WGpuQFwGsJYPzRf0tkO35/2y1CMOGOOG74Nr/3BvhUbQj8UMAeermeftJUrugSLB6RCz125oiwFfKRA/IlO0xYaRWh3mafSJYqptLwD29W8nBorBsvPN1wz20r+vBvTAsxvAKB7CZ2ThLDSVyDZtvRRi4SMSpXnxlFOW5pKEPmk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jbwgztpD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jbwgztpD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB8B1C4AF0D
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 13:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1723728953;
	bh=S/XJI0pjBPz2Z5yLbcdioLCOZREsoezxoFxFUTOrc4Q=;
	h=To:Subject:From:Date:From;
	b=jbwgztpDy782bBncXyukOOKYBGGbOD396iUbeZBce5XNxrOHpY8aPN/3HMR6fHMt9
	 ERvER0q7OjHLYM19r6E52HP5IMGZOslj/BrXlQxUit5BYnBDUEhz3STZKEYjvSzJAL
	 5Er/DygYvpWJtJGmNJJGwWk4RyIg+5c1wInMBQ0JyMs3KhVIu9fbAteausFh0qju4T
	 w25tE0H5BX75zDF2g+Qz+pE7H6v+0CfuqQiA9z4MUazRwlZZSsR3Kwh8ZykWW5nrXP
	 8keQzIfnqYW9Q79YYqIryPlE3fFg4TYxQVm1JY10iOiBzBOvfnAHlGGqRR66NwAIol
	 I8/9c+eqmk9EQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97A9CC52D7C
	for <ddprobe@lists.linux.dev>; Thu, 15 Aug 2024 13:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172372895361.18667.17004698894155357095.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1b20e23eb96733589363115d1524f5701e1d7b36d013a70497c6478e83ac2fbf
Date: Thu, 15 Aug 2024 13:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1723728953
