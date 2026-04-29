Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19C37317174
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1777473454; cv=none; b=K9cJ8Owokw5mEg+ouY7WSBfflxRROuOKVG+ZxsPkouPc3C9UYeVOQ2qD47RN5kYOzw5qU2uLFz6Ub4lX1x1E9PZoepe3naeWAQEJ8DSBA+lc0mlMUlkRR6TfOCnYY8uISMSYIWYqB2I4ZgWQiQeDY0VsexyvIH9n9aDow+W34xM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1777473454; c=relaxed/simple;
	bh=72YthXuWlAl1bWrVfkJimobvG9YDWACtWTdaB88rB44=;
	h=To:Subject:From:Message-Id:Date; b=XVybxUo77xIvxLYoBbD5R3WYSHSiqbatu5TmuqZAzK8yzBNkyj54MZAKW6szsYG5W8ALxHNYzUKD1TwVmALgvWBykHdWhc12PVX/0SUxAa8xd9WpKdVMJMtlrnbHS6f1VoF1TcGhxT5gwDQWkQiL07xdz87xAcsXeHMxl0RSCsY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=GZoK3EdW; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="GZoK3EdW"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BC38EC19425
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1777473453;
	bh=72YthXuWlAl1bWrVfkJimobvG9YDWACtWTdaB88rB44=;
	h=To:Subject:From:Date:From;
	b=GZoK3EdW5jFAhWwLl/Bix6d9u6zl76XgIcx9MdQvj7oYKYkdFHnpxnst1ezSRxjgI
	 93Ye8ENZrWF79Qq+hJbsDJSD0z8ppIRNqiJQdOTb5+ZIRM05gO0dwraAqgocYSlyJu
	 eQCaY5vgPp7F/FkpuidpiIdajLFze3sfgUC/0/smAmy5G2QCK0exfa/gRwEtGuzgLp
	 V7AO9vFI8zquK4aqT9xuvfDmwL8yANlfy21ujTRn+xycbnDreUH9cpn0gVJDqzqzmX
	 bn1liIJVrFA7L5vyeH3H7jIQWs7WpWrEse7kVh+vbtyAiNOXj8gzXcVnDq7DiHJlL6
	 pFJ4NF6eL2fvA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AB45AFF8867
	for <ddprobe@lists.linux.dev>; Wed, 29 Apr 2026 14:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177747345369.19753.16623947002713395179.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5704252a27032017a1600f5b6ae6f6dfa63caf15fafbeeef45886f6e5af73d6d
Date: Wed, 29 Apr 2026 14:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1777473453
