Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3BC212E7F3A
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:48:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1782640114; cv=none; b=ATVvAVH+WmvFTdHDtOhPAkumUBapjVLH6a7NBAa216WxhBY7rBkV/bcegrC2DnusIc1fJU+9NjbawnuHrd3uQcEhrOJWnXJTjEmpqQKor+8v15lnLj+ASpzlfr/guZluc/yiNVEUpjr47Fyi5z6c+10lzY9s3N+TftKV3GXarnA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1782640114; c=relaxed/simple;
	bh=2SVRVU3C/8nAp5ZgWkZIte9jFgZCOrjFOfmHm18xSkI=;
	h=To:Subject:From:Message-Id:Date; b=QbQGQddADEhADmztasiXtMMwFDiQbDVsCcl1SwL2xsmVlSn/JgFPrFlyQyZPuuJIzOYiMGTgsFB1M+xlCC1r6pSXtTu6jH3iumXLhiC6+8hrx1zozM5uC2/SYPxEYN0JiTaShBPGAiGfYiLgZc9SxzHckFxFMqzoB/fIYxyf/LQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ExZLZpgI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ExZLZpgI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C7B82C2BCB4
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:48:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1782640113;
	bh=2SVRVU3C/8nAp5ZgWkZIte9jFgZCOrjFOfmHm18xSkI=;
	h=To:Subject:From:Date:From;
	b=ExZLZpgIGOvYK9BFBlEbKqWy5EuocyskaesHzoK4WLSJjWj97D9ZNGus+6Df+9q88
	 pcAsyeIgP32IshBIQkwWQUhxgk2nOw5d+WL0Ot2SJCUIVU4oE42v/hlWwn26GiSoBB
	 qsFHlmZ1myp2VfGO2tzwFIcawEHs7JR+fsu6n4Z+QcZWHcepfi+n9210paCfZuf/kR
	 JlJSVjmC165ZLx8RXynvVmNUxYuy97ocMGEZqHm7653IOatzPgeOGbguKj70bU0Ik8
	 2X2TCmuPPylzUMo0r87o3PrWCdsoFY8d/fdzezaWL5JrSn44EmDh7PUrtaFLNjrRA1
	 kdC/5PU0aL53g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC021C43458
	for <ddprobe@lists.linux.dev>; Sun, 28 Jun 2026 09:48:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178264011369.24324.2103890613940212525.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: e43e6723bb0e723d86d82a4e807039246e3a68e0c76c35c6233357affe36c452
Date: Sun, 28 Jun 2026 09:48:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1782640113
