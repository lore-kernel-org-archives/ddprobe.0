Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E57E257851
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770702234; cv=none; b=JbLG2Sl5hHy0R1mRLlnHN+8SLMtDX0H8FOmew8jXQa3ILQVLw/uxIkLnIGDtWwwKQSFEkFGKSMc91/aPYMdL0BUHsXkMwkHW+FPoTRNnmtu3tY98d4IkR3EIwfESVgMWg32XcO9mecVnlXiJZ/dlNjt543L3BHf2wJEDGlVq8Ak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770702234; c=relaxed/simple;
	bh=z2HR2GrXmVvsjRKWMjCOdmZOiKVpH0D0a0VM7Ynu7FQ=;
	h=To:Subject:From:Message-Id:Date; b=kXzZBeizAFbamP5RJ+s38YxsrQfegCiZ9/8XzOR5zUVJeTdq6UbiB0CCv3gQPhhQ5Lf9a99GZ1sL/AyfaTalFrY8Ujqaf1mkIzBSDKdiL8v97A7Z/jUdLAAHDf1bJbeDXTwMzDuEzzrVvsV0zzHP4TIGYFxvZOdbwDN22TvIamk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=mIM0Sawr; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="mIM0Sawr"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB26BC19421
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770702233;
	bh=z2HR2GrXmVvsjRKWMjCOdmZOiKVpH0D0a0VM7Ynu7FQ=;
	h=To:Subject:From:Date:From;
	b=mIM0Sawr4X1QbA3vYePwaBeiGvPezm7j4odBsA2hAHG7IgHdVDwVDNXc7PugveLLU
	 jMPZTMMRglsX90bnXlCD94lUMZpYT/szOtptmal1bBHM/EpXtCBhyRpzwZKemtR5n/
	 BI3/bQgEqlXSSmEsgn4KztayPnYgzqU/VmH6u1MyRW/cO46nYp81ZuNcFIJ2+g3G3y
	 J78ZLQjZMc1fHj2KgjWu89qIhbXiKheDK9/MZHBXtCU4PL4/rLKBjsP4WPBrf9/tRw
	 SA3CbCrLIqusihr/LJtN5KTlbOuqjD0MuuWFzwT/QoXYzsm2np195P5V7dOqMYq2bc
	 zSVSPb+/rHZTQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96FE1EA3F09
	for <ddprobe@lists.linux.dev>; Tue, 10 Feb 2026 05:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177070223360.14560.15697407091511973271.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 6d5d9720ba2e097118cff4ab164f81efbe6750cc128695abef2de6c57c06ef04
Date: Tue, 10 Feb 2026 05:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770702233
