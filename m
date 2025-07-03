Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3A11828E616
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751519994; cv=none; b=lInrJI9i8To1qosFP6ygLK8qFh8xpzpo7TGEZq0kgv17u/mbM9pN4Y1cAtJhU2/58yUNPA0jjshiWdu/xUYUGp5k1Vzt6L+iv6gZU274QMUnlf4d5JR2BZP/DC1FLXnixE1A5HF/TA9Q2FFCjWP8u0LRvhIdvSEwU4dp+TBcvrY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751519994; c=relaxed/simple;
	bh=K0QV35DlkYdF58SFm/EW6kgzOue5l1++RFt/NvzJHcU=;
	h=To:Subject:From:Message-Id:Date; b=no0C/OlTS/4oVSTFx/3oyN+T7C1rmpldzORXAIGfEN5cOp+9e41fy4VDQCd+9WVKOj+bQswfs14WxdPhMuO0asd9lo+lNfOzsY5uYNQoxj3J5GPS2LQ6ObBZEryoOwBsUIl/blSqn4BKFwGL98BMVtni55zudgQTfG7pjDQoHSA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=MXqPfq9z; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="MXqPfq9z"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0095C4CEE3
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751519993;
	bh=K0QV35DlkYdF58SFm/EW6kgzOue5l1++RFt/NvzJHcU=;
	h=To:Subject:From:Date:From;
	b=MXqPfq9zRexZvypuqR5FmFIQocQy3ktDqXzWrrIv0cdNEMpnmDS5/JsQanx9AiH8p
	 GagFeXXuaX/+lfw1nEOqUJGNTkwuq6/6TztsbGcvb9h/tR971HzZ1GBTWb2a98I+1g
	 pNufjLmmiSLpsEPnA+C7IblnY+ktg9A7QbnQQFuGHYffPqlXiAh39fTY+0f9pxu0+W
	 7288+XYsxLqHYDDBCrdJ4B1HWvz47ktoE5WsyN2Yne1QeGBsmZrt9i9AmpCgXYzIQZ
	 fCo2N6BwWuHwUeWBHzEmX7v6ouJKbmle77/6CQsI50pZKjXMh1T+bKCSaHX84FAtkA
	 Yf8+tmhIiJmug==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 99383C77B7C
	for <ddprobe@lists.linux.dev>; Thu,  3 Jul 2025 05:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175151999361.32220.1105873433724959712.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 056c547a4813252927f3cc8a5908b38d5e5e794bf7c0e651a9b3be5968c315d3
Date: Thu, 03 Jul 2025 05:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751519993
