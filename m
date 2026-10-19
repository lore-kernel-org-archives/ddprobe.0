Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 74CE93C4176
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:20:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1792387234; cv=none; b=JZX49giYRasFZRZTNHrf0cdjFpHI8zqpEVKeZVJ+1v75XshppT4rSIEpw3MICOjC74EFGbyr8mVXa0kfa+mWaZ6CvUdGTeisZnrvqtAdWU+T8GZd4rsZ4yzPcUAZQlRNfcHIN1SkQnhHIrtlBduN5tMb0JJqOyCh2Uwz/w+XanM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1792387234; c=relaxed/simple;
	bh=LHCKhL05IHX/z2r2MVKc0XGCRQkcAAnvF4L74daxcNo=;
	h=To:Subject:From:Message-Id:Date; b=C4b0zagT0BS47dg1IQ3kOT7a2Fyq+0H1G3F1FIwT38vXbJzNqHrZkrJirdrPiLz17qom/0dLdjnQ+jhUxfW0RSHsFYvArH5vo9pqQq+v1a4kipwkrKywgKxVl2Zm/9gJOyBOJNoMGDQFLLPrOj+IIavuoIBE5ygTPeQDRcbfXaE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=HqRPcPFy; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="HqRPcPFy"
Received: by smtp.kernel.org (Postfix) with ESMTPS id DF6B8C2BCF4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:20:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1792387233;
	bh=LHCKhL05IHX/z2r2MVKc0XGCRQkcAAnvF4L74daxcNo=;
	h=To:Subject:From:Date:From;
	b=HqRPcPFyY769RfOfL7e1x7LXZR2j83GGLB/RX4VhOW2hIb4Ftjqyqf/PmWa2vTlJ1
	 oMY/nV4lnYEb+yCC8ZhfCiuy9tb754/MwT3/Xl3YuhoUnJ8zxn1i07LyunLn7fnkVm
	 o1FMSdwP5H+3BhJG91N5BAyhPQbCku5gMZipi5OZNCXAhLl8qSST4jeNAXkHW2ykqN
	 RFFsqBm4yx9YTFPNzJxk0sB8p2IZtnxMUpxSl4LtC5QhpxSf2Dz8ID/AHzCnKv1dg+
	 U/E9JM6UXb36xzVUTs+N6ZvxsnVUf2FG7ZYyZbz1bPRBwWm0bGC1XzLaxXKSaT7JTc
	 i1Kt1ozPeNUZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id B5F0ACCF2D4
	for <ddprobe@lists.linux.dev>; Mon, 19 Oct 2026 05:20:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179238723373.27539.6460990323093878468.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: cbfd59c0bc0cbaafd4be2fb136c47a19f26984eb9c0349a4cfbf4ff96196e727
Date: Mon, 19 Oct 2026 05:20:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1792387233
