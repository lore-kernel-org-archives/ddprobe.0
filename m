Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 13FC21642B
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 10:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727864154; cv=none; b=Xu44uR31dlrd1N6rnTHUkail7nXcbcPaRUy5m3E4gFlyvsoxC+jxtmi7qMtUMdlO10tgtqx0M6Orx/enq4/mEw6OQb5YJVjf1s2thW1/jv0o/Mq3Wkr91aOmXhyfhAqhtO10xqkV+26EeZFCxrIZ0rsuob9j2Bx75uxOzueix+A=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727864154; c=relaxed/simple;
	bh=tgG+u/vdLYwqC1WyZSAAsOjhYorvNJ1GxiIHLMkrPns=;
	h=To:Subject:From:Message-Id:Date; b=b8gJSq19rheyt28lcs52jAFnuvyzC7hoCNsjKQmASjwIqn8hYXG348quHR8mhn4SryyOoLsYurg0vhpN59M73jlakrIjHPk3mXSp9ElwKUaEnIYNK+xw7WkXzPpmX/j/W+L/um3aHC96A/NNHz8ncPvuH4rxZ+YPne3hv9mqMPg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=IhkyVQm3; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="IhkyVQm3"
Received: by smtp.kernel.org (Postfix) with ESMTPS id 9E10AC4CECD
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 10:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727864153;
	bh=tgG+u/vdLYwqC1WyZSAAsOjhYorvNJ1GxiIHLMkrPns=;
	h=To:Subject:From:Date:From;
	b=IhkyVQm33wueT/6Z06BPedEUv7uU73UJtjMs4aeYa3R+joIJTtFZrBNUqFwbivYz5
	 jQTkq2S0xY2n35IH+s3kS9ACyDZ70HY56iOI+BTiCYwqL1l1uRj1wN0wr2RHW0bQ9V
	 yXeIJFKiGPxZVtbxJjVtnoq3AWkPqi5znpPQ/WR74azQB4qCvFAgCEGBBpmxqEVlHO
	 acpnnKHZWUopNdbag19HV0StfF5ATak2fENEGbJho0VLb4xBlLQRva/ZvqC+rDCGzN
	 p1RWBnQlQQVv8+jPXbDgSxEtZ8nT8LbwbNJlG9RL+pBSvAZHFZgLVIDdxX0GajfFGt
	 w04NYFrkHNWLg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8F765CF31AF
	for <ddprobe@lists.linux.dev>; Wed,  2 Oct 2024 10:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172786415357.27849.13819688948029674642.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4a9ac831ce78c245b445db82f473ff768cd9619e1e133fd7e5268d5b7edb76f3
Date: Wed, 02 Oct 2024 10:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727864153
