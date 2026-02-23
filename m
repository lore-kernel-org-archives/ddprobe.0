Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 10CF7371056
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:54:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771883694; cv=none; b=F3KNmBYmihvuBIZjIjvXgErXO2UsPlT1fEk3LfYZMdI2rqMzsFRAVwBSM/MckY7OloCfI1bB9FMbsnSRDwWV614wd8ZK2oo24mKwm4qYape9MoBrBqfRHeTISmI4ChPEydynj0MozrooCPCa0MzS/65ZMM/C06eqwEyj8Ue3n38=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771883694; c=relaxed/simple;
	bh=aoUCoVbn9r3CgD7wwh25Y+G4ZGN+KhR3o5jUIbl1oWM=;
	h=To:Subject:From:Message-Id:Date; b=GJ2AThauITuSfMG7Pi2vQkiwI1sRLipwZw++Tq2pBsrCa6S321jDAmEsrlO5oW9mw565xftEnnwksuH8oUT/knfSKqjGCLkp5rRBHtCcwhvq6dIuCVwi4hTkDP1359lLwjjybXQEVPzsX22sHBVAT9+S8NmIQASNGCNK2kFMy7I=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=DaIRliO1; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="DaIRliO1"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A74CFC116C6
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:54:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771883693;
	bh=aoUCoVbn9r3CgD7wwh25Y+G4ZGN+KhR3o5jUIbl1oWM=;
	h=To:Subject:From:Date:From;
	b=DaIRliO1eYKlR+RTXB9/uZ0RklIpJlJbR9pquvA2jaNLZ5mdeE8WXCnVEQ4lBcISl
	 NchtwzsQHHpP37lFzHQSz18zhMghirlRg+WoJ6ZPK/FBTxQEpuAGjBaI39HgHYHEK4
	 qd9WItTPB4uIpxdLDkZoJYp2HaXSQTIXB8irQKYLxytyzl1FI3I+TbyGPoYUEO+uIr
	 joeBZ4699wxO+RQzu2vVspiDmV8bBtsmZquAqcKC6Z5b//5CkEJOqLJ+lsI4JFIS/1
	 UEeTCzTENiL2nszOJNMaxOFAW+qzCJ4Kt93D/AEIQxng/YH9I5ycqm3B03ut1nFwvz
	 2V1rzOdMajlEQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9267DEEC28E
	for <ddprobe@lists.linux.dev>; Mon, 23 Feb 2026 21:54:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177188369359.7484.13134961868511598822.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 30a45f62d1c8b11789f101a4f2fcf4fc1b38e0f7c00167ea46de9d5b5ad20e46
Date: Mon, 23 Feb 2026 21:54:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771883693
