Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 451C7402BAB
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:10:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789567834; cv=none; b=J66fw62pxHxOLcZSHPLAPT+507uNah6Btd27b2ByCEtaJLBdBaNgXU8PERujoKNMhb3e93rKp7Zo9oD91GpLjH79NDBpr4yyW693xxqnhazZPp6qWh5Bv5UDJLdPqJjNOUc3r76p8K+1LH49BO1x2MSXxlaBegMA+DL2f+EUzfk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789567834; c=relaxed/simple;
	bh=WfcKXVY8vVJ1AG4LvN7aBaa4YGcksdq/aeHDfgDQCpY=;
	h=To:Subject:From:Message-Id:Date; b=IW9x14JTbeeHe9plLvOb7016c4WeUjZdJIqsXzOZiWfj1YeEM+0IwbVNCYlgdLpXfLO96A8PRk4q8o+xy51iTganUEIVA3TR+KmnJa7DSeqlUahNyJrYAuyKcnh268BGuLuKTrObMxMvMOtfp/UcMoozlZRVlU68kfzDWnq7wBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=E/kkRe2K; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="E/kkRe2K"
Received: by smtp.kernel.org (Postfix) with ESMTPS id D106BC2BCB9
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:10:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789567833;
	bh=WfcKXVY8vVJ1AG4LvN7aBaa4YGcksdq/aeHDfgDQCpY=;
	h=To:Subject:From:Date:From;
	b=E/kkRe2K2gARLX8V23Tp098845glStgZLVkLcbOWLH6PSw5sr08w11OoCVEbhgbc5
	 k+dcxNSf/7QDotqw48rIHpgXQ9cjVHd0kNG4DQdxyKtwVLvFy3M7Fqm/4bDWX63teA
	 fAW+fSUtqG9t0RjUqb9KtYZfO/jmhtk3nk8839TXLsVHKr6Y5PTKDCU33uOOynz9dk
	 yxORXDBRg6bTQZmrAWjdwlltpq4MXrrY/2glxp7gBpXGqpwZuj8XfQNM/q+ltwv80I
	 XY0ZKRRWVR6G/TH+GZ1nuJwh4rW+lP1R/mup8J0yjDHolf9Wjfx1XnqIe/7KXNMHYl
	 xaGWo/H5IvNQw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AE736C88E5C
	for <ddprobe@lists.linux.dev>; Wed, 16 Sep 2026 14:10:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178956783370.14192.15557257433839162390.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 5c4f383454af82a682bc1af8deed3e8780396207a7139691528e0fdd3bb488e0
Date: Wed, 16 Sep 2026 14:10:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789567833
