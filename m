Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 17C27179A3
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758390595; cv=none; b=tYWyCI5U9MXU+AsnHXTvsQL6MHLz8SIL/Vnw35Vnb/tomY6v2WihNfbJF1NYkuB+4tV7fvZhRC5L7ayVBywcq7VBP+8mwHfL9aLIu37ngmH2PvCfzAlJFe+0b4ZOkzk0sog6w31Wh4T6v9ZCRAL3MdDeVMU9Xw1Nfe2zYx9982o=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758390595; c=relaxed/simple;
	bh=5SCwTJDK4pG8m9Vs4QneZ938ldzaSLlmbQs25Cox03c=;
	h=To:Subject:From:Message-Id:Date; b=M7NYmWoA6DbONLZ4+C7wU0cDwCBiv+P5UOL/WdBn5svStGx0to/xBJiYDcV/OchBCm2cNzOYIbqRqWbwVUMCUGqx9p81iAOBBVE6LTjg7PtDhwwV63/zHLGACidyY8Tze4BgwUc+V47Xa0bBSvXJ0jF+OaaEBHEG9H0GZxlOee0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F4hwPKSQ; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F4hwPKSQ"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A22CCC4CEEB
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758390593;
	bh=5SCwTJDK4pG8m9Vs4QneZ938ldzaSLlmbQs25Cox03c=;
	h=To:Subject:From:Date:From;
	b=F4hwPKSQ1zN7tq0IQzxgVmWDDDiASnlxcLc3CIFjt9qpZfEKdxGwEw4TBYcBJMy5E
	 Gi8h0Rnk5rxnmLKslIirXCjpblTkhH4hrpjzn2QhAR8q7oO0z6N188dFuY+V8hTO9Y
	 MVpH9sBvpMReXYKLw04+OIZpvPzOtSo4q5bOAfSKpoohaILHDSXen2Cvae4LeaxtBC
	 6YLY8XTr2nH24zhneNXBebIgUaCYMsAe2WXMFhHs6q3rpWPeMaxIG6/YTXhdnWZx2g
	 J5ZFsNeldK1sx1SCtooVvbRQE1d/qQb6knfvrMM2wMRYd3CzgqSxSe87XG1wLGlLXb
	 fUjuXn2xBabxw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8E8B5CAC5A7
	for <ddprobe@lists.linux.dev>; Sat, 20 Sep 2025 17:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175839059357.26086.7549956872535297331.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 734db8ce8f4a0223a0bd3f497b9be76d69f97bff9e80bbcc6f563af865eb639b
Date: Sat, 20 Sep 2025 17:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758390593
