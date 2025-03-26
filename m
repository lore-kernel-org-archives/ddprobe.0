Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 37F6E1ADFE3
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742983794; cv=none; b=jv6aFpU05jSBgwg+RpZem72HrsoGLuowLx01LF9O4ISwc3I1b1MJiC57eQwChsk5ZAf0O7TgoFvjPQDJzz4AM6qDxSthBzZcrtDcJFu1ihRUENV6YpBwOe0r+DEM8gYUT/RBICGPRGrPAr8S1cLSjDBSglGTYiR32eglceJTdug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742983794; c=relaxed/simple;
	bh=FC04SIgnn9YxdIUxSR6QhAI04JvL810ms9Cse55/YWA=;
	h=To:Subject:From:Message-Id:Date; b=a1lVlgeAgFXVnpByjoisMKftpDeYV6pLhrwXzWwSQfTJ0gBv9mHeUL4I2UcnN3lYWFp4onLbRSnamBxdZy1b8aUk8yHz8mUmgiFhp5EBB2m1zYCuzAKtKBjTnQClgcvxIxTNocM7xPgQTgRHsu5gmHOnBpIUMytnkbp+/riK0EQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uTd04Mct; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uTd04Mct"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AA1D6C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742983793;
	bh=FC04SIgnn9YxdIUxSR6QhAI04JvL810ms9Cse55/YWA=;
	h=To:Subject:From:Date:From;
	b=uTd04MctGm0NZchdV3jX8Q3hRqIY5KYx9cGHbPPy9vTAPZ3D6ZG+CaJMWfgjYDQvw
	 MMF4Fp7ENL1AANbHsloaTvacLWtNEDqw4iwPCsScaf13vvzA4BN+etV7u/BsqmzVdX
	 PmrHq4/rOYfHGzqI4P3sj4f4aCj5YawiooGXSIWxr/YwnMzMjU+BQiyQGgaZovNKXL
	 HClLSyoAiuM7LTtMcNFqtWgyPnL7t2avIOzuqfsPdeFwFaEOtmnkAn+0EtKNWyE7nx
	 0vQrJMyPRZtLWH94YO0q+j7gRWf5KOc07Z83xV+xUzi23WK6kU1o8KMHEvkilghouH
	 japo29rl7nITg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99A51C36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 10:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174298379360.17015.223578770742629146.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 9c639af65de0e99fa2a4fef8ac64c65c1a0f4373584fda7030312171110a6350
Date: Wed, 26 Mar 2025 10:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742983793
