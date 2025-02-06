Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 49F0D1F4184
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 16:15:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1738858554; cv=none; b=UAscTg+cJ4AcyXTQCzNZ5eozYUGMzJNah3tXxOgvDPpdrzQ91+Q+7+1GgTAdZh62GydpttMDN2LWAvB7Iap9nZn+JI8YgWl6hXCY+shDFGvfDMscKP+lmueASfvWPrXPDlaJQj61fMMNpUGxYzunb/Y9t3wDy+lTVFtAkbLLCwA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1738858554; c=relaxed/simple;
	bh=DgJvcKilSCpe+J2iUQM7eBGQXlLBLezYi3chSkZph6I=;
	h=To:Subject:From:Message-Id:Date; b=Exxn+pDBYuY1TKGx1iJ7O0kJ/yWh0LJOsqSYCgRCGhMnhrdIiedwVaFUocm4+IehHzkiIdUx/zeaSeg86pBsNAwa09UTFQHBbKlt2uYvQbd3iXav25ktlHD3C7aTvyFlDXShkxnQ+WgDjhuYYOlAqOdyO22BrKjRYKnKQe/yFzk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Dd+8vcmG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Dd+8vcmG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B1E86C4CEDD
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 16:15:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1738858553;
	bh=DgJvcKilSCpe+J2iUQM7eBGQXlLBLezYi3chSkZph6I=;
	h=To:Subject:From:Date:From;
	b=Dd+8vcmGyMNi8FuyFXtk7PE72jSrjaJyMqO1y/uugVhphmHGFcQ5+f9msljHvF1N0
	 2Gu0oA28X3mRILPn27sBm+7Y9iYuBASK9Ox4Bibvsyx0KST+EBpAeVier+Zbv97jL1
	 zqwmXevN7Jz/8Rs4FA7h/8HJV35K4fGG5nN+cJQZ8F4OJpiQmWr2OTQh9MtVY/hVRE
	 8qMrtXDxMEticGrjBVPGEAG8qPkhK5gA+xBNgJtEqdbDjvGk07IFtClhzfFKbtwjJw
	 CR85m+vQc3Xt2wBIS3BYRzG9x1+lp2aZfdcY/ndz9mbxX0QyUma/6fvv9BIC+IDRJX
	 6dtB7cxeFQ6iA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 98418C02194
	for <ddprobe@lists.linux.dev>; Thu,  6 Feb 2025 16:15:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173885855361.8272.1128169249801599414.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a8490c66b7ec81ce85766bc9315ca6b6d0dd5025eeadf003062d4cdc073158f
Date: Thu, 06 Feb 2025 16:15:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1738858553
