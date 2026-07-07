Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 425CB43B6F8
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:08:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1783444114; cv=none; b=UbW5sBwDb2Zp/CqiqkGxP3pXrjBP+MYb4UwYNwKzWh+cXsr085AaT9sk52WAY2vfZVDn00hZgjYUqfuiGi6nxWkkEo1KjEf1bvc4lNc2m+dZdTGIFrPeo+7GbDWk8cpXOTugoy9QLzzSELLJcPk+QAjAwCj2fEf/op/WToJkaAA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1783444114; c=relaxed/simple;
	bh=CNkGgcgki+HcDHlzhTmt0C6Qb1qJOXsN1KGqp1fE5AM=;
	h=To:Subject:From:Message-Id:Date; b=H8HhZDk+8Bsv9vXqO+cY4CNdF0ivvLWnmIyOJ+vEbb3rYmeHC87KRLy18xINJSOsU1AlotnV/NustudfAA78KWAK7JrRudIWdMDRuSEndtJSy1VaLOtrFhma8HsI0ya9/9CpeTtIqtViq3jrVGIeGialGrEsYdHkdPJctFCFI1o=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=OCgSpRYT; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="OCgSpRYT"
Received: by smtp.kernel.org (Postfix) with ESMTPS id CC640C2BCB9
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:08:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1783444113;
	bh=CNkGgcgki+HcDHlzhTmt0C6Qb1qJOXsN1KGqp1fE5AM=;
	h=To:Subject:From:Date:From;
	b=OCgSpRYT1HdbgAS4PaUnzCEXNGaSWOqNwnIF8AR2g4Cu8R4trxYZqvKz9VyGChpQr
	 ecwW5EL/mxRQJWeSpT2BwDBKGLYya/HkmwggeVCUBf3Ea5k8xui7zL402H3PdUjmqG
	 W36Z3uBlsQhYS6QQXjcKudOntOqXpdsTG5ANXhmEB4tfwxBB/BjCTqBbdFsH03hMBj
	 OmTeIWqWLzFa+BzorvZCCf662UwKHrzZulkaksjYvhGJ92wIpB9yFOAnJPAeSqey+Q
	 k8kehMWIInxEXOQn3H2tN/3LsQ/lEJ5CUnyw0tKxKrlZFYo1c7y0jbyfiA6tZ/eA/Y
	 jj0X6N6h1CFDw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id AC2FAC43458
	for <ddprobe@lists.linux.dev>; Tue,  7 Jul 2026 17:08:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178344411368.19153.514772261416954308.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 45a49d8cabbb5e0300eecb91465bbe442bca9428f83010ef722026b9c66d1aa5
Date: Tue, 07 Jul 2026 17:08:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1783444113
