Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F46528724D
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752054594; cv=none; b=j64g7QVQ8TTLc1bSlrbQRAUlyFMD10VbsjF0XHljk3Rs3XDd8RPl0NeJUFfbM9ELyfzp4QyRjG1hFROYHjdBNbd+hxCu5cRdk4XTpaCe9AlCNuWHWPtjAJVTfqP6kCGlQjUnGrzujvGK3XCyFfe/G/eFN/tNqMGID1dC/U7F59U=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752054594; c=relaxed/simple;
	bh=h97JBXQHYXwUfY1+8utZi1lXzYCz8ZmYtJZRLdBVMF8=;
	h=To:Subject:From:Message-Id:Date; b=uEFUAk9eddVd70zOelBhZPKP371hiE0+VXHmqIxMmuQN+3HxQGscEHtb864qL35aZti51ObbJt3HpBdWyxQS2NBX6Sq88MkdBmSoxNB8vQhxttQAJwuEtj1TFmE90dxNLnIgZESjLww6uPfYsrg7y3U0hVsZpnYMd2spJ3lX3EE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=tW//lzx8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="tW//lzx8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A0653C4CEEF
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752054593;
	bh=h97JBXQHYXwUfY1+8utZi1lXzYCz8ZmYtJZRLdBVMF8=;
	h=To:Subject:From:Date:From;
	b=tW//lzx81Oo0g0v0PhcZaj6+83LwCJfeiV21IFYNsQZp+0ROB1uTNRni4prR6J+4z
	 2pwkrYqUKIVwyU8AbMkKYWpfhv8XoxqaSL2OQSH4WFcJcJmRH5bU+nFxMi54r33dP7
	 qk9wQkFr10dk4S9SXTQx8Nq+Nq+xFRuhS7FJKRSE6TNheNrapKl1oqzDcNDj9SpyIZ
	 JE5MT+h69WPqe2NTt05ZJlVJaK4yFfqtgNDu2mg07kCNgsC+gcQro0C3jATn3Z0z/c
	 75cglfY9O+1LaDVqepmE6a65yFdYUL7xNGdAlOXFMnOkzCPwZehS+dr8vWbNtdPNif
	 vQ88PX4Vi2+sQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE09C83F03
	for <ddprobe@lists.linux.dev>; Wed,  9 Jul 2025 09:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175205459357.2400.2453310026049735475.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 8a78bce17cbec3bd7afa357298d67db8eda36b68bb200d64ff00a807b2e36197
Date: Wed, 09 Jul 2025 09:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752054593
