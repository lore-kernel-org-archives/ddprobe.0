Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3FB791DA23
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:55:54 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1722099355; cv=none; b=IkuR7kGzdm+4ZUB8eGo5IjDr/5QBha6kC0Hgvc8XWmeTWQ6SH4HHsnWR9JK7FDV4Usqv/3b+sFpKbiEXp2mZHxG6jSB9VGIJsURx6Km49mVPuOg9VpAfasvI5MBOCuTsENqB4ANiA5ul4ge44M+Ad6XSMSvMA1BrfxzjoSSxZsg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1722099355; c=relaxed/simple;
	bh=4b3D/2nfxMgZL2BTQzyxZK7mFINPY0CaeskNthqD280=;
	h=To:Subject:From:Message-Id:Date; b=SFW2Yq7J8WQFJseRgGyl1lxNvAORsyJvbEfxB59Sm5RN6R/cpNEdeYc1x25LVa4vBd+pweS6QyQ9hDA4HF54lcSz8vpFIqIqz8MTPgJ6CA+xhzURnR01sGl6KImGQtKrMb9DBvsKBEPOykil2SvIQi858Va4dhPkpjoUFax0P7M=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=EnJiV6Bb; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="EnJiV6Bb"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B094BC32781
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1722099354;
	bh=4b3D/2nfxMgZL2BTQzyxZK7mFINPY0CaeskNthqD280=;
	h=To:Subject:From:Date:From;
	b=EnJiV6Bb8dkapnKLtGusKyzMV3Q1mW5YID+rbsNZ1LTx9z61mY4qqWJdfbxZx4RQA
	 IIA2V/WtfzYHscadjZKRhb2zId8/B+p+WqHQ0qgXnrZdYhYtPISKS0INXW/i7jtHjO
	 etFvh+DegKgm5R6LRtCXaC8cyVAz5IuwdWkVuLjqQtFfOweobgpZ8aGx/xa4uik4Td
	 GCUzSz2bCQkL0pvH/LRDrmUhMH6uOm7amJfJK/mtg8q+yg0jXug74m0CxvmVHi9iv8
	 TgpMn4vxRYMTkysET1Ba1LwChzsE+jTpvJUEf8ZIAKIvtm1Oty4J9xaHvGeljaPseu
	 jmMWYptCXOAQQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9936DC3DA61
	for <ddprobe@lists.linux.dev>; Sat, 27 Jul 2024 16:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172209935360.19260.16509742847196027817.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ab12e784343db9446f546548d68f983a06fa4d7af346df31b953f0efeff6453a
Date: Sat, 27 Jul 2024 16:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1722099353
