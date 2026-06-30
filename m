Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 36CD140963A
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:38:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782819514; cv=none; b=Ddas2A9mPjZnliGx8LW4djLOz4YpjkXNumS26kTJ4ohoV9LFzLpkbVegNOft3LztDqxZ17lmC1VF8jfArN7XwnyEuKWd3FoWNhgHDnzPKcoF59bc5OOJFBif1s+dILJnfY7VYYLKFG1iHaBbCRdEPn8PLAn7uh+g6zILsd2IXWk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782819514; c=relaxed/simple;
	bh=xSSFIUOP1xIomSqulEImZDZBr9W1Zk8URnhsNV4Di74=;
	h=To:Subject:From:Message-Id:Date; b=nzfU8l7wDdCxMG8UOZAnW4tv7b/lRptU9I2xMNqDnRhx1ogmml/yhNMXJ31doSbADLR4or5tE5IrSZ7xf/4Qp2aThoO3zuqEh9j3IKEWzzlxumacC2ZEmbuE+aHCA1xh1pXel2IXKFZ6WdpMW9pHytkXUziFeCUNw+fBjLnaRCE=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=WuOyNOZ2; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="WuOyNOZ2"
Received: by smtp.kernel.org (Postfix) with ESMTPS id BF6CAC2BCC9
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:38:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782819513;
	bh=xSSFIUOP1xIomSqulEImZDZBr9W1Zk8URnhsNV4Di74=;
	h=To:Subject:From:Date:From;
	b=WuOyNOZ21YRDpzVt8ogeG61K9SLuzPt49snPnOVB6Svq6uavDOuHmj4GhaEJqr7AT
	 CiquFXMfY1iIAM8aXIeJL/eI9pLPm/Ii7N0tAOaP7XviT/LyWg2SJWgSQrAHmJXol5
	 3N+2JFZp+TimwdsSLhFEYCi/BrKPCSUoLCeiDYU4iOIq4Cm/Fmdn4KLRd1E1ZRgCIm
	 EBA93A+l79YHitG0qTTltKYMYw0zGVC8Ufveg0O02+j6Ls9+kPpOo8eNidhojRCiab
	 TtjfRFgqqPsUm7iOxrbalmA4ICl66mffAZiCyljVB6tsJKhiONaS7dAcXcjnugn4dD
	 Dsivuk53HSA+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A8D05C43458
	for <ddprobe@lists.linux.dev>; Tue, 30 Jun 2026 11:38:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178281951368.31207.16738854624621012926.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 007d21528cf7099da9b5179aedceec9452406231777723f55d3f9fd624200476
Date: Tue, 30 Jun 2026 11:38:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782819513
