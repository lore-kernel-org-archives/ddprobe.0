Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 73B642139A8
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:04:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719572663; cv=none; b=uevwbEccmU58o/5cyIX4mwgiZbyQ78ihuJKPFxXdcJTx2iX2a+3D0TJn3mYOmj6BukeFi5kxW8q2vdbjCLlVj6060Tx8UVEdFLhskNxgzx7QxfVxnk+astMsxmlzH2ONl6SYpElP8dv1zU+z2rVxGfBg5aopJCDgqytM3kvA1IU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719572663; c=relaxed/simple;
	bh=LSv+ezS3V5391aukIU86Om0lxQnTzH+PStpNWoFXfq0=;
	h=To:Subject:From:Message-Id:Date; b=NP5v6+ngn6Tnd9kLo277ZWEdZhT7NGadKNMHlr2GJB3C01T2i1ooX35oJJ0HzL9+95KD3v4CmM4Eip1ODxGBNMmx86zu1wRfIT7OB17jeieRaqbHSLh30sCC9nfD56ejqmE8VOemR1FmW8rn0/hMVSInuleM/8iwpddmVUpi5aQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FTCzucd4; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FTCzucd4"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7F43C116B1
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:04:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719572662;
	bh=LSv+ezS3V5391aukIU86Om0lxQnTzH+PStpNWoFXfq0=;
	h=To:Subject:From:Date:From;
	b=FTCzucd4EeSMLqpKzRK6Bf+gtFBNrjUU+IFD/dUZBYPGs1y1CIdxNPXy3525dfjsy
	 58zmESTEUWzdNw7cNJZMMuQ4sfINpJUU8t0enfaH8JM47lUqGwmha0nD6vzfL2frTu
	 FgVweIvBJmrUAQfc3/R1SM7ukQhZl8UQqEiqISuimEYfO/c6CW5MsEhkULuGGMdxuw
	 ML3dxutkfcNFfS/u+g1yqx6OEO2LVeONQoH6HwVmRbmCXXa7G3GiTyHVhUuyEAAWwK
	 PtHd/bnvKE8V2MMn0x52Yelhj2pMbKmJ2lTPQQc7ao7guSQFcdKuE17DWeCm9sTj4O
	 nglpQFu82I/gQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id C218BC2BBCA
	for <ddprobe@lists.linux.dev>; Fri, 28 Jun 2024 11:04:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171957266278.25857.1197165370404242360.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 72c9f0ad879673fa7e817d70d5aaa36103439013b379878820efacf94b8d1694
Date: Fri, 28 Jun 2024 11:04:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719572662
