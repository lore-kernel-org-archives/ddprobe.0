Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1F44B328621
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1760611194; cv=none; b=PiJGXOUn8UE83jQLg7JzeeCPouda/HLfojFOPjbdvtyMJy6Y1hMZ6eRnQDy4wlzsZsHycU+X1+ZVj1SEiBaU1JWluUiOpMwJVlCFYRsvWd2Dve4RkExNig6CWTrY6zxAL4mcRulqjf94slF4tndjkBWSHIpXla4X4XjDmb/mFFg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1760611194; c=relaxed/simple;
	bh=05ghvVI0O2FljQA9GJrgtRHX3c9umX5VGqzt5eTnM5c=;
	h=To:Subject:From:Message-Id:Date; b=GDPoKJjf9AcaQlRIbKe4X4f0e/CWIospVkHPGOJW1WA/2OErprmohV/6loFcG2or1uw49yxBP960EWm89Rqi2MX9l9lp+ulatEbSX03HW5kjanqWR91VGnv5t+e8qdz6S/vlkOdKWazJpiCHgrrhykHWVLmAB3WahYZB1+0qUJs=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=k9P5VZmq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="k9P5VZmq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9FFCEC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1760611193;
	bh=05ghvVI0O2FljQA9GJrgtRHX3c9umX5VGqzt5eTnM5c=;
	h=To:Subject:From:Date:From;
	b=k9P5VZmqA7MZwP1GzbSPhl5q2ph4opZ2NUHjAulFwh1ZIaC6a620r2zWHeZqF3znI
	 0e6g0y3QIqA8jfqPOUk7o607ZCVH+j4ve/pKk2Unq+WxJaHJ9wlDWW4TGkEqwyDOOP
	 UlVxB7EbTEm/3hRUJ5lJKgCyGVpimVMP+G4qGk6pdsUj+jgFa8EsZmmapndfdhoaKK
	 ZWROKn0yJjC/D9WTuxhazCcl3rlV7Oy8X5xKX1LuGQsaVVVkxnlVLMyqA0KKyfdKwv
	 j4VoC9v4I7GlAh+9y6IJ7LrhB7uJZvAexjHfNu0LGbfC2OIEsEydaFBqshXkwETDl8
	 cpPihaFxC9YGg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90634CCD194
	for <ddprobe@lists.linux.dev>; Thu, 16 Oct 2025 10:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176061119358.14453.1126931731457499644.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0e5cb86c57d8919b357f6e2e9997fff904f63999da50c4c54fd1d6127d436b8d
Date: Thu, 16 Oct 2025 10:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1760611193
