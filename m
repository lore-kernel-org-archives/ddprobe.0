Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 184DB265CB2
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753382394; cv=none; b=pExLvQNgxRbtXB5oHfvPM41tUD7QYZbyxcFEbXqcZMyAGiG8hSXf7qnRkuhBJeirONp03dJyQUnDjdTnsKGXS+KoGDb49hs9LRGG1iQMDogTbpazFlJJ+cjIYgmpgvmIiIqJ1/Jqr04akBXD61rlJ/Oz0DcWf7F204kHTKqzwWI=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753382394; c=relaxed/simple;
	bh=g6DuA0No0C49uD2hci8S7VL2Yo9Ls8ArKl1p3zSoPs8=;
	h=To:Subject:From:Message-Id:Date; b=LRc0b6oxU2gyW13hjdHZ3ezwR5x4vbQ7UNY6QBwyIl+d75aHtZQ9ftvmRXbwq3WxdMYQLHkTekqcarRKXJWj8qof06jrn0fPi09vhkzOhtsOHBh7RsQR32vxtpz+W9a7hwxa8zRYcD9uy+soxJu6vJOsgXbP/JAckvksXkQ3j7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Frn8mYgk; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Frn8mYgk"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A1A7EC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753382393;
	bh=g6DuA0No0C49uD2hci8S7VL2Yo9Ls8ArKl1p3zSoPs8=;
	h=To:Subject:From:Date:From;
	b=Frn8mYgkyVlcSnt2DbQ9HwqEW0644X9FE+Z1wDgliTx+JRS/drVl/YZVAPKyaSlO4
	 NLUNQDEkaHbxyGobLzkHGWIkMr+9GeHyYP9p2OTvEhQNcE0fPpPAXF/FfisRjBmiAQ
	 vvigjiwa13MMvIgpE8tMBY+qoQR9FOlWhCX06h7BgJ+oYaY7WuE7uY0PNwP8f+BsQU
	 1Dqz11FeABdl/jZrt9/Kxq39KoM48pNmiu42vPmg1AKXJA02x79Ew73avr1WsrkRB8
	 rq3d/sQSO2KFYCxW6n0lZHNkHavVau/c7hE9NVPIwypGCtbbyUCtz0lcr4Xx4F3Hj/
	 XrSmeHHtrTijA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 923E4C87FC5
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 18:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175338239358.10041.16029933182803813080.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 18e32941f42c7359f7bf9731cc228e7f84e5beb63ff2c929971387c77691dd9e
Date: Thu, 24 Jul 2025 18:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753382393
