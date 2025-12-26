Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 22C572DF68
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:03:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1766772234; cv=none; b=pTRXB2BsoD6Jsajl+Qv2lw4fEz9X5+A6flBaH5ZiZy/QOL7FOidiHrkJeSTolm/OtPsXXrryUkiJcQgIIOtWFTQOzKH2TWvyetVQKYcKnvKqC06dUGXS4sNKzNWzjSyi2XfJYeNijcOFEsWbAY93bYZod4k4gzJ6olJpPZ5q4ug=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1766772234; c=relaxed/simple;
	bh=xICBF4IAbNOUd9n7X6l9d5fu0VEs8BCdA5EwYnigKk0=;
	h=To:Subject:From:Message-Id:Date; b=P9KGaHrUtWoOMi/iv8sYSB4mv+XWN+ukkl6i6x+q39W8X9ZP4ZahSc5jjDdTjs2rQtaUmrhWERLZsxiZTtD/Owb30eF76A+MYnWhC2bYPdKlH37B6fbRltDr5kkhkPkRFW8cDY8GyFDHmc9VmS54USMXq0N2DGX/sDcFjGdtkH0=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=UAEqsOK0; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="UAEqsOK0"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B588DC4CEF7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:03:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1766772233;
	bh=xICBF4IAbNOUd9n7X6l9d5fu0VEs8BCdA5EwYnigKk0=;
	h=To:Subject:From:Date:From;
	b=UAEqsOK0OSGQEm8a2tKpG7JslINgfwwg3Us0O8Rw7xxZD1J5FhxaJOfbZr9GoBZxZ
	 yRrPi3VZPETs7DnnbTqd4+rMyYzs6W8u5ZxsQR9/Qz/5xAgPS+MgZ6sPHxzHpl5kOh
	 goOCQz1COYLvMffh3iNO+a9k5Podrr7hkCme4+ar6Cdu0ZzCy+oTiskXbFQLhXgBZM
	 zjcVtT5cb/FVrttK31KY85AuAgCQjaFnG7Yask37Pdhgz3rOiNSu5owS7yBLdhjD5C
	 Lt2nd+1k7mOpJcF55nUmEeDsZ/HADgoNSwDbTkGDXeOw6vRuqSXN81Q2q7mIRbn+9K
	 9gdDawCFcRs8A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A11B5E8FDA7
	for <ddprobe@lists.linux.dev>; Fri, 26 Dec 2025 18:03:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176677223362.13143.16411946756650073332.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: b8a99712c559e10417820703ffd3b2a5b2055ca9dcbb4e7a99a7541d7d26be3f
Date: Fri, 26 Dec 2025 18:03:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1766772233
