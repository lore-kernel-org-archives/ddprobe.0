Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32039198E63
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 03:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745464794; cv=none; b=ZU7PPfh8S301gWGM/l4CJxlqzy35Ml4RW60fSoctafEPPQWQpFF4nGwod5VrWW/X3RQe/XRmiWW/VSu8PYirzUu08De6mIpIUYUWEa0gHIJndu+reqXYLJOy7h2VBY6HkXlWKUVf1pVWh2pExexsWodReAeU00S3GVH8/s4LUAk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745464794; c=relaxed/simple;
	bh=j8ojmwFoWkbRQuSm9hSSnyUvbD0ASqdl8KLnDS1ncAQ=;
	h=To:Subject:From:Message-Id:Date; b=duxFGsfgEcCk5y1+FP80n3MSXPdWMft5Zzz+/2/t5Z4KC2lDDTORFcKHDJdCLeb6Y5IUX9zuTYVpiOB+GVnBfUTiaxwGMYtttzE5xEmB1s8Iei0rNazRzdirMxS4qEl3kvcqBiAQpSj0gdGJeWpphVR9qLDfA0pnIaocIdCGIrk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sB17AHDt; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sB17AHDt"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9A0CBC4CEE3
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 03:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745464793;
	bh=j8ojmwFoWkbRQuSm9hSSnyUvbD0ASqdl8KLnDS1ncAQ=;
	h=To:Subject:From:Date:From;
	b=sB17AHDt4W2x/IMJJV5JUyHfqQX7g+yjEe1e3+7rNP9zlxOjLXvJJ78b2p/W9Qywj
	 68oCJMEcZM6NoL5bwuAqRbyhrLhno9GmCGY6DM7xCGjs3xU3ZlI1P8wq0i4mwh7LcE
	 ZoYeZKEl5Wm3fN1JFytg2TvJn00l+bcyU3ETnbNO3gv6kAbsXRhbNx+3v2nxLj2buE
	 zxSHNLzBKNdWYbbkjCR9J0N8hDUIxcqbd8VFWpAxsLbK7hWD4YZwPTuCYEV9eAifL9
	 3j3jsrT4xgrKe/IaxFqPM116P4WJ2vnd0psdCftdumpO46yhDhn4NR3uScKQFClsqb
	 bdUPyT6DMPFdQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F045C369AB
	for <ddprobe@lists.linux.dev>; Thu, 24 Apr 2025 03:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174546479357.1705.251269106150824687.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 633e7b51f37077cd9827462ce746c8933e2d9622e02436f999fc01c1df73c96b
Date: Thu, 24 Apr 2025 03:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745464793
