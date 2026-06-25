Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 63DE328C5CB
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:17:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782415054; cv=none; b=Z+B60EU1Y5jr2aduJs3r2B5sLuQ0I9qSwBFz1zfT3pqQBuHpUQgANeGEvLeucSSw2QIH0wG3hfeKpNIBqAwIoxzYTscsRVVrB/JyMsWiaK0J8PgCEUnU9b55DaI7DYOVuCONc2hyJwDhuocyIX7xYQ7wwlxdJTxnJQHbitNej+s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782415054; c=relaxed/simple;
	bh=HbdNvJl5g8WHO07jSoAGB52l9Udn5C8/cUJx9A2E8CU=;
	h=To:Subject:From:Message-Id:Date; b=lg0lsYlPrXXlA+4nLHDCYvHOk4b3Sbhtzq5m/aL4G5EoO7jfTVgf0rsQOKSkty5/vGHbAuLXpL41lttJwgPva8wWF0CAEQ0YCUMr/jFQgNBjy5ei8eCE64QB4tFN2vpbTHuQuGrbBM1D2RFpefzigO2v9ZKkvkcovZV43h6ogtc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=O8kD06AD; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="O8kD06AD"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EBFDDC2BCB3
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:17:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782415054;
	bh=HbdNvJl5g8WHO07jSoAGB52l9Udn5C8/cUJx9A2E8CU=;
	h=To:Subject:From:Date:From;
	b=O8kD06AD/1rlp47HZo3qJ/f9hkA6nrZq6BHoCQw4VF+jsybBSka3Wuwb3gc9N9bL2
	 Y1psQKwV8Hf5v63/pv4Sbw+zfZ+vWrOToMu6MuZ5zcZCgm4TLwfGbNmJWWWJs+Apam
	 H5Tbv2DPKW9WvIWH1DD0qE/SWVW2FG0zVTV3zNo0Scrosv6hA7gXhQfspJnJKOZrbn
	 hhRKgbE5jXUzH/+uHoh5cylfvHA1ze6tFwTokRwimfT+Yu9Mhvj8dqeOe3sFUqy5+s
	 +bJJIvIU1gbs+tcM/uJQ8viKfU7sUb3NxhDkhJDj7O1A/Z+S7tg+2beCfO3+4FyeXL
	 Ek609NuTAH88w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B7AA2CDE009
	for <ddprobe@lists.linux.dev>; Thu, 25 Jun 2026 19:17:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178241505373.4921.13966585341199300319.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1067bf7903a88c69a91f2f0bc0c749b7ca51d0bad3b7bec246853b36a9c95d49
Date: Thu, 25 Jun 2026 19:17:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782415053
