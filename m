Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 215A22BEFF9
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750087194; cv=none; b=uBYJMOTo1aSIgUbCYBvP9Ruv2c3rdOWGoOTaqlEginhx1AmeQ6m2AlzzFl7AkxFqN4s8FNUxIBJs4c88twWOwryFU2gUweDEIClSsygqnQi2BzaZjmGju73kxjx9MgfifGDvrT884wc+d4n61Pacw/GEVJ1aBaglDT8Q1/9Jblg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750087194; c=relaxed/simple;
	bh=WIyl8uYw0Jsy8XOrNzzpxMmAEWwwEQ3f3imUoP5dYrc=;
	h=To:Subject:From:Message-Id:Date; b=iX8RjX2yWpv+F1UHprmOAELHh6JcR9ZpvFHPbRlrwAI3IfMfRX01X6uXu69uitrv1HTCzO/3+5Vr2j2+pIvgdp9MjhaBktC/cOxh74F3n4mvgLO7Y0PimRDSA6A7CeO5skF5xVaNqjkglBMAJ4i078+ugedjcw4VFF4HfKa/Nzs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=i16p7+9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="i16p7+9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A98DBC4CEEA
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750087193;
	bh=WIyl8uYw0Jsy8XOrNzzpxMmAEWwwEQ3f3imUoP5dYrc=;
	h=To:Subject:From:Date:From;
	b=i16p7+9LqmL4GbXnHk0zetVeAHzsBUAc9oSsJQW+wewwvF5HsbEwXF4ej8BWmlkJY
	 71yvymHRa9oWCQa3KYN3m+OOCY0PbSIV5xVgSQ/+5gmrEVH1q93i8PtkuBByqVWzF5
	 PK/4vih7CU3LW7kkPgKOvUNBs9IXQiGEdt1RtBfqk6/JIS2iSjpKxCL8we494d/bpG
	 007Mn+ET8r1DlkernYX9EUZQjf3NT0vt56xROqCmfef7LWW1akVW3XwQqm9KQcUsV+
	 F3auwr0eaCkT5IKrh0Q3AGgrrfmUbqj0vJklDFaIYZcIWX5e9D0Kca4/clmpMmsJ+q
	 imZJzMUBu/3Jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94485C71155
	for <ddprobe@lists.linux.dev>; Mon, 16 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175008719358.1676.14256222010440004844.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 71aac1e75a6a4bd1dc525057fbb619da04b3ce6836bf03fb3e3581c52751bcb2
Date: Mon, 16 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750087193
