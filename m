Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26110C8DF
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 03:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1729825554; cv=none; b=hb+e+HIL8ykYlOfHweo8OacqDVctqQ3O5jyv8gJRHZdvF1Rt2UpQOmjvVyMvBc2luzAAIaFIpU+BOoLjTQMmjt73IgXKSYxGqNQrIgre/7YIdJXpnC3tl7ttFctk6g+OggE45BiJeYidr3nzIyECnbE0rXNp2ulTa2KvrTqGJNY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1729825554; c=relaxed/simple;
	bh=UtZfb8Q/Vy3KF/QQOZz2Nk+gx6+lLeIZ3wxCJwVULfw=;
	h=To:Subject:From:Message-Id:Date; b=TTqRzl+2Iny3MM/Zv6hfFcM3pCEyCnDtkUMLcHYL0liDy7XZlAH0AYQHIuXnpaqldWg+JG3cvb/3ywQmaH2/H5AmGlC4GkxdAiHflaSEHsNQYnTUNDtK7YLnEW8b+7hriU9+ulEn0ugJosOV+1TCc6ueOB3JbWJQKYXb+EDm7Rk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZfT9YEX; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZfT9YEX"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7B8CC4CEC7
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 03:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1729825553;
	bh=UtZfb8Q/Vy3KF/QQOZz2Nk+gx6+lLeIZ3wxCJwVULfw=;
	h=To:Subject:From:Date:From;
	b=aZfT9YEXhx+iShpVBd6ienTPb8ZZnOL+khWXdRCR+cgmWdVzkY7sx8UEj00dd+gMY
	 OtCNqSr77Q4lNpwBihKgn3HZ6nCvAq3wd7FnHJ9mt5Fc+1TeizxyQ2lJEfYJfcFXjg
	 DGXFVZFFJUg0/zwnMqpPAh6M4XeJcp/jfwa0lPjO1ZctyuUO7kgl4o2ygB9rPmS3Rm
	 +Kmy3/EEsuVFBUivcpt0RjFeauCA4/LFJzyZH5620I1BNUjTKwnPGEx6BjxC5GYCP6
	 2LVHEgR358wEBWESRG19uKnyVD1+SGI3BR9Gt3GJ+kH302iU4fFjc6WmnXb2Gqy4+L
	 aJ70xnpArIZIw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96DEAD116E0
	for <ddprobe@lists.linux.dev>; Fri, 25 Oct 2024 03:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172982555361.7672.11350161753983821909.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 66a525422abc2c36df2581a06f0fa27e874e1bb81ba1744c5c5a11d4dcb87f78
Date: Fri, 25 Oct 2024 03:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1729825553
