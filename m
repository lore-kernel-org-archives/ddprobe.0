Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id D3F8636AB52
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:24:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771334693; cv=none; b=rxzhx+830xvocKne+6BDZfxKGpsX918AsjcG2kNZvWdJRgXulPuTR15QT3rrceCRQF+jML0qz/Emer51c7xTQXOVGOWIzJE+QFH+xq4N6Qcw03ORWOozH2JhzzkanYHbn/xnZfh41V53z9rauvVVMbWu2XAgt/BcRPUoVIRA3gs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771334693; c=relaxed/simple;
	bh=2TJdD0rzudYmcvJMZ/YPZzFIVC+VgWs5lI0tmiRdWu8=;
	h=To:Subject:From:Message-Id:Date; b=BpZylGGLM1YdJBxR9UjPuOJX8iFmruUWlbBY/d49DCHZge/bRnA7nIs9Lcb8Y2BOb7Z/XGwdY5kEsZtIIT04EkiMkLvfOpT47zeSTVGtyHYR+23pD/5rO3/UvtgYTwtRqNEK+5mlh9fy66af7eZP0JLRe+HUOLwo6qPiH6AksVk=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=YgoK1guz; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="YgoK1guz"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B791CC4CEF7
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:24:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771334693;
	bh=2TJdD0rzudYmcvJMZ/YPZzFIVC+VgWs5lI0tmiRdWu8=;
	h=To:Subject:From:Date:From;
	b=YgoK1guzJeCpdyw457iO6XTq0P9lWUrYzws1hHCLEdlIdk6Ed2H2IPkLhPuqN3+p/
	 Y5vfwyhR+hF4q+2Puo2vhvgpHGEIDeWmjOyacgv1El/lLts7Djd3bp8N/wBa5GQeBp
	 0KHOS8xcdXfyvxFcuy958efSUEYYv5YL/6tVU8WTwRWk3q1BShQW1UyezCF15XgRsc
	 +9450CWZuNpEKcefriZSW3iX7diJH/B9LamAmJviV3F/Hl2B55Bdp5X5Jc1nKqyblo
	 hPCiX+w7mZ+zZX31sm8PcBs4/y6h5UrM3zszHZjzv7omqu2VdKdUjYr0Xah5za9nUn
	 IFHLhMtFktOjQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A3712EF5872
	for <ddprobe@lists.linux.dev>; Tue, 17 Feb 2026 13:24:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177133469365.26890.5932999924044740915.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 86240bb17419654cf8c47bd865b3fdd12c6f6f95467b8fa4013d55a9a78a081c
Date: Tue, 17 Feb 2026 13:24:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771334693
