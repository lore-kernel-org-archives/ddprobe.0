Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42C1F23E342
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:38:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783798714; cv=none; b=s+BbT+6N3MJFrRbjkPWEWa9KuFlM803uxdtbaeiYNVfjh8XKauoeoUStsQw0gzoOyHulabzONMvalFcUdrKNUSTABFux0JN5o313oSisx6JUwP3t55adwGUOx+JxALVp/4AWn93hjwQrPv9TkeK/x8Pqm4HoPZQSGX2IFil1CNo=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783798714; c=relaxed/simple;
	bh=FaOhkzy/sZvimNBkzgIjd/781NijYMcbQpDZsME7Afg=;
	h=To:Subject:From:Message-Id:Date; b=OwXfVM7wJ+X1xXj3vVNMJzeVPrgItIV/zR+YAsqB9sM0983fIGBShaJoz20nDl+uhhV3IcSJC3Wo/FcckD2//2ZmFXqvKJbZxT3P/UFhsGwBkmsRAzr3scbAFfI6fNlaawHzJYGEcYEAoFObYIxu/fvl/DNyOIph+3R7L1Zkpso=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OEUoZLgV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OEUoZLgV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D3070C2BCB3
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783798713;
	bh=FaOhkzy/sZvimNBkzgIjd/781NijYMcbQpDZsME7Afg=;
	h=To:Subject:From:Date:From;
	b=OEUoZLgVQyzoOQagkcYwieuDPkTKBVLK93jb8zXccsafVXXAG4FHI18OCjiMcRlZZ
	 M+7QMTltKpqrN6Ih9adIlg+Ju8j+ufMgYzq6O8zSQfdsIoZV6likp1iBpf3PNavvsf
	 QXevlzY45+wjusATWyzjeA+bTpPmd9YsV/Vtd/6IHQAfES/MloCHuOMU57kxCIoJa6
	 sU/q67Q08SqMzqrArlxUqO2P8B4zjZU5UZA+IVBtEgH5MBZNSBanGpYtWF9hlKZxq3
	 cNTnv+Tn+GPSwstvJsCci39hnfoKmear/7ew7WlrOboOaXQYMAmBI9U+ukfV3w6BaI
	 Py+L3/ou5pd8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AAED5C43458
	for <ddprobe@lists.linux.dev>; Sat, 11 Jul 2026 19:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178379871368.19639.7961741790509344793.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c95ea7d2b4f2a55a901ddb8321aaa9be36817b1d30ec2cadc21cd011b7b60d4c
Date: Sat, 11 Jul 2026 19:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783798713
