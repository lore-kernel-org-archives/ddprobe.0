Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4D04D2EFD84
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750190996; cv=none; b=KpDAeRTyUVlN9Cvmn2La1PW2onqFL6V1TP3sNf0c9Gq5VCPAaqbZbp62RlEx3CQK+8r9z1RMeQ+tu3iv8LpNAewZ52PRb99WNkjnHCgh7mykzmP6a233/fruslupII6vh7HGs/FJmbdYFFL+MEunAX3y0TFdujzXeKvedpYNpxM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750190996; c=relaxed/simple;
	bh=qTi0GHjgj5kCvyZPuc1l9z6pjVkOmv5RfKPoBS2Ero4=;
	h=To:Subject:From:Message-Id:Date; b=KPjFDXCdsASQNvd/86dBcwtjHR52elJ89jfL7p/pKq9m92Sl0cdlga6tMmP0q6Xn3biL43wdklZkQxyi0mzpq0Qpb3lIkh8mVXwFe7qrFq0OX2+y1tUKILzyTZEJMlu36o6eannwwjzRfBb/EYwigT/b2G9SwK9hUqr6ldzWZHE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=un9+7QlP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="un9+7QlP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A39B7C4CEE3
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750190993;
	bh=qTi0GHjgj5kCvyZPuc1l9z6pjVkOmv5RfKPoBS2Ero4=;
	h=To:Subject:From:Date:From;
	b=un9+7QlPn4I+kfEC1bbwtEyIhsXijSv/dnM5zos5c6Cs/9iEoIxZ0SIVgLW7mdYbs
	 7XYmpDzv/ZU5sQmwhmXZHplQN64tGcH0gb3zxk9U0cMnO/GPN7BSSddVmHUFWOysvH
	 CGzWcjsjEF4HnVEJSMZBIAguLLPF8o78HdoM++OvdlMDwVWoPXLtNHLdbvgTn2PlF3
	 k0Jej/IH0sYM55GlfUmSXxjXD5XLLqWyGC5tONW2oJoG5W7glwIQPbBaMlVGApUSB1
	 41iLdHWe0QRh27FGhTEAx6UxTiEQ5d6nM2oHMaNO/ETvY4dYFwvzFL0+ZkhhDOy1eY
	 dauBj81GiKUAw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EF82C71157
	for <ddprobe@lists.linux.dev>; Tue, 17 Jun 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175019099357.8488.14832312548347358041.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 7a9218ebefb8564ed507e16c44fb1e64ea34bcbae0dfc97480588271d616f44d
Date: Tue, 17 Jun 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750190993
