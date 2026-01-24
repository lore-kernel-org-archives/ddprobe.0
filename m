Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1E01A22A80D
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1769269434; cv=none; b=o6ZUv2oxxJfPsfJWfqpeW4y2H9+avRy60mXn2CPtTkXHqkSCVsXeqnbVSvALElzNyEkdaN9TWyPDY+aNQ68fr3+YH50EXPZhu1rYRMMCrDxhPa9tqa1kxtohJSnbxzKUhIDgd7BxGWKrLxIahLpVCMunIDvUFiqBgqKrLKbqnPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1769269434; c=relaxed/simple;
	bh=Nygx8oEsRNvJ0niRlrWSEysQLhguUd4IVha/tE3RuPM=;
	h=To:Subject:From:Message-Id:Date; b=gC6ZGd9rkJnK1Uzv+0CcLL9fIh9/6cthGjjCb3Xn3ZYG5bA8hZNkZbfEN8jEiMt8AD9+gsF/idavRWQuYJIW3SUkYtr9XFgNx54BT6hGgvUNTkWrOmAAoUI8pJPbhUWni+GzbiVEf9z3gzVEkUGVNtF68K5ESdLR57c7sdVWNbA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=aZk11Sba; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="aZk11Sba"
Received: by smtp.kernel.org (Postfix) with ESMTPS id AB914C116D0
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1769269433;
	bh=Nygx8oEsRNvJ0niRlrWSEysQLhguUd4IVha/tE3RuPM=;
	h=To:Subject:From:Date:From;
	b=aZk11SbaqZHxaRgI2W8/A/dUKIiUSQQyN7jcWfTp/2XZeF0Py3P6ruOUSp+YgN6LN
	 RhlakVeLgUpwV6Ktkgaw+4rVnJreeSlS1gPJESyLJyjDViVL5FWOa4jLDhbUxNlFAM
	 Q3J4xdF6BfhItJaO/wqUoPC6Ds7RagYLST0eZr2+KR+RRZaFuPvTG89SdaK+jZYsz+
	 N+gKpkYE/hpNHCZFw8QE4TMU1i8ekG55zRBbj1z2Pt5G6ha9ETexblDDreg4EY4Cjf
	 g7epof7ZgGUpxNQgyqXcbODi842Ti7P3Haia4iW2ayHIc2cOTgWgXY2ZLRUbJo2/NC
	 hYo7gHJs0iREg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 97849D715EE
	for <ddprobe@lists.linux.dev>; Sat, 24 Jan 2026 15:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176926943358.629.4190090262801476043.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a06228abb4d6c99081c22d3bf667a5a360525e59ddd476ba2cb89c51a0f6003f
Date: Sat, 24 Jan 2026 15:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1769269433
