Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 382C5156661
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753321194; cv=none; b=CSkrgVInZEi+uxKb1XK28y9eCv/jk2gYU1GJd+uM1rpFa9RzDJBTPyMjpV5p/b+1jyuKCFPkS/RiSXTS0MzgyQaLluoQSUPlbjJmzebt4a4CWqnYPkKEP/E0rzH19HPsse51qVHupwErrXvBdcdy0WlYPdkf8s0hDXf6+9mVaco=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753321194; c=relaxed/simple;
	bh=vqacY2rshN6isHcLwMjqQJAmGg4WQtjHQ8jzfcmQh7U=;
	h=To:Subject:From:Message-Id:Date; b=Otu8fVHmZvZs/gDZaQOYPS8r/AkRkmDbmYKB3mugshTFBON2ygM6GTypiYn5wJb5O9mnINVvgq67fMcfSIQelOtFKk74SqMG+0fQSUzQYm16XZlGOORCic86QkEt6mMojdsiegmLMAJLsy/+1UoaUOOmKf/KjrEkMzQuiGcb3hU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAotE4aG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAotE4aG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A48B9C4CEE7
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753321193;
	bh=vqacY2rshN6isHcLwMjqQJAmGg4WQtjHQ8jzfcmQh7U=;
	h=To:Subject:From:Date:From;
	b=UAotE4aG4uqNMSrMwnxz+NObS1ZoeBY/mEsVoYcJl8/rJL61WN484E21hgi8a9ATT
	 UJusF/FJtrwRtiJ3ef0paYb9X8PlClb3MDylmdgJKe2pHMU/+gAjPNzvy/5BjYn/7u
	 lQv2aK75NIJpvIBL1Wfti0CK1gpmZA227Wjta+ylBvRutNzxfHdGp5vWT3QNiZpUCS
	 isd7fDfFJs4seH7c2tHm3AVXa/qZ9TEGcvZ/r9klfnXQyVg9xnkpDohxv5G44yaujd
	 SYOVPr7u5plL2xxohqoBD95l7AZcONcpcyOm29ml+9lbmGwuyBhSDYRR/1W3HD/t9G
	 ZP+esF0r/d14A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 93157C83F17
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 01:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175332119358.19441.2994922845480262488.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: c1a8d3458b995bb28094229dbd514e357d1510612170cd142e8fc1c6957a9845
Date: Thu, 24 Jul 2025 01:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753321193
