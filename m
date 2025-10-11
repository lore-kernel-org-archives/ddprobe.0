Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 209F819E967
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760177394; cv=none; b=qizi1P8hKlU867El4JgMaMikoxcl58IowUc8bC+r2A4rJiUgtvx3ea/zVXihej6ziFhxjyuVGFR7zjqJqL/yyTt0taxl8MA87prigQUpcVF4RX98UEFxyqzyRKxIePw0/4uBdF2AaqRKe5k+thKyz8gd2AyQ3HtzhDm6oKHcXYA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760177394; c=relaxed/simple;
	bh=TLhLNSt2Jt2w9+fAJJijLebGRG11YYkiZ/O/ag9NQbQ=;
	h=To:Subject:From:Message-Id:Date; b=QJyzXEyJtT9CpVVVykeo4jvcPYoKTAtPV/671X28boHN4jNvS8X7QBgSsDEoqR6UwVVMycbNlE3jniqPiQz6XeC4cH65ww7QPh0Dp7o+m43HfM/0Jk78vesUGYuZjShCUEy8xNtnNSQvwnEbXn84OWC99dUEu5/l+u3RJ9wvBxQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=akPGKH9L; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="akPGKH9L"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A73FDC4CEF8
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760177393;
	bh=TLhLNSt2Jt2w9+fAJJijLebGRG11YYkiZ/O/ag9NQbQ=;
	h=To:Subject:From:Date:From;
	b=akPGKH9Lssoeq+t/yWTVZ7joX7bLsNM8OJvJKQBeNH1ML4hjRETrPxEHpkOQTRMyN
	 u4MzmGsCDXlfqdfR4oTVXTPx+20KpabuIUNcImE0J4TV1Vb0BbeOQ7aTlPRd6pxtpr
	 dN/RrgbsUzB2WU5WUj0MgTqOaqoa+sH10mE3do6neC3ixpq8GKTWX9wX3px5xwZYFG
	 s3cg5EXOICMGbdXhMzV8Q843QRX/ueQN9K6BH0UAlthX05mCPWvhQEQo2U5euyCJzo
	 SXYUtNKhfZsNJiGuRsvku83REN1cbDgpI2tyc66/ORcEJ+7lHFTqF4plB9w8ow+c9y
	 GgpNMYX38umww==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 924D6CCA476
	for <ddprobe@lists.linux.dev>; Sat, 11 Oct 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176017739358.22776.15879255666562144197.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 54e2c31cdf3e675f66b29642c8476d1b22706c91c9e943531ca9753c2be2f1a3
Date: Sat, 11 Oct 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760177393
