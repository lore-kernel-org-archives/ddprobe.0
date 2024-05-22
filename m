Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 441DB7BB17
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 11:23:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1716377003; cv=none; b=pQqElX8G7X2eeieabZegbtWd4CUPz4DiGmVVEwmzv15HTQ6Ngc/GMpPmM7gp7A+8FO1+pafQju9WWsq79paIpcJKinjsmmCzA3iBYCN7Cp5/T+C7FmDQ6l4dLBnXc6KVcDtNVj8gyYNTR47+UwKJVUsjk0C7hunOPsHs/Qf8Bm4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1716377003; c=relaxed/simple;
	bh=oKvnWQCh9601LxhS2qy45ReVjtDkKVbE7ewI6YZBj6Q=;
	h=To:Subject:From:Message-Id:Date; b=UC81jWszqNT62+ajNcEygSmvplGIXNUEMsKnptLHmxYWPVRQEI6dSfLorTiNZEEvUc3PR/K2NBEIGc7kpATPM/CaQyRv1yvNzoqzs0DKOX8JmZJGMnDjkH3exmQ9N7SVJI0rdpdTo4TT7oxaqX26tstv2Wb+Gjadz9p+YXppW5w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=h7ddEZ7r; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="h7ddEZ7r"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CF716C2BD11
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 11:23:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1716377002;
	bh=oKvnWQCh9601LxhS2qy45ReVjtDkKVbE7ewI6YZBj6Q=;
	h=To:Subject:From:Date:From;
	b=h7ddEZ7rM8e4+56LQpquHGHf6sf/0CrRwwKu578U9iV4jm0uyRKx7GvRw2N9fVy4Q
	 ugdCMmAl6u9LCEfSNe7BpIZZQqbHfiVFlyUFgf8FaTdqPaVuCJJlhWUXF834ydgNgi
	 yJdMbEACyMINPD8zzMA6fKSZcv9Zhr+0aUawhbfjbGo6F1POxRbJLRp4P9rWE+iyGf
	 Hwfo2fZDy+Dz2cef8C1S9PfmvaWA3Lc1J3tZgr5QKY2QwAme8HfIOIJCKx7BaC+uDa
	 UJRWq6U3MITxTqjfvU0eA44fNiRaU6IcX003M7IcXimXdRDp28EkoJT9hFxUEnasZb
	 wYKloBbKMbZDA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF684C25B77
	for <ddprobe@lists.linux.dev>; Wed, 22 May 2024 11:23:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171637700277.23035.6550441961469016654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 215da5a27e6fe7857d4e8bd2bcac38d9b3bd54fe3d6ec5b6d800d4e40486f01a
Date: Wed, 22 May 2024 11:23:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1716377002
