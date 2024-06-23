Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6FDA520317
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:42:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719128543; cv=none; b=oiGBcGu0q6+SvDFbMMD4n9F+eGRXusmPreHGrRi7/RtMcSmra2eY8q/uCYXh88QueyzwSmbJVlf/qLE7IW9EXVVQFVtx5DacObYCpb5e+0O/NvSY+77c24zSRhX2lbZB/yS9N4KAuNvFfYPdNXCpUySwYOJbND1JKEZ7j8dXwg4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719128543; c=relaxed/simple;
	bh=jLoANs5q4ooyPf9H/veGez/RcwE8Ku6VPJUF5tiKkGk=;
	h=To:Subject:From:Message-Id:Date; b=bHSKfbj9oy7k1ZSqeBIwbHYCHDU7HDOE2LmTTUm6Paz6r3QT0T1oezqVLd1ZGDBguS/RRiBAxJ+0aAPHAEwNbwPiz8rG2cJJ3r2htm9iS6wnAEvkZJ0BL32ueqJKfuDQ0yPdSHT3rKdUp87PVM+m4sUh1XkOSXvxXh10tRjahJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TQwTC4tc; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TQwTC4tc"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE3CBC2BD10
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:42:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719128542;
	bh=jLoANs5q4ooyPf9H/veGez/RcwE8Ku6VPJUF5tiKkGk=;
	h=To:Subject:From:Date:From;
	b=TQwTC4tczUEGJ14JC2GbMTJC9Z7itD0RaoySBR9/mInz1HhuP+MYZ+MHgxsTXTSHT
	 TCzM470+T3Wk39HhmwI5BTHPvraU2y9sLmX94oQe347FspsSJQvSR+P4C5ociEiaup
	 N6Gjlpza/HbNw6tMLqYFhtg1oTAstCm7DoHqSMyYTdONMXgxijpRu3ISqR5KdWzgDA
	 o5JfYWreSX5c5WdcUpJJ13O6JePlufl7HXc0BrqxHNBj7oB/GHkOfR6k//NAYw1XUe
	 ZbilhElyPZqwINU3/hW1cNZxFCwG+5BSFZ8d5dC7QzRiEFijKKdYZCsr+dWF6BD9Yc
	 mESC+pcTkvLIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C5E46C2BA18
	for <ddprobe@lists.linux.dev>; Sun, 23 Jun 2024 07:42:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171912854279.16195.18296931811891028697.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 31c490e49c8f811b29392b3f319aa451dca320adfc2a5ffb3db5b3580ee47cff
Date: Sun, 23 Jun 2024 07:42:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719128542
