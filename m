Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 6893278C95
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:27:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1717802843; cv=none; b=Clci+m7c0nlepmXfRdyBBzvvux+tBJ0ZB8k7pXCjR7hc7sVUY2tqPPxCOFkQGe7aWFSweWE3vI3iGQ1dG26uxKSJq8QVucqcuurl7whLcZ/F4PHe3ajo53Np3828BnCaKF1mZSKR1ZXYGYFfDfsbHMpVUrDwnuIIVN+jm+5NZgQ=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1717802843; c=relaxed/simple;
	bh=gz66Pn7gptTyuYwC3A1CZRpY+XSX6PrU5lXJ0zNb9A8=;
	h=To:Subject:From:Message-Id:Date; b=Pmefh5nkzC8hkdSDZZQazB7XcqdFhXGgH/8MnVgmPFQwSOmktbBUgV9xC1yfcLM8dqzeaqrB9Dvwe3MJXOqwJilq5V+7WkGpDcH0W3XC7rlB7pTvm3e2/E6bVsQ9jOgT81R5yeDcW4DLUfDs52bMdAsWZVrHVzjWGMPbT67rJ5o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=JgzSVmaF; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="JgzSVmaF"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E4AA7C2BBFC
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:27:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1717802842;
	bh=gz66Pn7gptTyuYwC3A1CZRpY+XSX6PrU5lXJ0zNb9A8=;
	h=To:Subject:From:Date:From;
	b=JgzSVmaFMuYjfJkIa+YDSsFrmpsfxlzTKhPKQZAA98r3Y2PK40N5OPV4wZKYeMB+G
	 UkdBxFBfPzWh+Rgym4qPai6w8ed5ZNtb66ThMxb9pMdzgceG1nbks1cE1JWv8o13v9
	 KT72L++4/T+dJfbNKAUbKmE7T55ctaM39V9B4kJ0ty3KMMANQZYrUCoccP5OHyxN7R
	 sSnC1ELHOhEbs5VSXGrtlTVdQgadQXuP7Ln2NXnIKiDvkmjGBSFtIqqAWSpfY0T7O7
	 RyqmxQFt1vbbW2uDmqog9bK5eC2NdYg8rh01AAUu8GBBTQWbb+wHnOIVjK4/v8ibVf
	 88fKx3PGLBoMA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C9BC0C27C53
	for <ddprobe@lists.linux.dev>; Fri,  7 Jun 2024 23:27:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171780284278.14105.15685613806323429156.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: af6ba2489d9bbcc5c828d76174d3241ddd4a4b9cbb78bf95e6c6a5fdcdb20fb2
Date: Fri, 07 Jun 2024 23:27:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1717802842
