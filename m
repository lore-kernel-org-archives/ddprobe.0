Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 277B1186A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722044154; cv=none; b=gm6k6H4AAIiNuTpE49M7c5xPV7yOybo9Uh0qloAGwDEUVk/A+XYpxmR+XXOssfD7oLgjTpsNkXQfJVucg9rRyN+HgHqRIidi11jbYWvbqnEm0nBfwbJtghMAStb5Pwl+9osVFoRW16vo2LKfY1K8BTadSQaHfb9RE810j8pweG8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722044154; c=relaxed/simple;
	bh=Oa+4+TijckiPyHyBIJZvtq/pO/1qul8YQYeC68Tf58w=;
	h=To:Subject:From:Message-Id:Date; b=GG0v6h8e/tWQHbJ+xiGbEYjU9PBWnAxivp2xPE3bASWGFBe91Cv74Gb+s8Iwo0ip1XO1+E7SlUApjz+s3mYrbqmRZ3yXVPkqC1mB+4CMevvko4tM62vH3zszfiWF7EyazF+48ta3c0W6Tkoogw/i7dc2oFjfI41/g9j5psVxQOc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kY3GDPiu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kY3GDPiu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8A0DC4AF0A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722044153;
	bh=Oa+4+TijckiPyHyBIJZvtq/pO/1qul8YQYeC68Tf58w=;
	h=To:Subject:From:Date:From;
	b=kY3GDPiuNPegIEaPnTKsNdiG71fevdfMeDYSR68dz2XcZ4dVC7EWtGl5IqlZP9KoQ
	 KH+qzTf+kCvGz9VW+GJQpFDNjeO1x0g2zGUGdFNdinn3iS+unt6afh+xOyk+MRWXhZ
	 0lShmeFN0w/y16UexcWaL5u7idcIdsnnMnIVc9tw8Oom6ALpXoSRvTy1JgvwtIi73v
	 A6/UzWF4rruY2NoAlpp+nFXlJX3GgQFreuemOTJSFgkcC7iEJTkCXL/9HZh52yfvXr
	 101B5pDjB2w4NKDWBi2qwzDmz9ig5fck0fJgQPXkUuA43eUcoFsC/r7OWdkPkROdg/
	 kij+9gh79Z9Mg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9E65AC3DA4A
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 01:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172204415360.8878.10047447781714096359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2488c9fc89a1b46d15fba6f7edbe127eb045499cedc358999562897fbc40c7a2
Date: Sat, 27 Jul 2024 01:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722044153
