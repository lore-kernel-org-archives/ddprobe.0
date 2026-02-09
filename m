Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1B64438759B
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:33:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1770665634; cv=none; b=WZvzqB9xY+jv6v3gnxsloJThMVyKX8HQ24M1j61S5oJfsrlUmK8SppTrFml5V1j1yyA8GS0OL2o+7JsFbiyeHf75UqRsqa+OZ2z23BfL8we/Gr61LOlcEAsRPQO494oYYR4nLOOSS25OjBaA6rsgqyBHMlb1Gyz7/AIE4lvAfWA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1770665634; c=relaxed/simple;
	bh=/qCVxY5IKrbIa3hnFTC4tPSpWVZuQy2smak6vPsg2qA=;
	h=To:Subject:From:Message-Id:Date; b=jXSW2RfIWN3nmmSyXiWvMxxCxZ1kbH7zOayETuAJLdPNE86QzWc+Aa8NhS9VG7XQ1+MfrZH5t17sCbzpDPbA79ELWxW3yPGyUH8KRArvE1O4YILpBlTVpe5KKfAD0Qmh/UM95M+m6JbetjomA3LGS3nssrH1AK1bW3p4BHQ1ebM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UcS2J+CB; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UcS2J+CB"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B8500C116C6
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:33:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1770665633;
	bh=/qCVxY5IKrbIa3hnFTC4tPSpWVZuQy2smak6vPsg2qA=;
	h=To:Subject:From:Date:From;
	b=UcS2J+CB172r5WCHC15t32OIMNSHZcKf98ebrRkWe/9eg3dGnJdyLqpQuD+dWN/Sw
	 6uSNHcx/X7qBKAGIeSX8r6iWZ+PQ8DUC7x49LhDCR9Vqz1ZcvejaWOmQLZzhHARVTH
	 QZnfin009EtobvBGPWQhuWV3qqSJoPGJiRowxIiae/iY9nzT9osM70fy5SzeeS1Rwg
	 WrDIg6/7FELdV9cvDOwI0kZWwfVtlFAgQC9gJKCNKZ6mcR48jtXNf3xDMn+IZb0kez
	 mc60O2DuZRe7GlV3ZSxWX0JyuHRo1GdP2ntCjIkcjecucw6z8eEB+F0pP5T5nJ5ii5
	 i83HTEu2RuKGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A4D8CE7E0DA
	for <ddprobe@lists.linux.dev>; Mon,  9 Feb 2026 19:33:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177066563366.11250.2356854530530248698.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: f79776ab94684535d3f37382f68488c248dfbcc7d51b545142a7138fa287a003
Date: Mon, 09 Feb 2026 19:33:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1770665633
