Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0C91C38F629
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772444094; cv=none; b=d4L8hHYQWsG2an9a3jMbKneMqanOETdSUpBpussT72Gy67sbw30d7n7yESJGWvJNGTaezYRVslF28m93eHObAQA6M8zckqc5BOs2hnWAV6qU+0r1ahP4LJ2GYr5oDyz7sYmI2dtuqHpG79BUC+2CCRBMeUG9y4+ahJ8HH59BToI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772444094; c=relaxed/simple;
	bh=2vlZSDyvQUNudM3kYKk12Tofi6M02tAInNeiOPqRYSs=;
	h=To:Subject:From:Message-Id:Date; b=cj0E0uf9M+f6CUQfqK+2/EjHzICFpJRTYmXQYzGf75nOz2t+RANsfNKM0jv6PESKmqi9neDTDDoEzvU6jurvgU4mKFME8qWLPR8hWswOGVZAW5kBi8zGInUxSPb8TLuGAb53BN0k5U7Y0/TlgKqs6zdJt+wBVM1At4ZIB21ukCg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=r+S5/myP; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="r+S5/myP"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8388C19423
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772444093;
	bh=2vlZSDyvQUNudM3kYKk12Tofi6M02tAInNeiOPqRYSs=;
	h=To:Subject:From:Date:From;
	b=r+S5/myPCWWgbP5Zst5zSzSlwoyJEeNZT0VrIuJth1dI09FnfZo9taR4/Fox5AH4W
	 7cqNMHcv7UrVTtFTK/yhxW9xkrINtG8osgpjwY8zjrVuSvj7sD3Ts5YC9sZuPf0W65
	 s3t9lu+qjq+5ZZAX3GHonn2gakJg4d2SiBjLi2nfAOdtcBx0L7EvSJ4uyMhvuL4Zci
	 94Ed8glBmhQsFzJ44fmK3PDCfQqN6fqcDoShqEbMprhEFoTLr0Y/l4AQoCbvvz2vsY
	 xovnBI3//7Iz4TjwP3Z9QyqnFHtdzZBaaQnJFDTXCQH23FES8wXlKvv1ichJ5+MvIm
	 58tVRIN0omv5A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A5AE1C624C2
	for <ddprobe@lists.linux.dev>; Mon,  2 Mar 2026 09:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177244409366.32424.5555178976429748777.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 91a360c1c20fbd4703a392bc3951a7ce32a41f99cc05bcf1f74d2d07cce290ee
Date: Mon, 02 Mar 2026 09:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772444093
