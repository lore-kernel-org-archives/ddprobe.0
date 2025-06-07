Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 114F91A2387
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1749307194; cv=none; b=S5lan88/laStNELwBJwkfNT+QWx8nboCKVYInlKSEZjFParxw4pe+3n/UMKQs7Z99x2yuuX+VsUJTsP9kPI1Ch2PT75m/n57mkQyNqs0lkew60CoxTAJ2hChKJvifEBkvp5PfZVamxbNFMM43AalS2zLCFsEJpvrBNFwLizgCcM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1749307194; c=relaxed/simple;
	bh=IxrLI7z5oyhUfdsQ71+eWbhWNowyHp6Y2FKDEHk8Q5M=;
	h=To:Subject:From:Message-Id:Date; b=ShLw7EjOT/CRT6tfdUurXNXggcaPs8pZnXLu4xo3afzsMpW7NDTBuOIfO/AhY26urX+tpDYWlGOGymxol240gmFZ0F3tzvuLZAheXM40RKn9MWZ89s8JSnXDy7XtHLhdypt9HmL+OyRlLvBkbG9ziyt/6XCgSsvtoEzi4qkrZVg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tcrUmWCu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tcrUmWCu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A87BDC4CEE4
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1749307193;
	bh=IxrLI7z5oyhUfdsQ71+eWbhWNowyHp6Y2FKDEHk8Q5M=;
	h=To:Subject:From:Date:From;
	b=tcrUmWCuQCv8YPgxyvsAULYv8TDBtpMUyLAtzsLW+IPtjqOj4MWQjSZbjeKlH/osI
	 TRouHcOe+lSY+zgkZr+jdK0b9li2L+wqAiBHrts7wyWpLQSmoe1POzXiek1SPou5Vy
	 UaV5MxANrrZXSLtp9izsAd3iAZc1AlJrP3b2PnC8wIFIxbuWoigwi3AiDLdAf4FRc+
	 ms8YzjRh2xDVomMYP5wp0FKuOBG0ISXWlzd0rsGqC8cr5FfcsPcZJsIQ86XCZaWo4A
	 VwavVX2y3/tddEcA5QOKZesBwAsv28qysZ56BBY8aUoYMFjVNcFFq17lQmfwYBamFM
	 4ozMvsAo98jbQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94E1DC5B543
	for <ddprobe@lists.linux.dev>; Sat,  7 Jun 2025 14:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174930719357.7067.14526777553000998580.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 837c9ed7c3afa07cc61f4c3f5737f84810eedd063a7ee213d2427e4bbe5e10df
Date: Sat, 07 Jun 2025 14:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1749307193
