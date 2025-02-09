Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 4EA9E1D934D
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 17:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1739123754; cv=none; b=jKfhm0l/fW1t+u3E4cx+bL4YjymIIs+UEU52TZkjx92rFjj4q2HquJBnzmDmvLjkqqGypEMfOYtUMG1TdaXlUEa6FSoXj16W4WSNXkQrTtC4TOuIMLvf4Ll+iUyIbkda4fkwurVmTStt7FtiUO8tojQYn7LxaCeeM10RnTflLPg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1739123754; c=relaxed/simple;
	bh=XPE0yFCjb9h4xCniwQYg+XzHvTLFPzMLtfM2+CxVIvE=;
	h=To:Subject:From:Message-Id:Date; b=jUdcisjeQBPeY/dlyrcTNSuOTgyAvu2FJw0yI1nt1bqlg2o14soHb8tbewmChF+LEfsIXuI4a7L0tEzEinW5rHuu3bsgYpTPUjK7Lkz+c0nplKwbR96YAEK3VOpqxmV0wIOv+uW3rj1xDJ9Pzl3TfL2jfK6eUUGlquPxXBkkIMg=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ft32lavL; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ft32lavL"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C33CFC4CEDD
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 17:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1739123753;
	bh=XPE0yFCjb9h4xCniwQYg+XzHvTLFPzMLtfM2+CxVIvE=;
	h=To:Subject:From:Date:From;
	b=ft32lavLCFfIS0Sp92Zw936bkAIAAP8BbfAOxmRNKFvHipVQGlbEkBYvyUfkizs29
	 z9g2Bgo0+lg/cQD5FBOHO3veHHtyrr8ftHJKJgSQ50tf8R5m9mz1ObLX1tliVp4GPl
	 8hTi+kF8CTjgKevH2S+7eDlSumzJzqq84fr+ibcw6zoQ4kJ20jRsr7hjq46L1XB+wx
	 puZ0EsEOIoSWiXPAlQEH8K95TWcgkdeMgFRR7VNH1GUEd+nXaZVwMkliDfIuvCxVHO
	 D8y4q9Cc1nQMKs0w1M82OZegdNeP9uWxlBndDR1hrC8dW8E3XcvUOmBBRvL0WW/lOP
	 gZ7eh1rGj4t9w==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AD297C0219B
	for <ddprobe@lists.linux.dev>; Sun,  9 Feb 2025 17:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173912375367.26642.9831677941124855340.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f40a7bdc77ba5c914debc870d5b59c9ade071bb063e394bbb34e8199eed6a71f
Date: Sun, 09 Feb 2025 17:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1739123753
