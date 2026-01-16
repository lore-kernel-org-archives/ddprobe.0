Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1722522CBE6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768541634; cv=none; b=CGnQBSAeftpmKkMvnZlEl9B7BgWBNMMl9F8X3uc92fx+z6EEGByp13Jzmw/Qr0rom9xX11qcqQLNbNj1SqAZSur/c8lTIR9zmxMFvGMy+OdvgqcQIveEaLSu49z+NK8qkpN4c/WN8WPb6op8g+jTri4xCdXuBAljoLu1TjCJt5Q=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768541634; c=relaxed/simple;
	bh=7ZRdVSf/1Kxtzvm3c99/xWMEYTvheS2YBe/J7vZRE4s=;
	h=To:Subject:From:Message-Id:Date; b=CKhlDJzd9IgtZ7NC8r+RydeMz2WP7RXxDp+o3IsAxz4Unien3zh46xHLN2/83f2RlHQK8g1g3UW3spf/BIhF32abKttM4tLIjvAaeWOwritEEnJDwGxXnzHcudwrbCdFAcUT3r58OoSnRIjvUzmmE2o7dCBUagn3NkphM5DP+dE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=pqRd3Ity; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="pqRd3Ity"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A51C5C116C6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768541633;
	bh=7ZRdVSf/1Kxtzvm3c99/xWMEYTvheS2YBe/J7vZRE4s=;
	h=To:Subject:From:Date:From;
	b=pqRd3Ity0ELRZwCQ8/yt/orfWX2aK10bIeLgHWx+X9BKZU0e4qjMS1tgzagPuuGxT
	 gOAgIGjVNJZYpZP9QXqvOROVTH2yd5IkGsFUk0WXeNT9619eywHNO8riB2nFvPVwVF
	 /yZ+F+ciNv9yQ9YPojq+X76MNqygYhXmq2L5CONrKhDg0KjAFxa2apEYu2TvACDsFn
	 UL7mnyocalHxGs/VRkehyvWju57wVMqPpEW7GzoranqZBeK546TEjUHW68sumi4EJp
	 ss4sDUqsLC2Q0nKxi68arerVRNJfMiPQpZOqsq0f7z2qUMsX9qgp85fD+HrRAxZw9q
	 LuGXtj8LeHEZw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 94526D4A5F6
	for <ddprobe@lists.linux.dev>; Fri, 16 Jan 2026 05:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176854163357.19720.14299025000088360938.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: dc21f1c02e4173918aab4fa3f4bd87f51b5469f8d74ba30bc98acc7a27ccbfd5
Date: Fri, 16 Jan 2026 05:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768541633
