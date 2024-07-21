Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 043BA322E
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 22:45:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721601954; cv=none; b=lmo7I8rup7IG03DYUDTP+VdjQb6/90UrIhcZVUwTRs/wJlPhUrVCjFeLNTfylCRy3m5y+4im3WpCr1o9Y7AhqefGVulHQVAgNunFuXW8l+kG6wtFl5cGHL3k6F3uatXuCE4dK7FtkVrp/sTjSUxFMyMuUpuIfKq6aW4roG2GR7s=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721601954; c=relaxed/simple;
	bh=hHMI178Yiqx4hpo2Bt1t0L+ZcJcaEJlNLxCvRabBKFw=;
	h=To:Subject:From:Message-Id:Date; b=t/kkVSCT674176otRUVV/UvIQe4D+kPZ3OTQ8aE5i1WtQrQsqs9YoksYnn4rL4b9TlNeuo2iRBbZCQkKvMW5XDQmhBF7WDJ9EzsQx3p5GxAd3VtafSaAysYJTjfDPxE8KYZXuSCCcx06RwRE4fEuPRfES3l6IK55T3HIZRfs/7w=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=dCvM8tA6; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="dCvM8tA6"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AF5D0C116B1
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 22:45:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721601953;
	bh=hHMI178Yiqx4hpo2Bt1t0L+ZcJcaEJlNLxCvRabBKFw=;
	h=To:Subject:From:Date:From;
	b=dCvM8tA6ywN5MRcktZaCCcAy52dQU2qZYJ2sTWH+WgQsKwabDSRaIZ+MnXMEKyj8l
	 yyAvjxlJE2msjDv0oI8KewAFm66fVjosexKQALW8mEk2+WfwCYAaA4jeiwGjiUTEVp
	 9tW80rbCf0JaPoKkNp5qNuUlb0Tu9g5SV6lXljqDPyrSG7ssRydcZU+wlqCM96vvVc
	 DS9jQpeNx2H8594E4c5ihG0NrUoPt1kH3Q5/7tUGtilBFXjsuriL4ci6jXNyLupdZ7
	 pYFglonEU30Qhpdje2xqzIjflkX3rOO0BjpVBQoVeTeF+PmEtO/4hmCTsGR8+/P0Nk
	 7y+Xc4SfSXsrA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9872CC3DA61
	for <ddprobe@lists.linux.dev>; Sun, 21 Jul 2024 22:45:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172160195359.24647.8191452713256204489.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 867efb5ba238d44df94cd23c411a7af00ce3cc63a8b83eadafa5cb6d128742cb
Date: Sun, 21 Jul 2024 22:45:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721601953
