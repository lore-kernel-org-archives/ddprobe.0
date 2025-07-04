Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1DAD649659
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:49:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1751593794; cv=none; b=jBwTa3uCGXX/bF5Y8+SumGjEz5bkOUtLYQE74LQfOisoYFGa8rwmRP0GODOM3TMg6aZyT05odjivNmPPR6RwTQtbSgchZU4k0/9S7Jhn7IbsZAZ/HCnwsOt0wmKuS/N0kJMUr0N8j4Sq22uiKJ0qJKThqM7wX/rzkSwVpkWaeQc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1751593794; c=relaxed/simple;
	bh=YCGfq0mHjQsjgXrwiTDC9LvcYO4G0XgB3tPYPQbiJnI=;
	h=To:Subject:From:Message-Id:Date; b=RRXI+vmCTL02pc3uynLFHdwhqdFScdLdDiw8Py+TC+liBPqFagT4IkexJBzAmemZlQwkPiP5x91/gbyVjH/sLDektxEBuzvHCulnxCoOCWfRwFocr7wFHzhNkAzB8ABGhPgUtBNgjEaMteqGGy0dMdBIORwnxivYoQceC5ddAis=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=eMSZzeZx; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="eMSZzeZx"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A4BC3C4CEE3
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:49:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1751593793;
	bh=YCGfq0mHjQsjgXrwiTDC9LvcYO4G0XgB3tPYPQbiJnI=;
	h=To:Subject:From:Date:From;
	b=eMSZzeZxl0Rn5RxOp7TNKp+ziMRaPNI3i8tEqBItRkG+u7B6d/y/el7jfn+em6Bu8
	 A6sJDwhaqtjP/F1WAbzSfQg6Xj5xaq8G3KEsKodNH69idsT8LsoTzjVarU3jaaFtQG
	 4Oc+hXN6Y/QAt2vNcmvaym3vojI2XKUlU4v7pirpC3ele+x4OnagRU5mTzkfYzUJKU
	 5KTw0NxaMKDmbRgaZmV3OuFhO4RFh+oJ1zSaUOBL8qmFkf3IUntkJWYXjhpe7CC6RF
	 ItzhZZj5kb2Yslbeo+JHgzzFc0UWw5PkxEGB77jmWDVSK5Reh5Y8pSvXHXx6UZFPoI
	 Uwrlrm8XAnPZA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 922A8C83030
	for <ddprobe@lists.linux.dev>; Fri,  4 Jul 2025 01:49:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175159379357.24093.14574225970818742059.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 17249b316ad49d94e39820dc782baa674b959bdd01ca78fc0184367c32988c70
Date: Fri, 04 Jul 2025 01:49:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1751593793
