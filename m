Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 402112D052
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1736396154; cv=none; b=NtpwcTCjTVDEDyqGgoVUN2Y2Xdbiankl3XyYHx0LR/7F/zU+ko30TfB/fw7OmhsYf+lIgJN4m16/rCvQH2IwlQiz7BbMplnVLSYKvSY1MGaR55c5sBbMxgl0oToZr0T+bujE92g8aRgfZc77nN3LoZMfB48fxKFDL3QYHHS467I=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1736396154; c=relaxed/simple;
	bh=7djeQFaxC/pXgH+pNPU/eYULYU+ehoWocLiDnQPnSBo=;
	h=To:Subject:From:Message-Id:Date; b=tShETJ+nY4Nyw873eb3Rh3oaG/4QDXU8KB2MV4GmiEwhF0srtNDO/BlwP3KWAN0L2hK/WVQj1ynQBDqYSBii0vYm4kfKihE2n9+EoHDAkdO9nVOumAcehhZj2GimzD5BFismb8o+1WnwhDyolQBTnjSwNbReIy6DZY9S4Mr1pRI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mCCy3zfR; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mCCy3zfR"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AD70EC4CED2
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1736396153;
	bh=7djeQFaxC/pXgH+pNPU/eYULYU+ehoWocLiDnQPnSBo=;
	h=To:Subject:From:Date:From;
	b=mCCy3zfRVY4UYlvlZUm0bJegbEg8EXHMmsQYVk58jSDWwPWtgJk19z04WxSBXtZVq
	 2lUQ7j0n8Xv5atf8Ry2TeHWpg9H7esSys0VDA0P57Sldkjhc0fcsZTWwuSd9n39gBU
	 gfC18wCxlfz5CpKkUJMuwFBj7PUPbOZKsOD1SXMe6sYXACORGTLbJPy/Lcz7YG9Gf1
	 ynIvKiI0W28Paozywj+J6soEmT5KOxNs+Nt2fwsskTH9qDso5BSY9GkJ21dQ8vU+mB
	 0jpv1KTqYJqkmiO0ARLDc+W+i4+wVYawYlI8Sdj4bTz5Sj6JZqTfFFPZwgs4e7E+Bu
	 nGnjRWJ16934A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BFD4E77197
	for <ddprobe@lists.linux.dev>; Thu,  9 Jan 2025 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173639615361.22009.14167751819689624780.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0a70c43026f46e7c432b370e5eb5780c72cf8906ca9ea4a6a63515fbd5b8ed64
Date: Thu, 09 Jan 2025 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1736396153
