Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 226F4287249
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1752848394; cv=none; b=EtIBRkZ2D+BD55P+iwXUJ6dGDWWohhKOQzltPyLL/4stAvapfPRg6y6H+fIUbs7MuMz0KmYzMVZXpbCvkjbBOhqCRM99GT+ArmA4vHJu+GuraydWU/Jh+xHAdWd5BGBSWkJ9+X+pXndM1saLo0redhfCrT68Irw4jtBtJHgqpIs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1752848394; c=relaxed/simple;
	bh=PUldOIKkfUmVHqtqrnh0/RW56xxSplbwIPF7laonQWo=;
	h=To:Subject:From:Message-Id:Date; b=NEnvzU4lnHfYlT3scqCk7TJCn7TuUqvSUMi1/kPyYbhzFXfsk9BMMaPfDTbRzoE89hFvR7TAy3FMWt8OXmkkULXH0DZ5iEXk96YIBta4C1TMVvq/WHcw2vUdk8RH1DK7Ok08jn81uVNrVAQb7+bEhxcGTw/7UtZzdI4G+C4QrG8=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eKdzm5q/; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eKdzm5q/"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4B41C4CEEB
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1752848393;
	bh=PUldOIKkfUmVHqtqrnh0/RW56xxSplbwIPF7laonQWo=;
	h=To:Subject:From:Date:From;
	b=eKdzm5q/SNOUR/t70gOovAQSfZ76sSUY0M4wsZKsKXiQ8XO5Uq0BubNZIG2qV7RF0
	 4tF1lEX5Ax45BTd43iPja2+I+x0MoOXv/3GCJ0IXtkqrmOgYVCFgYYTvm+oMonh3fE
	 95TBMTuEoT7nIbH5AteqoRuKUDHSnGh5oydn6cj8rnwCr00VzdVv6Z8v9N1dquYVGn
	 x0kEuGLGoAohlGlu7ksLp/pGA4TKbmXissFiHFh5R3/uV/4W1xBxDUzNl4Bf+4XTNM
	 ik5iAIIq9QnJeXQTzjVDhfViYo7M0HrYqtr61OU9I/xTRUNB9NOuw8TPDajh56P/ac
	 mEq08NjNH14jw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91965C83F17
	for <ddprobe@lists.linux.dev>; Fri, 18 Jul 2025 14:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175284839358.23541.15900906081686126245.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 203c6e424fae9092090aaab7c97b5e34cecb1b5b2e44ee904eecff2de24e5a3e
Date: Fri, 18 Jul 2025 14:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1752848393
