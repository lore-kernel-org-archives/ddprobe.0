Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 48B80311967
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:43:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1767743036; cv=none; b=mMVCihTCCnjlpVkPcZG/zwQBERQBQb/kRJKr6almn3Qt526Q6UspinCUGaQ52xl8/jaYXXVKXE/IOKLAdnOh3gqjU3Gj81GWlalUBatukGwUK3meEJ62ZCGbQFj1T5nfk3ERcEd9dzV8C34iEP4xmSciDgbzwVovTU6xOmd1Kwo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1767743036; c=relaxed/simple;
	bh=H3rt8mn7p4pPkiwpJTwV9SZlbduE597721htd8PjMzg=;
	h=To:Subject:From:Message-Id:Date; b=a0Im69PKlPCwG8inS5nMbTYG4FdWEYLXzjBVRKqkjoFxoupJ2DDiFHLdhBLfBF1sc3+KWB0BLYlzyXjBf/Fr3f0zznlF45oZOYvTpc9f9tcGr+9zX1sXMoKs9AaIzGtM/Hn58ROgtJf6PPLccnThaSRyXqEgeEH/qj4SpY7Kv/8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=S9jthoYC; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="S9jthoYC"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B79BAC116C6
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1767743033;
	bh=H3rt8mn7p4pPkiwpJTwV9SZlbduE597721htd8PjMzg=;
	h=To:Subject:From:Date:From;
	b=S9jthoYChVjfdyfBPl96a569iyBx9QgW9mynNw6POpKMGa+bRq1m7PFJv+Pngv82l
	 xhdr1+rYHQKpJWFPBi/aPQ0Chg2mXiVgXwBDQ3q0iqTbXi6+s6y37wkP9cXspFFZTr
	 9WZL1s0sKDP8fXbGNhQcJG7hCYBSR40kKj4IaCEIqHsqlox4GLPSDMLZYuekYiVrvF
	 6wKg74YDL/8h1v1YkYKC2DGrPa8G8ifDkgSirkflpK/E0vW6SpouFqEffRrDRV65G7
	 iNfsbiZ+wO1N3CAJBxM0ZVQhREvQCmj9tjIHpQVW+g3T/BispWF/c5Y1pxhFZvC8nm
	 VStIJ4IRvsYEA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91402CEFD0C
	for <ddprobe@lists.linux.dev>; Tue,  6 Jan 2026 23:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176774303358.4379.7000961787124119085.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 1a2fc768f34ada917d45a94cf54fb579022461ac45424a4a2fcddced1ae8d899
Date: Tue, 06 Jan 2026 23:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1767743033
