Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4BDA74E0B79
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1790070634; cv=none; b=MZ7swhsOmfqjcHu+R1iaLeO4xjuS9rqcDVAbcHsuF3ZdnaRcdzdEuN+Ci4gcPhRjqEG7NxogtGaItdiQl7HICWTas0DFtX+yFRU1vYJCw4E5SIJWfRmk1HxGBql4zHcSb+4MJKZWaVpXrx+H7knSmxgIs62xAVWCqhezVGFxkvM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1790070634; c=relaxed/simple;
	bh=Fl0W1W0tbGV1UI5iUut1ulhzSOpsKnBhs9M4Kw3x+Eo=;
	h=To:Subject:From:Message-Id:Date; b=XN1jypysAVaKpzWnkn0OMCpRJ0dSdQIFLBMsuSYYBN2AdK5esBSckLqlm4sAJp6u+y2I1zqtEjxGuMzbBRnmYlIppk6ZjyqZe/ZCR6nPYqX9uDY8CJqxIaFL++tmFvye4KjZfaBbvTkS/11UV6P6HBh2qzNDvGYQr9Ptii18W1g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=uADp9JYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="uADp9JYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D7899C2BCB8
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1790070633;
	bh=Fl0W1W0tbGV1UI5iUut1ulhzSOpsKnBhs9M4Kw3x+Eo=;
	h=To:Subject:From:Date:From;
	b=uADp9JYVembLGAlktW/WdjCqTe+Vk/o0w0Mj29BlqFTN6SlBNnct4n3uKdBu5C4dd
	 uU5h4ZORHE8Hk6aGHGrIK6X/iZURLicLDS1MO3VVxGtuCPSYhosbkHpJzOUIMQoowq
	 8M6o90+yj5liqecaCdPSGQ8WOsvh22qFnaotk6fkcTsf3xKIPZ3iKOf4gOtY8A0ZT8
	 L9kkQdtyXIT23vrYfbyfKdSBTjSaNeqDRggRCzUInXAFFiCOA8d+WcwNz/GoIy0drL
	 1lpYQGzM0vgEn0uHvITx337ZRg5fOXpRV62XqAFQAJPZHbF7C7RB/KMWwFSB3tZDf4
	 mTLCqbFbC3oyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id ACB2CC982FA
	for <ddprobe@lists.linux.dev>; Tue, 22 Sep 2026 09:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <179007063369.18432.15697282522582577922.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3fabbdba56c8009c9bf85fa21b96fc28eadec1e0ddb86c3d4e2021876bae41f8
Date: Tue, 22 Sep 2026 09:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1790070633
