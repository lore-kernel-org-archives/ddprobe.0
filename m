Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 000E433E363
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:34:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1772811294; cv=none; b=Wr0KL/aPZSsLEpgeg8uxEKcX4ZBTBwElcy8bv3cLfO4fv8fs/jgMGb00TibrNNNEErUPkBWLIpXlfGodV65+MFZLVCxX/Lq7cxhWv58w5jVJYH4dHfQV8uv/xM6IobQWDINFuWSsQYsR8nQsBxIN+iByt8GEXJAU4iHkJXNaGWM=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1772811294; c=relaxed/simple;
	bh=Nx0AwJD/Yr073pZnj0+f7LXCkMxCI9nwxZPvrvBN1eI=;
	h=To:Subject:From:Message-Id:Date; b=oJBM6sNk6+cJcR+gBeNXks2rFYNmIbs5yAHweqNYQ3J+XQMXCGg31XGZ/lSVT7D/tkmWusRC/ds7wosQKskvHxWT/3pR1gpjgp859dXeXR617UxAynHujLNKxNmCqT2MnXKOt8gQjTxuI4TtCWaKvmceEaEX7GgqGY9MHm6Jw3Y=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=P+FYCNCj; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="P+FYCNCj"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E573C4CEF7
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:34:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1772811293;
	bh=Nx0AwJD/Yr073pZnj0+f7LXCkMxCI9nwxZPvrvBN1eI=;
	h=To:Subject:From:Date:From;
	b=P+FYCNCjwM20ebHfucBqZCPyC4UOqB9ltvtYlZxsXQHDtGVYZzUT0t1nWyo6AAoIT
	 xfg13X8aYhPzZNWIYvet6BYk2EZ/cmsuq2qx4oJYG23EoTAjkjsCfR+yfTZ8r29M0Y
	 RnVzRFWO1Wpnzoaaw1WymP0OQScXBQhImUrngeRIlrb3XhySBImQBoyHqMmomg4yvn
	 280Wzd2hfx29TaaxoVHge9YIjQz2uoIDjjJlHS89tXe0hdBQOU0fqKF0/wLpUkNdaQ
	 P9G6iJ8opdNa9ScyjcM6juLJ2GzzgSbsZ+s70RQaEJR8wgk6fmOK+xgjsqhzcBDZ8s
	 6qbl1ODn9iWhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F252FCB61A
	for <ddprobe@lists.linux.dev>; Fri,  6 Mar 2026 15:34:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177281129357.11783.1599538504614765251.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b480544dcb8214f56fd0ce06e6812fcfd8196b4d0d0129019a87c097cc3e5a48
Date: Fri, 06 Mar 2026 15:34:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1772811293
