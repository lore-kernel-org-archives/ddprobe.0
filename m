Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D84BC46BF
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:01:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763931713; cv=none; b=jhLoC49pcIM6yFansXTnbKYLDFlwi3rNUn76AmlyHhJPlW+7yLzEa1PGNQQpyuYcNN0MhhiNYJ5NGuTH9g3nRRQAMjMwYJKP+PG4HB/cJSq4sDkiPn6PhTYXM22zo65lmtvmEmw3VJM91dzliwU4GyoXMB8vTHyiFkYxQvv0G6s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763931713; c=relaxed/simple;
	bh=Y0xYAhN9l5S5W1l0twWH/AYw+KAZfvj90fLMR0ZXXZA=;
	h=To:Subject:From:Message-Id:Date; b=ivF+3s+6c8o6E7FTPquH3aZ3LK3CK4feICviYhHb/CZ7ZecDJv9f534fUYhcjd9otCrRLEqXBntBT753/u5Su5enkKy/fR6s8kDTpUxCVjZTjlx6LaNqaItJCo7oIiJW0UrEOEIjr8y3sdnWZByUpWLAruaz3zdH5/BYwa6lGNY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ncsCnsTZ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ncsCnsTZ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABDFEC113D0
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:01:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763931713;
	bh=Y0xYAhN9l5S5W1l0twWH/AYw+KAZfvj90fLMR0ZXXZA=;
	h=To:Subject:From:Date:From;
	b=ncsCnsTZCUswUje0uSsHDOzoDQCG1q1tbRzlQUrQZBFp6nlgtMF7AMGROmZwAEMIH
	 jcOEYfZT1+sZFhpJDLjg7102FTCfgrDun4FTtRRwuTqlw/75KFdSMM1Ng1/ytt2VCO
	 3d8MhuNFAtp+3sUzirKn9/MxM6PYyXqFX2rpXo2JKUjZUJgpeDu9x/YtWC8mRhBGwG
	 yjA3mdSdQHj1vYyyfMFIDkdRWHZ4lrYGNSNRCmT0LZS/QODrG0Np5rlH/5FroEjJk9
	 78z88TiWUklb+O/IfGNyQWOtpBjxNzV3alAm5LnwN9bD5/Knl7FXvxGgGZBx9nj5TQ
	 nyZ38zrp22cKA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98AA7CFA46B
	for <ddprobe@lists.linux.dev>; Sun, 23 Nov 2025 21:01:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176393171358.14669.14032429986615138903.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: bcca59b4635a1739fa616cbf51c078be84d9e732ad53bca9c5497e1265bb3b5e
Date: Sun, 23 Nov 2025 21:01:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763931713
