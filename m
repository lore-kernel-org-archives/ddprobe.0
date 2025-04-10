Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 39FE5146A68
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 07:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1744271394; cv=none; b=LjOv+xpw7fImiXRZ6xE2WgZs4IlOzTv/EQuqMpOc96nn3W8FQhaFoCH4FBMnhqZEavJrgMZn+9q7PaicwQfZbCGMg8OxSr6lGeyCI0+o+U7NiWXUjuEG00gOxE4aHysRcAVcjcP5eG1L17EDzdTgKlMpuVuNx0Y35P3gxuyunzU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1744271394; c=relaxed/simple;
	bh=eXAzkVI3iH4XsJAA14NrkKpPf1AxsBH4lkL+M1PEhP4=;
	h=To:Subject:From:Message-Id:Date; b=JtE67kgWUTOE/nJ2iw/rl35L7u07BF/f1sYPWKctm+fjPPxOC8Jy6I3yHhVthaDuHz1c/C317HTDQDye738uuG04xKsZxLmuOck1MHr0mtIfShsjJ9Z/9RBNLYydCjOYEJY6wskvYvYcUNvjRyvBmBADcKVqng8+uYeo5hQaKok=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=nei6gI0w; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="nei6gI0w"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ACD82C4CEDD
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 07:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1744271393;
	bh=eXAzkVI3iH4XsJAA14NrkKpPf1AxsBH4lkL+M1PEhP4=;
	h=To:Subject:From:Date:From;
	b=nei6gI0wyhU8aCEBPZvwv+EBnkYOZ9UHydTOqRRQ6w+0lyz1KQpypvv56OV2N8+SI
	 8aaBlEexxaRhD7rJ3IxhzmbJYK9UtwihqIbdAsvtZPcp86dgdhj9iFAuswevKB6XVR
	 xavgY7mHcAIMKJSQxeRThZdk0lFkngBh/EWPg8wmQ5YMOS/wh43+gv56CaQulcCfWx
	 E5Dsekb7FbdVzZItSKom+DBSETRaUVfJXa6JpkEuhlq7/xrYASZ9jSS/bgxAz9stKd
	 Z0PbZjjBoAfo3RqzyurlsTc0eS4OErsS2PlzkMSqOjjzHTtH5ML9CMoeyzaWdLX+rS
	 zoLFGKTpP3Kww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97546C3601E
	for <ddprobe@lists.linux.dev>; Thu, 10 Apr 2025 07:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174427139360.7385.7479096735834723645.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 01399d147c47610497f15e7b97644c7a3f48814944ebf3da3fc5b0a2d66d8589
Date: Thu, 10 Apr 2025 07:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1744271393
