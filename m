Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4B2284206C
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 09:57:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1720691843; cv=none; b=g3+xCSjohs1LptO9Qm6eJVmdDBKxkgF6oZbUI2cUc9UREEpGE3SMaEBUA8eCQMWW2CECVm2oX0CNZI6uzl1wqwbmuNnmBTmgPl2sH+f0++an8ru1tHDIB/Xbl1gNEXHzb+oh8a3wrn0YbwIpD8FaEAZIuVr93YNJMXQrnAOf9PE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1720691843; c=relaxed/simple;
	bh=piVHLuVOj2ZCVEPwi9FA2LhzgbUB83Szd8mx4f8fIno=;
	h=To:Subject:From:Message-Id:Date; b=G1AeQDqA7nlYh6buZM2Zg94ZedHf1ajMx6La4KB0IQ//nvK+aD0YbGngfCznLQT+MnFG6CYkBfEqsM8kMv2mzxnOhz2cRVEZAKznzGa699E+hQZhNZOqaIPNtTtCyv2/Mfc3cepwSkg0jCg+zfKMK2aFmWIn+r+kpF9/2wI2XqE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=iYDu0XIX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="iYDu0XIX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D645EC116B1
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 09:57:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1720691842;
	bh=piVHLuVOj2ZCVEPwi9FA2LhzgbUB83Szd8mx4f8fIno=;
	h=To:Subject:From:Date:From;
	b=iYDu0XIXS6RvfPYm5V1UoFRvrKZWU8HHiT9O3DaaubWTgXYVRsPpjs+2CAWS1r8z5
	 +I34I86dtIZBKAqOlAvvKzp5yHaFWTtQJ1iT1FwzufZCKJnFcgFSONxunXNoBWbDBm
	 YsWfA7+t4obZeZ0K7VJDQIBBIXf9Ld7dpYgmHK+vs0llY52j7KTFfoUt7LMc8X6/sb
	 HCCFYnvTTP01yTOPB7zxFbUWgzzvankF5ZKOdHmdRwXvjQ6AwGSPe8XfN6BCvrah/l
	 hNLpzgHWk8FU7R2onw/Fh0WoSyfb38qlK4mq2Z8XCUKOx/qQn3x3iHSpXeDnUp9xp6
	 CkcoYlDQAmT4w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C8BF7C3DA47
	for <ddprobe@lists.linux.dev>; Thu, 11 Jul 2024 09:57:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172069184281.10005.2749119462806443487.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dd53c24a1a7e7d64fb924203949a0b7157f7e9801abf85eff4054a24348b77da
Date: Thu, 11 Jul 2024 09:57:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1720691842
