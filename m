Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1205E12E5B
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1754765994; cv=none; b=WYTwEKwJ8mtAMj5acm0awA3L7qnZ+Un9MjrWrCk/2Tz9MyVthCLX51Jk5vq4isUGYZt9xOWAwMOA/CtAmLY/6p9hSnbCUXy+Z4CT8bWZgEc2C9lFvOwyyLXTwvQNJPHrJ5cW/yKbB568Nr/CJtaFkoC0ozuAdx1Wdg/cbd6Pjyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1754765994; c=relaxed/simple;
	bh=uZBTPKQKx5cq9fSXVIuGTGbncH2B70BjkV88+itsS7c=;
	h=To:Subject:From:Message-Id:Date; b=pWXTud/2wzHsEsKbnbLeEM43rvDGCBj2ty48+J6ziGFmu1E6F1Ubr6f3SI9inOc9kDJFhJL0s/2zRsZaz7da+hcTEwI6Mijv1YpFrHqbMW3fPbfOB7g99BdEFtNQ38tNPTMZJ0Y6c8eJ2IVgWNx7XEYuWzoux/QMS2Z34NSFCrA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TOvqxDWY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TOvqxDWY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A5958C4CEE7
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1754765993;
	bh=uZBTPKQKx5cq9fSXVIuGTGbncH2B70BjkV88+itsS7c=;
	h=To:Subject:From:Date:From;
	b=TOvqxDWYTuQLnoU+oqs/giTO+VmyA0hy/Xp4fQOmPWkQLbL3NgXYoV+9UE/SC/u0H
	 ottLqAEifZP6tso9gDwcVP1mYfSqbO3id7MUzARrBtu0oGhD+6lgGM517FCZHBQJvm
	 aD6X/IR/o/ClsA4E/zq0ATU8rXhTeWAIG+f9msMq9x8bnEuWEA+y4HZv84Fxi1YsCr
	 YJRFOlcgUB5IZf6NwrOcS3Cb4Ug3EoUxJhJLnPQoABq1HJvBRh5Uio6pMMUH/nle4Z
	 4H+xwdW8euLDOmoXniWSlqTjAxBIkhJPR+SYXzJYEKokgOTbkv6RCnpP2OOEOg4pM/
	 o+xRl1Hg8U1qg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9409DC87FCB
	for <ddprobe@lists.linux.dev>; Sat,  9 Aug 2025 18:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175476599357.15897.3980951694517977954.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 50f710640e4f54d8120a6da449f86f7a41a49daadb5ea5db80cfed452455af18
Date: Sat, 09 Aug 2025 18:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1754765993
