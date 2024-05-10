Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6CCBED27E
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 04:32:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1715315543; cv=none; b=Tq1cNY5SiiWQhMtpm1woyYB9dW053bd9rMW/hl6s8m9knD6V/SUd6dv0unrJ33LM8AkAJgcqoJNWSQZQE5AnuE6uKHkzr4ksa0RLCXscBPwBglRyTbOKQsgQ25fBo/oJprrHTkFnK6NRQ8HkGQZe3dFbYcalmXrwS8yiEI//VBw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1715315543; c=relaxed/simple;
	bh=vVspno9mOv1/Wob+k1YmgSjwqjmmljFQxBpSl/rMNfE=;
	h=To:Subject:From:Message-Id:Date; b=Fwe2/EWcX8vMCq5vkG8YlhZRosUnfPxM0IdQ4MZgH1jNSITe1imSVTpJWOukZ0986DtRCLHIDx4qFHzksJpWz2KTBxSApEgX+ELXImASQbmCytg+D/x/ji4n09O1UhzeFN1kYljt8k03dMdFKTYYz4uhlzevE6gDqes2mAvJOE4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QprqWTj6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QprqWTj6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DE989C113CC
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 04:32:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1715315542;
	bh=vVspno9mOv1/Wob+k1YmgSjwqjmmljFQxBpSl/rMNfE=;
	h=To:Subject:From:Date:From;
	b=QprqWTj64Yv6rw7uLPEkCA2tNeTPLlJ0lZnVYvfKP+YozYwH95Vpd1odtShKIFjPC
	 zu/JMDqWYDok4dPfBGIY8evBIAn2L5gXhoU1pIek7RrK3C871hiIv51nNauwVcDReg
	 okcOD24uBQ4e6M7VtnWQZayQwk8Ujchr5TxkCCgB8uh+YCw1YVCrTPXeiZVoBriTkX
	 BMElOCOyZfBLJ2fPN4/teBO00AoQN7DbvfIjAQlYhCX9fGsaj+fmPp1ox9rkII/zNe
	 +Jl6ET5CpvQKIS+GnHOZctKdH+iMruqOdHVOYIsg+z2ErVGuqhd4XW3GKg7LBiC8pA
	 JEzGyBolG4tuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C62EAC25B10
	for <ddprobe@lists.linux.dev>; Fri, 10 May 2024 04:32:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171531554278.25775.11179908486853219089.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d45273a379d9c6a9acd41d224135c6ce8eab14d26f04203c8b28b24390c874bc
Date: Fri, 10 May 2024 04:32:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1715315542
