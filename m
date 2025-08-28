Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 31D5B265CAD
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1756417195; cv=none; b=HSlRgqZa9xjeal7LAJ7/h8ZBhfR2KDStwJan3AU9iJSX+l+K/xtQHNiBCyF/iKOC6yOMBoVBXphBlHtmUvW5DFD5ZOLzfexu6MXwGhA+QxLzpJU0kI92/69/MuJfW4GXwjPOXQusQSri6rudUjXBNsa8OXozt87YnHtx3+89ESY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1756417195; c=relaxed/simple;
	bh=w2H/DMvy/2ZiaoVQozx0Wk3Z/iuF6wrnWywbi26dqho=;
	h=To:Subject:From:Message-Id:Date; b=KLWU89CsFphCNwyklne/0tQG/sWeq090SqoezdVL4BOFDy5E45DHoCVm9jAytdkPdQI9+ragZf0m9B6mSH4ZJtVdubwgJ9irT2DO9ZKwQvP0F4+FUdXjd+ZH+QBa/LD8JCnXnJd0++p21LRicu+Zf8sSZe8tBEvuGPyp6tWdvmM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lNIUHqXm; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lNIUHqXm"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2593C4CEF4
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1756417193;
	bh=w2H/DMvy/2ZiaoVQozx0Wk3Z/iuF6wrnWywbi26dqho=;
	h=To:Subject:From:Date:From;
	b=lNIUHqXmXcRwA8RMCeQTPxQEmUiJMFk+Jg4T9hP3Zlnkd8rdLoEjBhmiQLgSQ1/HS
	 /G8i4LlOXx8HJqq3mTlq3ZMoKuqkKL/vFBMbPBFiQ7APbVj+HsbBEgiITOeRgefdaW
	 qbeRjvh/4bJVMsqHNIMuxq9jGvMID3lr9OaceR6FuBpCfBaN3M5o4YN75jzI2MButd
	 1TwRsRM6u9bvLivGF9jYpea7mKKGlHbdq8pEL5X+AZCYyIoxrBUoRgxJRHtL54hB8D
	 yaaRx2TeNCmNksqPFsxSncp1TVjL4TeSMEjE3jhS51+F1jL6sSVDIfObG5NF9uX3Cy
	 CfWtAtRotItoQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8EE92CA0FF6
	for <ddprobe@lists.linux.dev>; Thu, 28 Aug 2025 21:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175641719357.22102.1209552979047994189.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d75257aac5f3e86a2a7c155c11ef3a387ebe9f0cf859149346eebd71915a396a
Date: Thu, 28 Aug 2025 21:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1756417193
