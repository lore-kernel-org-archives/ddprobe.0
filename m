Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 16E1AEBF
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 16:48:16 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1705769297; cv=none; b=Qx3y9cbekduCuljvwYclklKyqMF2zdlEdDb9Ng8lkzG0s7FgSkU6FuwADtra/Jt5c5WpPCn/cXA1QFCRw2tt4L6GHjDv7x+fTVOO6Aj3fYNnnyQDOYFsexp0vJ5uK1Z28tWSJ6quWBHqPBDCiDgcZm05ncrmxpLdO24+57afNhM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1705769297; c=relaxed/simple;
	bh=+ZLgVn86Ep1chbwaFesv/jKI1mFr7gFO7MFdq17RzbM=;
	h=To:Subject:From:Message-Id:Date; b=bKpK9k5UNdJVQiB230YlzhKDHBQpZoxp0bselDLHos+E4bfmAQ4qNU52M8iBx5XVtsmbvT3q1SoVvTR0LqHu6mft3H+bvay5x13QPTVvwdU6ABNqK1p7K6Rm8ZMrJCUNKUkI7CHuCmVuUavRgtoV1InYkk2vE27DVPAKuoFtxoo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=TO2Zm4B8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="TO2Zm4B8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 7AC8BC433F1
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 16:48:16 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1705769296;
	bh=+ZLgVn86Ep1chbwaFesv/jKI1mFr7gFO7MFdq17RzbM=;
	h=To:Subject:From:Date:From;
	b=TO2Zm4B8Mh5KvQxyAN/yBLVAdFvnnlrCoV0szYnUa32kmJI3Kz3WzXESYBH53xcgy
	 aVvKwG8JBBY76+p3hVfYQFfUPObF2LKPqT2Jnb3Y9KjTzflRxkuWtBcMxmJrziF3Nw
	 uwiLCNWj6qOd5iXsCnewQqfS8LYwz7nM7WKl9ACzPFnx3Hp5HRl5we5vgwvIqcpgCC
	 6tSJYSyyK6PgI17Xp3PhAtj2RGwUVUa8UGgPEfWI+kGvoljQQG1bvoP1waO7kyV1Gi
	 sH1ViMR1+45jSoPXdj+c2+ejdROwyKJkFTrMOvE0mPgnuWvltSOAI9s8Wv3FnHfuVq
	 P0rT4gxYLoU0Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 5F2F6C47258
	for <ddprobe@lists.linux.dev>; Sat, 20 Jan 2024 16:48:16 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <170576929637.30442.9168953861416106359.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d0949c16d3156cd446da66e2c0f019e3fc03e79377b88b4a4968f7e778ca702f
Date: Sat, 20 Jan 2024 16:48:16 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1705769296
