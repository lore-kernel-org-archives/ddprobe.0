Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 609CFB67D
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:12:23 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1718997143; cv=none; b=Lon3mT/sVaqz3gHuNY1eiyZLKnANZ0zCa/SHaE0hLyEbAIw4iZWpKrhG1AwbjbwTTDSvn2yVJRJmtqwla2hcdQ+AQxh9+/2U0QfUPYT9GkYgCzuaw9mFvMgIB2h4nzyRfXq/F6tgN+yJByW8l1dxEdbg3paXM6zgPeNmsdcgvko=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1718997143; c=relaxed/simple;
	bh=upTFyCVuBlj+FIm9GBW9Vc1lH8VeKG9CPI/n0Poji1k=;
	h=To:Subject:From:Message-Id:Date; b=JY9LqGWxZ4mvOxKMHuDMLJ2ZudbAviWKcihVMaICGq51EnDpeweNed/tvs+0wxaIukFdGJVdmNJOgYHu0mUyvv0SCQ7CXOsfeaxp8kPW6d3wUsssvK9UvN1acshWOJIQPDKFRk+ObgVuuQJwlUkwTUfyuXHdKj+3DMbBL6gqRQc=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kZZNc5NU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kZZNc5NU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D2149C2BBFC
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:12:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1718997142;
	bh=upTFyCVuBlj+FIm9GBW9Vc1lH8VeKG9CPI/n0Poji1k=;
	h=To:Subject:From:Date:From;
	b=kZZNc5NUrSmO37/UN5jiYV4qd1Ueha0iu4EDdO/B8ZVuwCckQGqCr3ju5vH8llSOt
	 gCNqSybZ3LUWv3+2A+aYZsLuChCLDZbnp9H7ksFstbofYlNFL6gcEF0kvVhNI8XONX
	 aXlSknFLCk4cGagP5jqBk2o4QI3fIDxCztGykJPICkxBre22txtQ5bC4oSHvGW3bBr
	 M3bSqAVf3nONssG68lM8vkcROjLNhtK1A56eHBjXIM0YqZj4EW8Stv4SafCFDID7zE
	 HdWNCceYqsDeE1eZ5clirUAaqX6w+a3pZw3GQl0FBtW0FrdxtQ0jbtblmIPLXZpYyd
	 Rmps14rVCHztA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BF471C27C4F
	for <ddprobe@lists.linux.dev>; Fri, 21 Jun 2024 19:12:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171899714277.12654.10251745504157254830.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0fe2a97a0a177d4e91288c917970337f5bfb1c2d3a47ccd71d801580db6930b1
Date: Fri, 21 Jun 2024 19:12:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1718997142
