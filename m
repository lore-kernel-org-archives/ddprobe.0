Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3758B72610
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:53:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766685234; cv=none; b=BIatHggBwPiiPzv0t9af+7CgttOvAdpNG1XKJoFf55jElOHr9WlwNFRCiMfcp2YU9EgjpKawYJe/nBotGLEPrmhfMLi6fSEtP9LaHWmJW9n11QsWq4m1ELNcGQ6w8nP3hve0EPjBVQcJg+j09uPUL7i8Ke4TO6uyXeYwlgOoZ94=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766685234; c=relaxed/simple;
	bh=udVYlc+fgZehYLkklRPD6aQI9h3cN3+2Y7P+NKFHI44=;
	h=To:Subject:From:Message-Id:Date; b=VkT4Mhy3PilvuflIidNO4iFiDD8IPKcAD7ld3zWkS1PTv5r/tEczJBjPPqPkZSrQdk7oVYBm7dCCCRjB2JWIjiT8d42gnwd4jJoEayND2qjR1eXGGZAWfrLT5sUwjk+94ThbfVkCiKh8jW08O0gWRlbIZpfmeNYa7qXuwnqD1QU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QCeZbUw+; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QCeZbUw+"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B336FC4CEF1
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:53:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766685233;
	bh=udVYlc+fgZehYLkklRPD6aQI9h3cN3+2Y7P+NKFHI44=;
	h=To:Subject:From:Date:From;
	b=QCeZbUw+0Z63vWJgC3BhUqUTDBj4iTNDOA2PeVej1m9ryKUf9y6YhRLF8PyraIZm5
	 quFXxTa1gBIkiBE9XQp/+oV82oFMwlREd8pzXNjaVZCUtfbCS4xpR3glwlnasTZ18S
	 RxXmMc9gyyoLwDd6Z8YGr1c3LQI30xCHO4qCtks3+6qmjtEkSRG4R0Nly+v8q5dD4Q
	 GzmoakP5Af16xx7Od0CzuOb+4DGfc4o+uDwJC1feEYPXzgJ3OXl/AG5gAm9c1FEPsP
	 R8hP80jMOIbI5HpqypfHtKGkgMjvZ98f/79IRvnGjnRBD8BMSNd5YFC0HMCA7Wt76u
	 05126y3HRIreQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9F7D1E7AD62
	for <ddprobe@lists.linux.dev>; Thu, 25 Dec 2025 17:53:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176668523360.29533.10486064494214584653.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ebb52aa9203d86ba12ec3c3cf06eacc01a731d2415b49adda9bf5ab7876cbeef
Date: Thu, 25 Dec 2025 17:53:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766685233
