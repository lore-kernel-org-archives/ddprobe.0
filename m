Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E03C139
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 03:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729136754; cv=none; b=QdAULjNYxKAtM/DYKLG4CtM9QsjncHGV6FiCV1szYRiMvkGMxKqh8OcwOEjV6FXyhpQ2qDkBJO4xVYezpG7in1YTeMPuj+FsAg4lxRKMZVm+Uko38kO9RIT9cSzkq2GxxU+tt7AWnRuX1bn/f4CIFcf5mfx+Y1gDe4oUyaSA8fI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729136754; c=relaxed/simple;
	bh=nqRwutrgnVARTZCGBO34nSFcB/nUoc94RXLMm0oljUw=;
	h=To:Subject:From:Message-Id:Date; b=H/dnu/WjFyUR8XyRR638PmZHUMqLVb4/wrmLqq0BJBeU0cPtVSnkxsxb/zqqDsRAZVSmg68Nx2G9TX9C3t5MnDzyHN0QR9IesfoXBT7HjKq1dWzrOle2ucjSUxqYtw4d2Kv2h/jf7h+txTj2CvuwlLshjh5xF8aQLmzblstPP3o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MMu6Xl0K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MMu6Xl0K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AC4B5C4CECE
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 03:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729136753;
	bh=nqRwutrgnVARTZCGBO34nSFcB/nUoc94RXLMm0oljUw=;
	h=To:Subject:From:Date:From;
	b=MMu6Xl0Kv8Bp8s4d9FiqKgZKg7nULJ5srgTb9rBSh5Z2OqPf8XLy9vf3dIREanSJv
	 i9k0vtf/9kOlaKSMjHML2O0RmnwzZZ4yBHPGLvPnzmpCVTQGAE0Jr+hMfc+o6aXcs9
	 oC0lazyzzAXpuhQq3ylLtH8/K4sR056aqe/2lYk+0WIrKbahUK5oI2CtMMb3JVUlBh
	 yqPzREsObHFT5Gv6o9DwHpEI442X78Df7GfJXBAbrjWVj0dHm3p0bFCM2wE8z/kR+C
	 0YYTWbJIwczwBecGYf/v4g0oX89G78wBc1nFeH+bi/9M7db6gsapT9FTecJCNmh9iA
	 Q05OqkERPysNQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9464DD2F7EA
	for <ddprobe@lists.linux.dev>; Thu, 17 Oct 2024 03:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172913675359.22827.10698800680700822750.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e31a0959da55f3c75e44bf7e7d7a23996e9677fefb7b33f9361799383f62ed6b
Date: Thu, 17 Oct 2024 03:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729136753
