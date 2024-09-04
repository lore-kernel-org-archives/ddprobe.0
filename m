Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id ED48529402
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 14:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1725460554; cv=none; b=XeZ5o7O6ritid2C5s6ff2yMowwTuSOB7D9R6EC1Uiv/8GTZzD4HnngvRvNq2cZGh6xORqIIDr6Hzk6xf43E1O3v62v3tmMhvl27LnDiCvq/BP+S/mLYI1D+tdB8JaBrdLrnLy6fu7N2GzmHrx7VLWyLPqB0gyAZ+/ixqG/UQR7I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1725460554; c=relaxed/simple;
	bh=QviEnjmFpUMcEbNQZGLGVPkBehhKhCUgM/0YSrSqMHY=;
	h=To:Subject:From:Message-Id:Date; b=hwADr3YtSqN/9AbAR4EmGugJDPy0WdAbVJmx7MHEI/b6Ha8fwFUHcFWJAw/IF/NKB4sXwG7lmQwqOCVUSKRC55rc4z22t6YEj21u+YWZasKmWo4J6XVo0Glg0V/9hsTpC/na9kdcwsLgZ7Kf9Li7SDFIpNWfiUh4oBnw74doXnM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=jagLKOMx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="jagLKOMx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A55ABC4CEC2
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 14:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1725460553;
	bh=QviEnjmFpUMcEbNQZGLGVPkBehhKhCUgM/0YSrSqMHY=;
	h=To:Subject:From:Date:From;
	b=jagLKOMxhQvLJu9PgW4UoVKRv2ZtzRLnFkqwQmfF8Wc7g8eQWlI3XOue3Jm69Zzw/
	 Hco7N+vKGJ4uqU2eBjwexneUHm4FG5KU3f6vuGHVPy9W+oqUEo3EenvH/rmhSz4iMn
	 82dPMGyWBeSu0zaKfb28NG1AADml0V9t7krM5qKifov/fStqX2VuqgRtwWor28n/rr
	 JRssR71rnVZzIiIJN97vMslVZlEsd2CIdVzkZM2ssO/7QhyBeaYgblj05c0D7RqeNz
	 UYrTq0NBZflhIcmfYCxi0Z8S3yhwsKj7RvtDqlxp0umVQVqIWP2FFSjN5UZBiKnfyK
	 Cgxv0Q9WJUnjA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94EF6CD37B4
	for <ddprobe@lists.linux.dev>; Wed,  4 Sep 2024 14:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172546055359.16263.13771224693129591507.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d2c2c1cc2106231e9dd45dc085bb644c88631991e4c32bb88a61a84bff187b0d
Date: Wed, 04 Sep 2024 14:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1725460553
