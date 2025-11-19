Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13584200C2
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:21:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1763529714; cv=none; b=ePe8tm39qxna+cotyM/3tR97BGSJ/dB99eLIqR6jg0AXe12teKbyzszjGUB+BU2NP4nsoPsE5+60ST3DOI2OeQpFptrDKVFiN4UR84Duf05yxRF0C4U4ZEhIU9FrJR5X5EZyD5a4IG9NYDG0cRPibAIwH67iGfNwLInkkF6zuog=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1763529714; c=relaxed/simple;
	bh=kphSl92eAmoEBPD0msKw5zIUokLmV+wrfmrnCYfqz1I=;
	h=To:Subject:From:Message-Id:Date; b=ZLAVyhvTuqm+U6rXjscDyo4sDroENSm1Zvp07aWHq6jGWy7+y6BPkK0hy6T1ZatSXvzhacFV4QNC1r56Ey9ECHiMUoxiKZxOegQc3gk8gu7K7l87wKrLzA9Tfs2aCNfwCQ5CTbaDZsznza7VISKp3GbYVIxomo2JdavSuRHAfAU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=cnNGr8qB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="cnNGr8qB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A31D1C19421
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:21:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1763529713;
	bh=kphSl92eAmoEBPD0msKw5zIUokLmV+wrfmrnCYfqz1I=;
	h=To:Subject:From:Date:From;
	b=cnNGr8qBhoLb+YGs3jpnoqzy8/8uoOZTr9muEHPG/vYUj8vQZOhi0ah3ujyh+ILLQ
	 Cxq3fWFu/qyNDqQHym27gLWj7cdHWKdbVxjiuSYHTasIA+KD+Z2aQDh01iHzITtHIa
	 1cYeQ80H2/zEs0SpBpISkjmQoyuAvFUQ8uYvviS01mREXLj3q3/29YRqNrC7qYKt0x
	 edDEoQLHFT93QYU75mXkC42NE4EJVGd9yHD9eILN2aju1I+sYsnd97oF5MvX+Veaiz
	 7O+tH1wmIhsnt2ICAeo4noItls6oI3gWdjefWZEcqxq7mDyaaig2Douw4qPRP33OS+
	 Awjks6U8b0b6A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96E18CF256C
	for <ddprobe@lists.linux.dev>; Wed, 19 Nov 2025 05:21:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176352971359.1885.7889029101898415654.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45490a90fd85e081785c2d90c78197a79bf889ea1407e398416a63b98c15e7e3
Date: Wed, 19 Nov 2025 05:21:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1763529713
