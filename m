Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id E96BF15216C
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:05:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721739954; cv=none; b=Z/rX/YFZghxTrptw3Wxhv9Pxs5B1zWey7gUGIE0FMDVHH7syP6HCpwnQ9t2CBiEsQVZa7Ghn4YvbPH2uffxLXPVEPK1J8b3jpNAqMvijHks59uzWCnnGd4eLaypIRgEeQ+fCbEJc4z7PmmMcFYaoCK/r/z4mkfUKTr6/k7SOqsA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721739954; c=relaxed/simple;
	bh=cU70AgElBWyebxnp1r3zgMAjvfwEX68VCNNgu01jlb4=;
	h=To:Subject:From:Message-Id:Date; b=qLCvQBUfIuU4SduIuJ4h+NRaBjq8w2Gh2bDoDSo4bfnoMUYjmXWjXGMvr+Zh2RWy1tGY4vzdmSrTv2YqBtRsGLxaweCNwaGQX5hRvu0uflVtcNob0H25lzfB3/qZTFzuwga+0h/Aq1ySTxk59hxjLGQGBlttQHUqrgacYrTofKE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=a4iR7Uy9; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="a4iR7Uy9"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B542CC4AF19
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:05:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721739953;
	bh=cU70AgElBWyebxnp1r3zgMAjvfwEX68VCNNgu01jlb4=;
	h=To:Subject:From:Date:From;
	b=a4iR7Uy9oEokc3Y117VCH5Qp5TYPea9r9gTf8qCCDzWKs5Cdw2JrR0XeNdphpYNfh
	 Ncw+EjRrFOFH0HFJLBEPQtFSUpMsbo83uVPMJDZ0PH+t6i8i2/OWuuv9Cz7VOBwgRn
	 itNboohFxDrPYRDKvLvHAMPSBe8f0m3ALgBHLv8u4fwhrBfV5l6WyQ1J1+LuOV9C+u
	 ybyM5ZTpGsvxjHcrpS0/63FMxt0HY7lD+SSVp6r5Jvvn3rvKhp7qC4Y145gtpKbQUn
	 Z0+RHnfaTGZvwPnbcZ7/7cbJGCDTIWNXohY8/MEYdej5+Ey2AFjc7QMOm7+03qn7Mj
	 /gOlrknW/QH1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A0E94C3DA63
	for <ddprobe@lists.linux.dev>; Tue, 23 Jul 2024 13:05:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172173995364.19426.16892859291729089500.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 15dd1cc4570a7b311a6ff186a05f217309629a5b6fc47e5d101d8411f1e03429
Date: Tue, 23 Jul 2024 13:05:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721739953
