Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1A84C40855
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:37:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1775770654; cv=none; b=WMKZTzPo+RKgAgnwIeAqeAjlFXE1Sm06QCQrMBF0TW9JRdtdxywy+OWOhEnkorEvWpsl/VbIP2RPnHLVD0z6hrYo4aQkYSeUnRwsOZCGlViAJN3kjlAyd7YPp/FFRjSox7uNoEORgAidVT8l+9ibf7ylsgqwIpZ3VuqeHPizbrM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1775770654; c=relaxed/simple;
	bh=D9/seo4ISEJ5TA/QeTSuTLeN5IQItkR4l1iOF8mHJBw=;
	h=To:Subject:From:Message-Id:Date; b=WjXtxkcmqdbr6KJ3a/S5lX0DJ+4uySjjizMvjXvg30daKW4Rmv4bcSy/djEyQWYAs/V4LbcWtq2gWeVCsIeSBy/7gD2o+VDsEDz8yN4ejIUp8cfvpxG9+whS4MU7gMum/LjxIZTtipaIOFpTwpK8oQTtmTMUzQgJOFaOU5ty2ZQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Wq311vYV; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Wq311vYV"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2D13C4CEF7
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:37:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1775770653;
	bh=D9/seo4ISEJ5TA/QeTSuTLeN5IQItkR4l1iOF8mHJBw=;
	h=To:Subject:From:Date:From;
	b=Wq311vYVa4Q7uwctuyRqfoW7ppeLZdyXRZSDaS9MvI6boGfZcb5fve5eJyaGbwBK4
	 BUKwnyVyBOm9E7ijlYwN0eXhYbYGI/eU/zGvH/BGcpT9tQ59O4xkK9YeaH3i3LMclk
	 f5mYgR7+ZmavvqR1fLyqp3Kwvzbaij2E7nKLY6ZtAJk3DMR/sA7DUmEBONEYVsL9SN
	 bOefzJplDQlqImfLFdeMzcSADHkyFOs7XMaMscnDXjNR/JRmK/5zFurjx4+ki99/eE
	 b4AXhbGJGO2EHjZi8NquC7CXyL7aPoTGMYZ3PYYyROBvrXXZnt9SrGBAYIFjjDZqKc
	 RzuPTz3pTul1g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AED2DF364C0
	for <ddprobe@lists.linux.dev>; Thu,  9 Apr 2026 21:37:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177577065370.6304.15027260281924638699.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 88d508f1868cabfb974275a5542a1f21a7fc46e9c9ef7b9d8aa22c1886586868
Date: Thu, 09 Apr 2026 21:37:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1775770653
