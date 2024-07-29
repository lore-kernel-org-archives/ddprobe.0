Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3632784039
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722237354; cv=none; b=uDRoQwY4DnuIiB1YtWdaMh4STVe/YCja2lU4RkxF4T+/RxkzmNnndUfB8J1ZHKuYu/pry4cQXSGHQd3X066rTHMBmenQmjU+dUEcd5e7J8H701/gRcZz/GBcABXnWMjVRkzSPl13JjTE5aW4ZJTtrS1Bh7lsOyRc5n8keOlIybA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722237354; c=relaxed/simple;
	bh=szJwirzyU9wTrQ06CxZgqtJXTF0xJ5NvnSCZ3s+qE48=;
	h=To:Subject:From:Message-Id:Date; b=trC7UOWWJlp3l2lPvVGCsYdrz8BkiZstHYVy40mxT7BA1chgS6y2qwXQ5cDL8roPtKuSb21hP4+p5C/cvVWs7eIgAWzBjUfLyA2loUMw9stQhznjAukn8YR4A56Zcr/5kK4Qt7g1x/gYCN5utneIRkqHyEeUc6/ElZvF049WXJM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fL6A5y63; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fL6A5y63"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A69CAC4AF0B
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722237353;
	bh=szJwirzyU9wTrQ06CxZgqtJXTF0xJ5NvnSCZ3s+qE48=;
	h=To:Subject:From:Date:From;
	b=fL6A5y63rkXAEKtYibWSF1xF0WrRZPy6yEPP3S8IPXy8AYgBzuSSR+LsPqnpAaNGq
	 tnF6IAQ0VnUpZAL+9bRLIlwdve9Tj/7ggRUVE/uNdkg8H60b5HFl2OE3XJCiTmv8Oe
	 w2V7gV3LL6URoDEhtTKCtlPYoYirYbMGFNbE+3JOguCQ5xttX8UGzmiUvtWh76SQQX
	 TCkXwUunGG70ZPKH2gUV2W+gw/ltk+7px2AZ0dde4O+EFEh0mM+SMuPoijVprXPah+
	 uYIEmqmCpTma0eDVMSIVbo7LfcAFR67qe3ch7ZZ83e99ExMPKjBBdR5y8Z6xhdwi25
	 4c0nNvvh43XFg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96F1BC3DA61
	for <ddprobe@lists.linux.dev>; Mon, 29 Jul 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172223735360.27132.733800355953551561.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d1c0f9f133c60c644c2abd7766b17dee5391512e0d0bc601f202caaa53c8bff3
Date: Mon, 29 Jul 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722237353
