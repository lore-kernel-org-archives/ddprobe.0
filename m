Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3026A26B2D2
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:47:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777416454; cv=none; b=VVCTXtY+9OLP3d2/lFIoE+96amZMo0JfTrzzUYsTPjfK0BoqD9xG+XI171OtPoYFvudR/GpBWGsYCggzw6l0GF0aUzZxjrnCovuq1Vn1/7C4hxGzQdcpi7MgXyTF4T4HOBz4WQYI1kf/0QaZDP5jQpg3OGE16lBvs+42SjCSD+w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777416454; c=relaxed/simple;
	bh=oFKkw0v9xQdiBBRHU2V52M87lW2yM+Agsu3J2m5W5V4=;
	h=To:Subject:From:Message-Id:Date; b=sp+0VaYd4vTT1lLGhbbMewF5wIggVL108oU9WJSmNMOPY1CvuMFowcB4fxobFCqVeGIvWzb5Rk4n5COo4E4ktd56u+wOSEI1YAAu+VE4ye1kurwGAvl00z4Xcz3wkj0YDdwq5FT5vX2qGo2WnOOFqOAAVvJuaUYUAWve5tq3CLE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KwQGkzdq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KwQGkzdq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BD31FC2BCAF
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:47:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777416453;
	bh=oFKkw0v9xQdiBBRHU2V52M87lW2yM+Agsu3J2m5W5V4=;
	h=To:Subject:From:Date:From;
	b=KwQGkzdqtOaBqfGeODdCeAaIiRqWrZmmRWEC/sotslNMCMaZzVXQVjPQGvd6S7Xje
	 kktNZ4gwVzEzdt4i+uUcKRY7o08V7eDFWorahvF7optV8R9u4RL7eOKWcLFXrE4QIV
	 AcMMxjJW1EEUod/9i2lhzRcknpUd/vDcqwl4klQK6OBW15Kn4vatBOmocgmZcUMi+a
	 58Kcnx48CQ60YdrVwOU7rWCrBrCsFu6LwZPQDM7pZ9n2dTjQ3a2INEPGnwDrJrb6Rg
	 NLhVbAkwU6sxzYlWg9+nNGTA5LpHofls1Gb+CPLBHJpKUdGAU8iVxMLD6ah8yCGSHf
	 MNUnis1JrXD3Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ABC73FF885A
	for <ddprobe@lists.linux.dev>; Tue, 28 Apr 2026 22:47:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177741645368.13060.11456463181133480373.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8f02c32cb2b41e5120ee2d10168ead0dd86e5b055839620d12ebd67f924c38a4
Date: Tue, 28 Apr 2026 22:47:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777416453
