Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 349597F8
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 04:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1721967354; cv=none; b=I65OtHjwy+h0J2UnWljTcSE8j4n3nU/gE8qq/Xq52axGfQLqVacKQMHXYKLRb+8nRi/UjIDyRQSY30yvBb+v40LnpFHOIKhID51ycqjFwKo1EoQvoPUD5pCg6njwavkLzB9KXy62kRWAb2bJyoYf/m4cFtIAQyeYxIeskLweClY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1721967354; c=relaxed/simple;
	bh=CfxUl4CHzDz/WpiUTrAgE5yc4CE1ENqC8Zd7yJrIRyk=;
	h=To:Subject:From:Message-Id:Date; b=UyY5U59SptMFP/AsKngA9jyreJ/WXyW5lED84L8nSBNclIp6nTGmkEFTokyjJqDJwUBJgoIXMMGvSF9nzFvuqV45knQLlGYe5UdFcOuxMBjaCBisO8FRgJKtfmEiTAf6XNxGMk3JtLfVoOn11yploHiEoUnKLvA59jZeJFbogyo=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=PAQudRvH; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="PAQudRvH"
Received: by smtp.kernel.org (Postfix) with ESMTPS id ABCBFC32782
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 04:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1721967353;
	bh=CfxUl4CHzDz/WpiUTrAgE5yc4CE1ENqC8Zd7yJrIRyk=;
	h=To:Subject:From:Date:From;
	b=PAQudRvHVVf4YvdEjsKTWQ8R956eJrOqibC/+pT/nTyLPnz/b0h3Ie84JIcs4+ptB
	 +4bx/4dZao+h/DgHl7L/gKKifbHzeYom1pdlNFmeaEXl8E3I08KhqJz/RBTSa/zUeV
	 a6GS+bSz5XIRhYf4o0G+QEjYcHpe2Xo3SDFp4OYMahl4LNgJLo7aCTTKNJdhWGVcth
	 b6z0SzCWZBN1xODyPmWYHXZDcpmBVr9VvSBew0Z3AwBdGV4tll0pWhF2OtZS69DBiD
	 v1J3GjwZTt7s/X406heXndY4WOzpe3YfDfQRuv3o99YKbWbxuR8qn+yBDX1/mWrwFd
	 3not+JvGvsmgA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93C89C3DA63
	for <ddprobe@lists.linux.dev>; Fri, 26 Jul 2024 04:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172196735359.21489.18212643998561535280.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d59eb701f9477ac3d8600d345547c1f67369edce6aa3bd6e6c6d26ce1d080266
Date: Fri, 26 Jul 2024 04:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1721967353
