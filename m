Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 15B3C2DBF7C
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751304594; cv=none; b=bw8o0jrbjKnZgx02GHaJ3rM/bctq4Adp3vptUYUI7Jo6R++Ua5ekQ7SWN0BNRKTdv1RuS6/bSlKIuFQebeEu3Ti5eKN4UNPRT0T/NN0G0k9yUzzWXt5TBSqVaCnHXixoqAwWH7fjp+FiLCRnQFX+JJ21KFxGrCgw/iv42itrUpw=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751304594; c=relaxed/simple;
	bh=O/5xhkM0RNiryUmcXtTV5r+W2ehfk+1cU+PKv755UNg=;
	h=To:Subject:From:Message-Id:Date; b=T9/Cr0gHkd5zEkGmxQv+tSnzx5vgcqSDPzHdYSGmvQwb65EpZzohS/TUMlwrmvTaJWNNbIjZt2Y2T7Fnt1uDRM1vHAQz6sgHPcyT0sHjLSoo941AxuPMkIyrF7uKB2pssv1STK8EKOp7KZAXHDvGs/sKHDaLCB7gWz1LHggygGk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=NNbBxNJM; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="NNbBxNJM"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A4BC4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751304593;
	bh=O/5xhkM0RNiryUmcXtTV5r+W2ehfk+1cU+PKv755UNg=;
	h=To:Subject:From:Date:From;
	b=NNbBxNJMnAj2sD2YDSS3MUNDL7ZhtgccY67kyWwwhgeWWFbA5RMQSqK8uDb9YAFlD
	 zxFiWq/RDt4CYXH+FhF7w538/YDOxsOfDDt/k2LKxWqEE01Z4gkwuKjs2pXHsCuBTR
	 4u2SHi0iQpz9aCRcgZ5biiglYX3uhirrshLsZRHfbOw+WpdTa5t28Vq311/igPWw76
	 KwNXBznUcP3sCUU54FUQvhENvveT0ZQpwOPdyrTE9+aajaCJwNp0XTgwvrcQj6jLh4
	 EgALxJ0lqX02vjDBArfKISdfFsniC4wyrE14xiv6NYISL2p0vUQmREie2J4Xop+dUy
	 n8fxepnplAGSQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F935C83029
	for <ddprobe@lists.linux.dev>; Mon, 30 Jun 2025 17:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175130459357.671.3901393870082272165.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2469544a56bc0bc4beb445a37e3ad0f8ac649c2abb1af1b6634626cc46ecc22d
Date: Mon, 30 Jun 2025 17:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751304593
