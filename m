Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3779F1DEFD4
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 11:35:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1737372954; cv=none; b=CCGZ4SSSWRfgJMs48AisJ2rF2UPeRMGxnmeN+JBW6Gk01X/WkFbBIl/9NoQLcRlRJDv8CormFFhIsA0w/1m2AE4imgAnMOkuV87vOP9iISYueTuX8ZQSF95CErqt38XTSXWg8MyU7/Bj4rEBSx8nS61CZnii0xNMzT6P4iLb3J8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1737372954; c=relaxed/simple;
	bh=dBe0f/kkDF6yrWe/+xEs+9ad/6lCbywOhfxlaHsZ0Q0=;
	h=To:Subject:From:Message-Id:Date; b=pKt/AD0/XL44TzUgjxXZ2D6LTBdKRcpoz/AP3JbBjZ+MEdApFmAagksY16oGjJKIkeZqEjUaTviCS69GYPlQ3x+hOxOpUGWJrOfPvIMSnl3WvsMKGn2C/6P16v32oeght51zT/1q8eQ1kZxZEF/y7xwq+oIWUkQDyzzFaOCdutI=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Ob8QMngU; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Ob8QMngU"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A78DDC4CEDD
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 11:35:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1737372953;
	bh=dBe0f/kkDF6yrWe/+xEs+9ad/6lCbywOhfxlaHsZ0Q0=;
	h=To:Subject:From:Date:From;
	b=Ob8QMngUh4u6advMeTOcP47rbS8swo9TsFToGwBytpbaK63+UWjp5bxgx0fhbVIGm
	 rgzeL5SR7SnCujeW2bE6fL2NYhDXOQYgAtjzUpy7Xgeoow7MQRY+9JiR6be7qPRQtZ
	 /R5qFZ4cgHSPxDuYYXAnIMtlwXvD5nFm75xOiiUQTnQ++3V0BmYY1Oz9sG9mr3vGae
	 YMKF/SwWCLgsfIQzWBucD8bSJiJr1MeGWrLpRHCS0tgOEjTIgNHAqeZT5+17XFXdkt
	 ZDjKoQcspcuy9xjzQPlRomBsh41MXTti2FHjmeLcQlhDLJ8Y0MMfLwWIFstIo9jQVw
	 DqdQpF1dGqutw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92CE9C02181
	for <ddprobe@lists.linux.dev>; Mon, 20 Jan 2025 11:35:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <173737295359.31817.1449982214721628227.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ed9418fb64461c478f4940a9b5823b4e0b798f0c4da99cf0445bf5b6e736a5e1
Date: Mon, 20 Jan 2025 11:35:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1737372953
