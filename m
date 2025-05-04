Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 385AB15575C
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1746385794; cv=none; b=WLU/AnAgbDZsVFaRhxfZc0oKvBFmpD/mfrlve6+iNJq2ZEQZdZlzk9Zv50/kTZyFLn/RACcVDpSkbOxyyAP80/ZajZ4XSCJwcsKrGT7FG8Gs/qOytYm8RrUhsmg7vDqdRmzet+o51uLAbIKS8OjshnXzzNTu0ljzQzBNELNpR9w=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1746385794; c=relaxed/simple;
	bh=A+eRaaQFmoyL+Urliy74UyBXwWmLkvGjqOCJFjmwSCg=;
	h=To:Subject:From:Message-Id:Date; b=s+xeWSJxu+XM3nibEyLh8yl0nIq84DEp4VxQg/1A9kWJct/zqdBQYwj/MwgRIT6mwLHv7Q/cpRJYdCx5mjWauU2IV3VwstoLkuO2oc78d2YDsF+K/xZAxPHiEzBI2fci/6Jo5BjzNrVTeNrjBFWZqjzqgr9zg23SsIcex5907Hg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=sajIWatI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="sajIWatI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6451C4CEE7
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1746385793;
	bh=A+eRaaQFmoyL+Urliy74UyBXwWmLkvGjqOCJFjmwSCg=;
	h=To:Subject:From:Date:From;
	b=sajIWatI62lIieD3+LvUB7x8KA3fm9amsBIAdeMjuXiNTPXAD820kopKIquro8UfQ
	 wcM9d1qrQEXipO6i1CBwpOEARZ974nm3tIK0m0SLjVzZ/yBCYE2py3Lo4IBDD1NX4C
	 d757HJCFf0Sa3Rl5fibn2Jg0PCWssi3IF4XJUcY3XHh5f5hX5Z/eO/oETUeWPeH6bn
	 koS2isw9kNWu7I/su2ZGY07ImzqXt2huANNN83707IB6qH+9DKPIzTtiT4QP0woqPT
	 nafE7jfluct3bJNWPOVY62x6/vkFYx5Dw1oDA2n32wrhq5pVWUncRQv9u+3QM3gq54
	 lt9d4pjqLXXRA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 947A7C369DC
	for <ddprobe@lists.linux.dev>; Sun,  4 May 2025 19:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174638579357.29628.17023464852486875117.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0c698839e90032bee87db8c1c265dc02f93af560282b42387235e310279d73b5
Date: Sun, 04 May 2025 19:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1746385793
