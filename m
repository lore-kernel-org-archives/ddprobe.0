Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 26F552CA9
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727939754; cv=none; b=bRdOfXNVoIYO1SFlAx8KodPkLCjlPB5eT/dcVGjPVCOG6OaV4IU8SxdFSb8xkohzYIvzv5sz3PlCgUC6no49i3OjSCbh3vxSbb3g7/lcrkI2HWdNzYytm4lJOzAHZNlt1mMg7yK6kcGIebfej7PYgTlpI/z+SuMKkpINmPlDcTI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727939754; c=relaxed/simple;
	bh=xmfQjE24vGA1ll8ufBPG5Fz7AGd62VAJQH3jIhFtOr8=;
	h=To:Subject:From:Message-Id:Date; b=ju5acHgT04lmhQP3lktf8V8MHuBqakRYd7WhGiiBIPV/qcXkS9fAfG4gtlrW5jcwFsyMLzBOx2nCuzAPzNEtXgi5H1wG/zlzAv+nwWpcIJyXJgxIlrYxHooNlXROXk0wFBdqgDtSEBn2FaeRoLbRDWTXW63ubGyRtiNLgYMLwbI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=SWDP8njB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="SWDP8njB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B300EC4CECC
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727939753;
	bh=xmfQjE24vGA1ll8ufBPG5Fz7AGd62VAJQH3jIhFtOr8=;
	h=To:Subject:From:Date:From;
	b=SWDP8njBGhPg/RRrcOgs/zfMGCgMSbcVKm4VwbKuK4tonmf4ed0w61rIEyypAyIjR
	 0AaHqG4QURfQEySkCFssN3tWFYR4i9F8zQs8HTX9y+Ypyc/OGCVlZ3NXxFI3Cbqd5o
	 ewV/SPRwWobau61zd1MrOOq7VhA5YIyb8rm0hYEbXjoXZcSkH+cTNMthGJhM5PztYt
	 aJeoJmfWdJbWcq5GwMgMSZYRid6gFUJBtp3lHCp6m7TrkQcMcoQXZ1ipTaFdhYNUQT
	 lZ0kNohKT3E7wLJpdiqyXog1AAvoSnLGE8K2xT+5fraL6+EnnJWlHxgx1jO5kW/s3z
	 Eq+aHUzZd2gig==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9D9E1CF855E
	for <ddprobe@lists.linux.dev>; Thu,  3 Oct 2024 07:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172793975363.5110.11878773726355233365.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 439988c307725ad932c8b21d32e97fad635b0388193dd8c1f496ae7a5921a2d2
Date: Thu, 03 Oct 2024 07:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727939753
