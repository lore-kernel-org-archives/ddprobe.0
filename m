Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0DCB21E491B
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1761585594; cv=none; b=BDczWV6/ejjBLUAM4J9u61I+zE4gBIW/FQi6wh56Vh8C2cSpH19XT0qgCXZvX6LEgiZbrfFAUFhbeUyquJ3H6+0R1K+NhgS0rCbKSugi9xkIdHUEhzeshquk0iod6YWQHafarzz0B34IekfPhtvqbe+ptFy3/Xj9LY62A/k5hfA=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1761585594; c=relaxed/simple;
	bh=ckBKF97OCOKrZCP6p8JeSABYIHFtKO9t23BRTMdOYVQ=;
	h=To:Subject:From:Message-Id:Date; b=T3HMJyzs22aTgINWjN25g04oWAxOAaOHUOd9oST544h/oekhlW8kPHg98EFU2NNMDLsFDP6oIkjOIMSb6GsOVLzdxXnDzCpmGyVR+vhb61JSc1yiym5/2HxV7ymkWYVhYihfqT4e9mmBEdFMQpFCPdYW/vizB9HRyjIiMCpsi8g=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QxN18OiI; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QxN18OiI"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6EC8C4CEF1
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1761585593;
	bh=ckBKF97OCOKrZCP6p8JeSABYIHFtKO9t23BRTMdOYVQ=;
	h=To:Subject:From:Date:From;
	b=QxN18OiISjVpCz6XYrhG9uek7RFhn4AVs6nmcd6WbddUUp1BCEYXvn7uzWiVpFaOQ
	 y3sGtJiLExP1z8XcHUJqazbrkPczNERUPP9KZjFrYwl01+HskhCzKqRtd+vAmM1g2V
	 TNXZ6twdoAS3qhDx7aEFuPA4HTcc1q+Pp+hsILDzYWKgFe1+R7/Ojg3ulIUo/ZcUAf
	 y32iTW4tyJPylE0gxXAxja1Vpkq1jhoMka9yviu1uLvVWzvqF3gfk6OaD4sXablVIK
	 Tksd0aQVIL6RBr/zxR6zvB4Xhw/PmgXqnrm/Yl5CT5Ahj+L06ystz/NA13u4qWgtr+
	 +f/uy0kw2YQJQ==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 919FCCCF9E0
	for <ddprobe@lists.linux.dev>; Mon, 27 Oct 2025 17:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176158559358.13507.13423771918490594600.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 25cf395ce6563aa3894b2c59f1a09e3f6e6dbb3f833d4c610061fd15550214fb
Date: Mon, 27 Oct 2025 17:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1761585593
