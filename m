Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 235384120B
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 02:25:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1727317554; cv=none; b=Hf02zClRUivMbTEqqOW0klr6wfupW1XPmI2wpXdtir+t/OsmlrlmTeU73u5G7DAFxegXwbelgA52f4GWSGAH9kyVK1ZCuJWmEiwpR8SpWPWmbqwZRM8CXyK/6uXL6H6e7ja1AN0ydAHQ18Ak+fB9xVVe7b0ViWCZ0JeJV8/uTbg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1727317554; c=relaxed/simple;
	bh=oAzJmeiUrFg8yRTFiIJmXKTn2HdAK11BLHrA0vyQk80=;
	h=To:Subject:From:Message-Id:Date; b=K9HHspL70YLj0y4k5KATLKxC1BGoLKDFi+csuU/2kutGKmOD9UOJaOiWJelirKym90UJ1DRnpRsjtbwSrYlWlZVmi7kWA7e4Zcss1o/97G70zDNF24GbroC8rYqMRGtSzPzm24uk5zAhvtahM5fb0AKh6dD/WujqTYdFv5HSi3s=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=maiQ2WfK; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="maiQ2WfK"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A051DC4CEC3
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 02:25:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1727317553;
	bh=oAzJmeiUrFg8yRTFiIJmXKTn2HdAK11BLHrA0vyQk80=;
	h=To:Subject:From:Date:From;
	b=maiQ2WfKEL/0yV9Os/zR/Bcc4/MAR1VNsq8e/AzbdHuo1Xyyh0VwBOPCQiPbf9h4r
	 X8rq/8VGlDzv9SjPvZpNH1QOOpYv6PwX8RMah++NyvLg8ekFs2qmXTbwtSXvm5YP40
	 kOt9Vd3ZBtRMJU7mD4HRLLOKRMmMXg1dRoMdDEmUGuZTKLPBXOG4FBNryH9s/xYc6H
	 Q0hYkFU+PlRBVVTqrnDKOIRWQFwHHHci/WHaJZ0OW812fxJXAujY+CbsojWMsZtXkv
	 BgTXyicU9cuFZhiSv5ltMIVUuoT5EyV0mBwRaTfFVe2v8li35CuV0TeQEu2DO0UhSC
	 SrBR82unNqh/Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 8FA77CCF9EB
	for <ddprobe@lists.linux.dev>; Thu, 26 Sep 2024 02:25:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172731755358.3272.1006037043216435001.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4d9afee54eebe7cb96c7acbd11aa1475f9e3cf00ca0aa5c098a5ace218abd1eb
Date: Thu, 26 Sep 2024 02:25:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1727317553
