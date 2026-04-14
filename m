Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id EBE3522156C
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:07:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776146854; cv=none; b=StCJXuy84ypCX0hvvB1Waso6fNu8hF9sMO6QInhu7PZNNEtrtlCZtw9k2ouh4FYkP8AOY0cTKK3zGylzFMpW9Qxrlah7N3MWyK6mOW70zDzTzXzGOWLKcW+u+mrVW5+/YbHsnbAz6WZG0OHCxGdelGgaPIX66AFxUL5Zg5R2pbA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776146854; c=relaxed/simple;
	bh=6odlU8VsaoywJnkk3w4qxPeTJ3kQk2CTl1nD2OHgcKM=;
	h=To:Subject:From:Message-Id:Date; b=KYK4jDbD0xnu4rADt6Pujtn5FPne1+63iKWCHPvGsm+7kcZJOfqblhlae8tE4Xg3xjhgE4nTi0KaW4b2OV3y4zOp3qZIZl9IuvHT6hNwGybd5iNaG0wg0Bzl9M1kX+NJ6N+akwIT/5Xc19RWV+aFQd6FVPHpYs14lfdDKc3Tf6I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cyFsso/b; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cyFsso/b"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C5BD0C19425
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:07:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776146853;
	bh=6odlU8VsaoywJnkk3w4qxPeTJ3kQk2CTl1nD2OHgcKM=;
	h=To:Subject:From:Date:From;
	b=cyFsso/b4gLfhaFas0jhRzKKhGZpjpUr0XP66X+v7SzTABH9pzHEYYRIK6TC6PmnA
	 3WzIHwDWkYxZ3PkaN8wUjq9mU8Bmk2bWkxhdmxVtvE7hvZfYejbF1w78WNmXmKsYpX
	 QnfS9xrwGGZzeX8f6+TR27EJioyqRJoyLma80HmwcPHATGQ7Z31CcIhoKqBGWfKlQg
	 z3+6xwlV5QLfm+VwoIlGMYshOAQsP4h1oy15EfY63JLxqyn9E4TPwkmEVkchY+7aWO
	 rYCWVRQ+pU8shBNgUWDLDcQgl+aO96i8HwZKp7M9lt03w6POdM7LZYZzU40f3wjUdE
	 sRiQSHWX3h8jQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B69B5F531EF
	for <ddprobe@lists.linux.dev>; Tue, 14 Apr 2026 06:07:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177614685371.24781.2948568531685933466.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 538605c4a2bf800eb10354e2e99beeb9bdbd1b4628a22d2a45865901e46216fe
Date: Tue, 14 Apr 2026 06:07:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776146853
