Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 19A02243946
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:29:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1758230994; cv=none; b=iXAq/0J+zHisdMhu4TreTWIRrYIIL3AaxPz4KHZ0N7iCShODjwWDoyllm0xt9u4Y8TfNRjlP/HBx9wQNd0pRcaAxU79Nfwcv6s3Wo99IL8sD5EgGUwIlMSiWRPG75BKmXbvGD+QOVkhctyrSgjGFWyV9hcWLdNj12kXq2s9mCb4=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1758230994; c=relaxed/simple;
	bh=IBi3CTVjj9ewUxE4taWUYPiaeBJDDTNBPvWW7jl4qeg=;
	h=To:Subject:From:Message-Id:Date; b=BQppVDeEgzqCg+1B0AHfC4cG0UoZzKlMk2zBOf7hAf9m2bu4FtzZzbpoOZEte6g9cEUaigWk/X5+MF9dJSkDy/kupx0dK4sAi9uWEPM/j9XlJGq4BN3i8pjnqP9ESM2jYlsKk7DnDHwJKd5b68fA0SbrEQoWPsXkKfnQTllP2aY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=rJs8yaY6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="rJs8yaY6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3E84C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:29:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1758230993;
	bh=IBi3CTVjj9ewUxE4taWUYPiaeBJDDTNBPvWW7jl4qeg=;
	h=To:Subject:From:Date:From;
	b=rJs8yaY6SXsC8hZNXrdEjpjmjv99HYjXIMuKymo7CMDwsv8WLyU4kM0GgScMfJ/k+
	 tAo1KjF3g83bbU4SVsjkRuZSpPhtXPXtmSOq0eHBq9OkXCx1Pz69YNin+royJykzcw
	 ywI781SeTFsaO+WfldezuzogEAlSep+9EeYhs5YVQoB+6zyWH4s9kHovgIfRs/UJJz
	 6GKr7x4NuxMJOiT3XwTlgbfAW9aDdjezfuvEUcKsPhH68YgMAI28uWi9x5zhtFUSQY
	 bo+JWQeHh6u110aGSxk+UKjaZhMrxzhcTgJV2+SYsMDRefplBQtGDUvXVze1vrCykX
	 ib+ZB+y1xwbNg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92E61CA1013
	for <ddprobe@lists.linux.dev>; Thu, 18 Sep 2025 21:29:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175823099359.30949.12514156435334138679.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f47e77eaaf86487d620e31ef66be07fd5f28021215f1aa6246dfec774f61b4c3
Date: Thu, 18 Sep 2025 21:29:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1758230993
