Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 66F47559C81
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789656634; cv=none; b=CZRbYTmxlKmGW2fRBzptH1BKGsKSWrGTlQstyCTsu92AVChggKKu9/S2W3OxOZ2IqE9NKDGrcEUmrwYW4kTkNZp8bU0Mb9wKbvTbh0jLV5loHFVeVE1MLiES9M35ZTYl/hZo4vTWythLOUKja44ufi//C1XPcAKWLGBYbMbn7LA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789656634; c=relaxed/simple;
	bh=5YzrBJXFg1XBFI4hmlnGkYXYO5ZWnegtPpNUeGLKMP8=;
	h=To:Subject:From:Message-Id:Date; b=i5+yV/dcsw16VTTOPKM6Id+eRUf0xOb20O/9ORgjnrKgQBbJN3slpcHOs60fVbsiBqc/MiRPkvpw8Pah2NlsaZWbuNFLbHnitzROYYyStygNe7aWns+Vs+DbXtlouzGYafhd7moUg7Ov4ARm72nUupjtrtEH48K7ycj84CpDAPw=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=duC32eE/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="duC32eE/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id E72C8C4AF09
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789656633;
	bh=5YzrBJXFg1XBFI4hmlnGkYXYO5ZWnegtPpNUeGLKMP8=;
	h=To:Subject:From:Date:From;
	b=duC32eE/z8rQo6jxOKH46D9b+MO4ilo9gnFvPziXmsxNt5nJ5b9JA6eKWPRM+hOF/
	 q11jEMecPEyJn6pzErjcxh6E3/BJQGp/FPVYsaHlJvC8eXV0Rhc3uXLN+5b0zRN5Lr
	 M+2YCdeiI5EUq30b27oV+hBQxAx3rLuPwWd7CkHy3vxIK7RtWthpAAa8GJeDH73z2T
	 x4osWVudDhmL9wOiv83cApwpxpJhxHboa109s5FQC86eWxBHqPr6eG3RTsu724XKoA
	 4C31CeLY2ThHq8qw01MKxqoukwdhSu8L15qTPEdG7tXKwwshgXF1TqalrNReBCOxbI
	 G8Qrf8OEhou9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BDBC8C88E72
	for <ddprobe@lists.linux.dev>; Thu, 17 Sep 2026 14:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178965663376.3393.16860697144936879759.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 168f6e38cfdf38d6e04c84e0d7cb848e0f99d32078cb629aff0bb16772a2423c
Date: Thu, 17 Sep 2026 14:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789656633
