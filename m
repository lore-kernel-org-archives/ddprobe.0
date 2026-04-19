Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 297162DF6E9
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:17:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1776608254; cv=none; b=NimpDKRjRhuLUGbilZikLFLnXApf1QgQ5a8gnGJQ7CzWgKzi/1LU4lYq7etR8k+Xx1QE/Hjo+f7uPvBW+0VBXC8U6nEx9ZY7gEHknTFtWjnrzeyfTetEPEi1N26qcH4rlXtxnygtjONu07Cz/oyh51S977hQMXMrs6ffkpyT6v4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1776608254; c=relaxed/simple;
	bh=Sw+hLOl5jdMRzWeYG1Is+igVm5BF+cCCLsZP5EtDw7o=;
	h=To:Subject:From:Message-Id:Date; b=FFjWKKbc+I4rwWSqh30yjQ2Lqke8EQDHri3yCTJutAQPRYVtsTZBG9XgwxcjXxe0OdAjQKwQAgDHcgRITX44HRoDA/2xeQZTKyWN6ggq3MCJBZJ5qHrOWBZA/VjpPv4qmSkECX/ovbI1Dy6Hd6FYSt0XRmA4Ee9FA8FI0aXjTcc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Lkoo+fvp; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Lkoo+fvp"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2FC1C2BCAF
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1776608253;
	bh=Sw+hLOl5jdMRzWeYG1Is+igVm5BF+cCCLsZP5EtDw7o=;
	h=To:Subject:From:Date:From;
	b=Lkoo+fvpIX9YhX6mJznG/cGahxa7ZQ7QStLp66zXWM83BpiV5WjtfFej8SJFqT8Ib
	 x6RNVIYjbMnZHYMPNGssV1LN2ya1qzcSOZFVXKOn/Oo+7p16e/x7vvklWR5iyAfCr/
	 VqqNhNiqd6AnFTgQwoIAKZh7amGjZ2Dhh2dovzfrebg25Jlzwc6weYU+b9t/ClInkf
	 WUdA80IBX0WtCMSgKAMNZ12Udhj7JK99iljXcx98xZu5FnMtNwyVxBMpD8OPnyNpwZ
	 mZL0uDG6H5D6uQEhUmSq1FE7osDU11w8K/XjxicRimhXaQAqBLEvJ1q0VlaimlyNgH
	 ESKMEN+TnJmFw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD814EA719A
	for <ddprobe@lists.linux.dev>; Sun, 19 Apr 2026 14:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177660825368.15250.11897756408238883220.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a2748daecf275298b5215e0cd6476f7f3ea7f0120132d50dfb34046d64a8a1a3
Date: Sun, 19 Apr 2026 14:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1776608253
