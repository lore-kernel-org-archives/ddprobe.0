Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 30A6D13635C
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746702594; cv=none; b=O2L15rKDle3EJ2J5nz+ggsmM/ARvehYTGS1tPp9E5bLHoRbe0YWQPSTN5UbZbfNMRHozHA4CL6ojZ9fbrj4T/mUDBEJ1dsFOgY6MEPTKQk0qqWI2+p12qWjfoDNxlLP7ZpZkCxMrUmCbd6t3FblpH+yg29U25CwtzaXDVqmiuhs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746702594; c=relaxed/simple;
	bh=ePZyvbfEj+/xzebLxzcsZHwafsjdRje6KTtPgQHGMRU=;
	h=To:Subject:From:Message-Id:Date; b=qm57dzNXIM8wPWp41sXuqs5dus3Sz9kFfEGa9QD3seYAJhWmWGCNqNHvsyjlE3uNw2PDzAIAaCyE3zl0Yn0VYZ6olGANeUXJdBfeAZHM2T9xow5rPwsUUm25b4qDSWShKDjyPjYjCDeD8/dLCHgZ62af+DcujcQQGdMb1khkOcs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Jk82aptS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Jk82aptS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6D8BC4CEE7
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746702593;
	bh=ePZyvbfEj+/xzebLxzcsZHwafsjdRje6KTtPgQHGMRU=;
	h=To:Subject:From:Date:From;
	b=Jk82aptSfF8fwI/Q6oFx1TCwZT9ZTmxggH+TdvNHgd5fGbBurITOkWXewUu1xEmYc
	 YlFg3GAyrDCLALoh8BSieH463oXpJ0AFRF9Cty9S59iXnFdIZaRnOOGYmGO0gtUhKq
	 qiQG1dWIoYDDqJ1fpQ4tNvN/tly4Z/RbMojfm74ZBiY1wtgzRfgMzbm9iaXd11ewgZ
	 x4VVCFVZ270jqMJBbVVRuXU3PSAYDLxrRQUeQ3HWyKOHFPJRiRhXM6P3FcKqXY0f4y
	 nW0WeWEA7YUAEHVe3lwCzIZHh/y0ILxDkKtC3ENGUqWi2vyiTuY6JbZEItqpX96TKL
	 kcgbXrZ5X24ZQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93670C3ABBE
	for <ddprobe@lists.linux.dev>; Thu,  8 May 2025 11:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174670259357.31956.9952664057085999129.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5d670038bba2b48f05e9abbeff992c29e4c42e05303b747ffd60bb42fc2d8422
Date: Thu, 08 May 2025 11:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746702593
