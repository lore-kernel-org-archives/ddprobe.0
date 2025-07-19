Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 380171EB3D
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752909594; cv=none; b=cNn1ejsRAAIJ6CRpNosqC+9eX5WwI99LdjCwlZ57C1hn4zRygyvRNYsv0W8vqd6nHJMbX+F2mzXsLgfwLb6EtQCHEd3Hf5V2VvkoMiirfxA3i3wPb33oCP9P+iDZjG6rijp44VfySD86xHLivxdfIwvmcP79/10emaymvDwc0Ow=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752909594; c=relaxed/simple;
	bh=VCi15AndbtILiyAA4pxHqhlIXEqD71N5JLsBbiWT5JE=;
	h=To:Subject:From:Message-Id:Date; b=auNnH3e/ePq7XSy0c3aw3EEYcS8yedfRdrpz32r+97BcFulby0C2qUgF0SwhFgZIbRCsFQKjsL+Q9pQ2OeZcdNGhHxkyY4nCnHFQsBDgNw2J8O/QQE4nD4ztQVkBURED04X9CP5zAYPdFE+aSV6sIJWnAbFD9B8wRiWIwn7CBbY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uOfFI4SP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uOfFI4SP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0774C4CEE3
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752909593;
	bh=VCi15AndbtILiyAA4pxHqhlIXEqD71N5JLsBbiWT5JE=;
	h=To:Subject:From:Date:From;
	b=uOfFI4SPEC5Uty9YML+XalxJssqHc48H0U6n8JiUe3qBZ2otZbHLPudVb9zrDy+w9
	 87nRLt6n3996p4KSB1JiZo4NoX6PlRhQZNhUMeAUXWXXM65zi06WUpuaEPZ4+HH3/D
	 HxztC6MxYq+5r01nZDZg3M200Xxa+WkOZMr/Y1CbZWGpIbSLTCJoGx7Jl51jF5enkD
	 uwxEb9bZhevdDLBiJ3sY6wk7ZOS5pZyF3H5I9xF6utFvBdjYUT+isP6r4DUiOVrfM3
	 Yd8BwPoUWQ1uhTtHtpOE/WWDXiYxMTTeqdoq59OUk40zA7dBmGanK1vxc8yMG/1lYM
	 6amLs+s5zGavA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E969C83F34
	for <ddprobe@lists.linux.dev>; Sat, 19 Jul 2025 07:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175290959357.23462.11115545075865634952.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b6b4f1d1c9bcca4793de56359a0b6beebb0c9c17ef486c9d490a2aa70d9cae75
Date: Sat, 19 Jul 2025 07:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752909593
