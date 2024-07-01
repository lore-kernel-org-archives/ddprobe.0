Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 7C3009475
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:34:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719826463; cv=none; b=MajvY3VGbKb6UO+rq3QsI15XTojXuvzt80swDRVEYUd5GdXs5/rgwSuNqtkJ3U/21iXcAuFt3aVFzMnCO8190UGnONBoE9mFTUOCoZlro/LkT35mfK52UvlbW8tlTFRejK6KD5hfrCzPzfjOmzd6ORS/758GSymtk32TNrfcrVI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719826463; c=relaxed/simple;
	bh=3sDhQ08/QeSfbPjgZphwQgCBBw8aoKLi1JsXTPAf9wM=;
	h=To:Subject:From:Message-Id:Date; b=E37zhRjLE5a4EgtFmTXGIdCfKrF9uQ3uQTmRI4jJzgnzE2FSADQOJxLe5EEkuiogklAeFyjeVSVbbDdVEc01Ohnffq+vr0UrSeYmBmLvHE71pnOMBVfznXrLXgKXasKyIPlT9tnEVkuTSEZNpjwheGJorWQ1ky1gzk/8TyElxog=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=N7xWp/Np; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="N7xWp/Np"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 08965C116B1
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:34:23 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719826463;
	bh=3sDhQ08/QeSfbPjgZphwQgCBBw8aoKLi1JsXTPAf9wM=;
	h=To:Subject:From:Date:From;
	b=N7xWp/NpfnkO7KIHu3Ysce0reXc08aAqzLVvabs0ycHh9z4/M7voyq4+H4tKxXxvh
	 8zQibTx0pmxx62/BElOGUoBsTsGCvMsmgtII3mjtxc3SG8pePGcsFsFR7TezjNdHrL
	 oBODbBPvOvSNWaTnU2LYTUIfS1Eov/ThgyJElaem8z/rPptsunadj9A0zLkjUnGi0S
	 MDeskCJBDH8yxe1zOp7Z4B4qIgRnjWHlGcPNkh3RonKWQJX++aDTjzHBkckQSiC7vX
	 YYNgzOOyUwbAWHszAN9eWAOxzAph4Iw/mjoubUNm+W21/HboqCsmh8Bzz5AGDOAWvw
	 55ms6rufkH4nQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id E6E12C2BD09
	for <ddprobe@lists.linux.dev>; Mon,  1 Jul 2024 09:34:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171982646293.15646.11506218210536342385.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c3611ff3427e426905c64174b971c3bcc771079b731f38c2745b1d2cef6ca4e0
Date: Mon, 01 Jul 2024 09:34:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719826462
