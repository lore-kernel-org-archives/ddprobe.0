Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 18CFA13AD33
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1726828555; cv=none; b=G77On/SPbhtH4Sv+8K4gQZLLCB5VokyyBezPqwZ0eJHBu5Z/aJ/oh6SPyDtCBNDAmLvKHhnKKMPux9BEupOeNL6kCgDq2yeKOMErjHNM/Z893azoapCpNgZg9RbsDfOfY79FSpPYBsNUgYtRoAWatkKql6lFQW9cnpY+1Z3exzg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1726828555; c=relaxed/simple;
	bh=ZqL6fFKIbzfrpsqjqPObUrYUb4N3XjzqGPUkIbcbSec=;
	h=To:Subject:From:Message-Id:Date; b=BBL4+xnoSxi4hSc9lKbSY65ki00dpdK4ombVCGA7tMx1siZxt68sgfmzLTl4R9Y1gOQjjBzG2rkg8bALQ0ED2DeAcMgZdMZnjzUKBa2fGoSZSBVDYpX8BIdy8lW8OEiyR2NRg8UO87VCmGcQOje9tKPysRtFyV88nvIUxQUP/Qg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pCdgUy0X; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pCdgUy0X"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A9439C4CEC6
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1726828553;
	bh=ZqL6fFKIbzfrpsqjqPObUrYUb4N3XjzqGPUkIbcbSec=;
	h=To:Subject:From:Date:From;
	b=pCdgUy0X44mXQE4Tc70Nu2g+DCb7kE+fo1puPK9rXt0DSM/zZUh7okxhskfp0nFaO
	 zxEc7v+CbGvdndcqMzadZ6KGkbNz4y9017VHcPdA6R37zSvdyY/FB5dJpxGvGlH3du
	 vvABXy76PU47LsoFPn6WAw5diq/QgJFE8YRj0NDM+bP8vY4FRclMGhOCG1yr+JB+oz
	 zdSCkdwj6xOpKe01Ji9ocwkfattJjJE2zQ2dS/FhlxVKi5Uqshd6hY+xNCMES3wt/Y
	 RmNeimdDzcfFaLeB2TFiXiGhejBOGYv+KPbP7qudvUTqwmBra0cBlU2t2YiU8cjkHx
	 EoLrFmatX3oug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9372BC78822
	for <ddprobe@lists.linux.dev>; Fri, 20 Sep 2024 10:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172682855359.10341.296809293409969094.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 36336d01117390b8eb7558507b4c490b8f0ec4bc9876d054b9ea8ab9f47f864d
Date: Fri, 20 Sep 2024 10:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1726828553
