Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 88860221F2F
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:03:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769108634; cv=none; b=fy0lvSAqYiNhVYCeHSR654RGwf5A+nGSR2WOa7iwgoiXG8ogekpDBqRtlPAjyAr8KRU0D9EXByQ3j/jNoZ7xsiNxApsRLev2dX1H/GivErmnvVMmNmJSPhVxVcg9dGUWTf1nPwP/DYEF3+ribncOXivo+xNSe8D8K7V3huUhoy0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769108634; c=relaxed/simple;
	bh=vo10pXWUxpXig+6Iy1d6KG0ESga6Z6VeuR6rdxnJxgs=;
	h=To:Subject:From:Message-Id:Date; b=jj7S4wXp5qXU9qGcEchkns1owB4rPoLD/XLoYxd97mGFArS9MbSPKha9fvCSRJW9S9mAZCKfAYKA4I6BfL9AdoycwV0XcImOJYK0/I3mSPm7rGzjiG5C/A+oFWX7jlXX68jvt2h2dusNvFj/ltFJYFtCUJo8No1+2kiDZex9SZg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lyv3cd6c; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lyv3cd6c"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0210C19423
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769108633;
	bh=vo10pXWUxpXig+6Iy1d6KG0ESga6Z6VeuR6rdxnJxgs=;
	h=To:Subject:From:Date:From;
	b=Lyv3cd6czciXBgkFE7qudwLMVHQHJGKcaf7dz5hzUbfww4rTf/jyG897bB+UHRjqX
	 pIrzkS00QMWGguo5GuFpKp9iGQenwJhsjjsaTqkU+/XRuQmalL9TCENIrUki6EFP58
	 +IT1cKFCyOZKxO8j3V9N975eYedqI15b2jKCypZVKf2L/UpPRy0IgC+vEcML1YZyBZ
	 /vk2mlyE4A69hEtS9k9FLK0qEqwiULueOmThlcWftIW0FS7CzfcAP4GwwoNuDKL3kq
	 HaSltI4Ii0L4MV/qTgyD3WHmAYzTOx/j4hjpD22dmwSP/+dal5XY7Nix2XfcTTq3n4
	 v7pRDwshCjkiQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9080AD6CFA3
	for <ddprobe@lists.linux.dev>; Thu, 22 Jan 2026 19:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176910863358.8698.12832512102100931548.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c10ae2a87de3f50ecec77474252ed9509b4794fe80b81d53d4f54b6d36bbdad2
Date: Thu, 22 Jan 2026 19:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769108633
