Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 44E061E501C
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742529594; cv=none; b=Tq73Pwue6T4qYRvAxPKehzUgY7V3lohSBHPWImMPOm4mlwcMPob/kDDvu/0/fL7OsTe0N/bYIXCWQGiesn9zyAU+8MF+O8ryMWzF6inhQa24wCnV1R8S2EjW21uWMwOnrtUWT1BAc5aa4EN08mMrBr5h5ybZ4nbximQVXgGhIes=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742529594; c=relaxed/simple;
	bh=19vPF8FBeWOcqgsvLIdw6mx42xoNFYWNwDMCdbBj038=;
	h=To:Subject:From:Message-Id:Date; b=tyVXyBvGlROT+q4ZUrH5vixIsbM1XOxZ0wD5zouaoZqZ+C7EcxUqfqz8EGtU3hlOss/gJ0BRNmmLYwPHcmSEfRb37ie/RUDTbMrp9zyndY4kFhcICdA2/ORSLllKp2RSOLajwKoRz0z5T79gcIqUL6efZ21UK7NACJAjwlSxqnI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rS+9xgOS; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rS+9xgOS"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B755FC4CEE8
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742529593;
	bh=19vPF8FBeWOcqgsvLIdw6mx42xoNFYWNwDMCdbBj038=;
	h=To:Subject:From:Date:From;
	b=rS+9xgOSLvuTeRTqZnPXCEC028TpyOu05G9XKXm50gvH4MJQB23CCmFob9nXcpW5J
	 GLupuxtN4Qd9vwgaCiMky0LK+DGD3LlGGsFoVU08BdG2Be1iNTTTjSfvuEyZlH6+4m
	 GxoTaWfrM/R2jsH1q/h9xpAduEKUAUwHtXdgFKNXG4cDh+cJzRUsNqr6qnQJkD+K/b
	 TlH9FhuPseecQZVZhwuwNS9BDAKxshjeCILZh324KQWsootG655MQOq5CU4L6ioTyT
	 Q2PLpqA9KAwLMtMhWggE1eRo9Y3lKAqn55fhgc/0ijzIdwYyGLaPhdOwGCqMc7zuxX
	 6yzkXJ4kl1QNw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9FF63C35FF3
	for <ddprobe@lists.linux.dev>; Fri, 21 Mar 2025 03:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174252959364.2193.17770180526789821410.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d692e16b50ef5339c49dccf300ffb7b01fcb759b3d28dc084f0ac5a88b7e7760
Date: Fri, 21 Mar 2025 03:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742529593
