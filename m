Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D23472FFDF7
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758150593; cv=none; b=OXXVxq1DKdwUrco4FweOHA3xmtQ5bSfPioS0ZULeuFrsDeea/jFLfIHszJLF+wS0O5rKDFGj0XmIzK4ULGDlyHFOjBc6kR3YmOctIgCTUxd5vGiEY2uIjdhi3dTvFRT56Ljb+7arD6T/QviR4Ult3tei8jwaOVmEaOVbeWK6W9A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758150593; c=relaxed/simple;
	bh=HWY1eG79zpzLW3P4ov68S5PPfdKuccE4GVvrnBThAlU=;
	h=To:Subject:From:Message-Id:Date; b=DgLJeP65OZek2z8YYC5GNtXQjo+4VTarHhXyVTbNPcEmuOABAlLYI+2AjorRO/qQbNuvpU6frqzuX4XLjLqCfoIW0PjYBu/c34l2DDUSHLKr2EB6hVAtQUiTWHVbyqzs4JYlBYG22BNUERRbBryCrCFF8/dg8srXNbSy5bb4wvo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PkWmOe3X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PkWmOe3X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9ED12C4CEF5
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758150593;
	bh=HWY1eG79zpzLW3P4ov68S5PPfdKuccE4GVvrnBThAlU=;
	h=To:Subject:From:Date:From;
	b=PkWmOe3XddaeQLCXa0ePkHpsRQSU7q0aT1HcTyVnMo89E7CsielvJDYXI9HugjI7j
	 lrMoiJtB2X3wPvRlyFBMJGpupvYEG1AwEoTD7Gzb/b9aHUY2KatEyK4yuOgFu4rMkJ
	 hy2xXv8+2i8BzWJx5QPVp2qS6mLLFWuABoJAM/SBJPkOFJjpJj3kRNjSOqAkTiB0sE
	 eSBJGsIgmTmbaUhtBwuNox/K+srl611rtH9hKUR26qfICKJnfMgUasFkLiAgK2whB0
	 Er7YuJrViJU/taLuRs8aKD+mkgLthcVHJVsb7YA9+uqueoy6NRm9ml+22jM+4eajeM
	 P4cOSXkzi/yhA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF61CAC59F
	for <ddprobe@lists.linux.dev>; Wed, 17 Sep 2025 23:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175815059357.28668.9843261315398696457.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91c8f25a271004f75777ae9d8d1c1fce2b7caec338df2e47e2399b3e55b45017
Date: Wed, 17 Sep 2025 23:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758150593
