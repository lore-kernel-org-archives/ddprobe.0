Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A1E59460
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746313195; cv=none; b=fifC0tEJbgQ8b6pp8kS3bQzWsIK3D3yZtCDsME04ajbuHWcQgWmCM0H16uIhzySTiSHTYgvNIOl8zBWomcFJY1+7vw7VB5HhNKYY4nclytQjKoHJZQrLpW/6Lm8EJ/ShkLJ5v0xLl2IIWDm771zFCtqfKNtBetZTJpTxpE2e/sM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746313195; c=relaxed/simple;
	bh=KLmnpbkI/usa1lfdSRgPbyWUXMM5I711jjYdhKuIaO8=;
	h=To:Subject:From:Message-Id:Date; b=LbWzssfeoNYVKrwHc3yongyoHYrVyH5Cgm5wmjmeXvo/v4zi5snRohD/L8B9lqFaESytFjFXrOZfkh2ezAQt3rmKcHrmuRpLndr1V8647Gy16mfi4ouMpykBOmUhqzD6ecuYeqDcJ/y1zg6QRNmE+0fwlww78TDFrIYRcgXOw1c=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Q/dFpwH5; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Q/dFpwH5"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4D26C4CEE3
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746313193;
	bh=KLmnpbkI/usa1lfdSRgPbyWUXMM5I711jjYdhKuIaO8=;
	h=To:Subject:From:Date:From;
	b=Q/dFpwH5elfYFSdrfR+A6F/ULJEFotm2vWIAeqnBh06/QvgKtbrx43ByJqb9wBHUx
	 E2FFIYyJa6qWu7/ozFaeVQ92aTEG+mkyV99+L46HhXTOnjuIXsSLeuoKyPAi0pQkj2
	 NP472+k99FfKnzGK7y/ugUZHA/Hwd+2U0nj34e1QNyCpx4bYk4lbfI3+4PYsD4DDSm
	 wo0ayf0xGvwgSXtySmJtoTXQhVCUrIeF0Ygd7zQ3uTyEtZ5ao0dZOf/Bo/mcHJtqOB
	 dorOJG/5CsFGVlukvGK63CBAfwPdKayyzObMF1ZUEjkzHYRKi16kY6jOSm0PT118AQ
	 5bb1yMbT3cvsA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91157C369C2
	for <ddprobe@lists.linux.dev>; Sat,  3 May 2025 22:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174631319357.19303.13998676408414951361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8818f834a909d9fb1994ae914a2f46cffa4d0f5aca1d3a5e82716563f5b7f1e8
Date: Sat, 03 May 2025 22:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746313193
