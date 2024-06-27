Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 56F03DDA6
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:44:22 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1719499463; cv=none; b=i1+0mHAD1bPeNiV5sy/4sf4HG1teWGbPyV4e/aDIeXL/UgVcpDfoEyoZ27qskIWvYnlVJa9BPa7fOvTt/Xi8oI68m+pd/ZYYEJRZFNLdZWWe8dFH5uqWPlWQwGo1ubRZHDqQ+AZlyY49xcxR20x1DJAhKZEZQ/W6t8xWSIwkK3M=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1719499463; c=relaxed/simple;
	bh=yqgEzdcKJxMVhjohyc6SfOLcUcTNmFFimHJTHrD9KP0=;
	h=To:Subject:From:Message-Id:Date; b=UPRLsd+A0DelTwIzupyEw9ZgvjwE2JMvxnJlvh7HvbZUN6CzeitmkfA/b86s/QnbNI7QzfppOfe1xHJ0npS3i2xrl+L1PFGVZlbYkJbJzjfVal9IQ2zbpx5dJUf9Gfe+3ScLiQul1Or/4FhTB5WYiA0gSnxmxdtOO93iv6q4PGs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=KS1Y/cp3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="KS1Y/cp3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D003FC2BBFC
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:44:22 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1719499462;
	bh=yqgEzdcKJxMVhjohyc6SfOLcUcTNmFFimHJTHrD9KP0=;
	h=To:Subject:From:Date:From;
	b=KS1Y/cp3QP6bmez541HR5HVVcvYW2GNQH4QFKdK1h4pIqH1f1J919I7uZw1zM1Vjd
	 p0LMnMle/6ctmx7ztwAdOy1QzZBNjtKBp3M6NxojAfouEOlpr+fpyyR/sRzjb52pFJ
	 JbDn3IBK0jSsAoBSTJFUXCI3AERvGITjLpuckwVMT1JRdm0jT2BcHSEu+kPBvgGOX8
	 MtrqHuxfpNoZBJs6UAKJCdub9xqJdwPKccODQRgQeqEmRUspoxnLLwkrAcFlJVEhOb
	 K9mZtX5DBG8cdSsJchSZ9DNjOQnyoGONj1sh1dYRveMPUZduva4VPIEX3GoG7BEb1W
	 0p7m0nYvb/Cfg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BEF1BC2BD09
	for <ddprobe@lists.linux.dev>; Thu, 27 Jun 2024 14:44:22 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <171949946277.4828.13323236659490152703.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: d08fb77a807b0971a45fe0c7003cfc8eafc039bfd7fd67e529871178891ab59e
Date: Thu, 27 Jun 2024 14:44:22 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1719499462
