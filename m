Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3CD662E3706
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752461994; cv=none; b=SiFDfcYucizXaBfswAbHtx1HBLhnqLVIn6WmwXbKldKLtkh0keG5gYufD0ryhF5OhtPGaTM0FEBLV9S/jp+acyowXr6p6zY0ULcJ5Ax2FsVR6TnsAYrwITMVlbm5VIGpuin+g76vam3da5txYH2AQdmlMliUBIJJ5C24m9BCj38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752461994; c=relaxed/simple;
	bh=COn3O8HgwSegpOjOeUsr+4VtTUvhj+7FSIPE/ZriHQ8=;
	h=To:Subject:From:Message-Id:Date; b=OSRvh3XbZxjBkEkVv6kMMpXHt4Rux3j5aIyMFGEQgDSvEtWiO9W8M28JNZRp+bZOnYsnXEayIxoW2MZkxZb+BE34agspF7a6JfyhVEp7pNp4bZCCXsbYvFzBDL4Z3sX+DRjO46h9HH72/XYQYPWxYojbmcqc9WwMBaSgqjnpbbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=F6sn2grd; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="F6sn2grd"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A52D6C4CEE3
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752461993;
	bh=COn3O8HgwSegpOjOeUsr+4VtTUvhj+7FSIPE/ZriHQ8=;
	h=To:Subject:From:Date:From;
	b=F6sn2grdskbOJIY/xvXdjz9QYmGVNrBdEr+a6MEz7sFdepICsmpJnUJpqRxH4WJBg
	 9jWCn9qpYuXb+e+th4ICn7CUEcVfvN2CvdQcmiOgZro5/VNch4L9YksYgXj4PQn2J4
	 HbOsdRDaTa1tViSfNximEjmq+1MG3vfodu+o96OAzFs/BJpVyo28NssIVdbq8U5cn0
	 giav2+YdLfRbXY7zn5bXPhzyk64dF7BR4Wq2LpKbA7D6bFjEUwE9EvNE9G1lmXJomC
	 wq49UMUP2S1MXpsOIDob0pgPLJsR2JZKwozNMXasgn54ijcpQM/IZfc2KYNpTmbD87
	 hgg+XpSLJ9wrQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F2FFC83F17
	for <ddprobe@lists.linux.dev>; Mon, 14 Jul 2025 02:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175246199357.5909.8871633126949495368.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 43cf6bae8a4382ef619ccc2b647613772acd12a7b65f86ed2a5e8693fc02d83b
Date: Mon, 14 Jul 2025 02:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752461993
