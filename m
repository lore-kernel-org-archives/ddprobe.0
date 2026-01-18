Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id F08C322068A
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:43:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1768725834; cv=none; b=iDDSwHJctOHks4aZeQX2AafljBKb5it99yxf4737pEti84j8TE0kY6JY9/buUfq29DHC95ivQYXczmPvZg2jtmx3ngc2LMJjgQCQ4sUsRYWfxNt8vE2oBso2VOwTR8U4sPo9LSawjB1w7+QV9zK4/zfheY3YDdKTvcU2iThPUGg=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1768725834; c=relaxed/simple;
	bh=NvVadF5PKqJsIHsIeTs+Z8Felj8oKhIDTx1Jxh49rGo=;
	h=To:Subject:From:Message-Id:Date; b=iXl2hrFBaYAoVLocxu6Eej6h6BC/VFeFbSGm6+JqACWs0u1//3Xu5zueWfy3bQRwGapVZVEQ957RGAVwoQYtyHYK0y1V8m+3oYWy8pWNaC2WorB0yzyMW0j+ytTc1WLnblEhFsEN7pi7VEL+2lg7lmdmATDqX5KodEWlun9MjBU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=LN6UscU7; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="LN6UscU7"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A2913C116D0
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:43:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1768725833;
	bh=NvVadF5PKqJsIHsIeTs+Z8Felj8oKhIDTx1Jxh49rGo=;
	h=To:Subject:From:Date:From;
	b=LN6UscU7h1awDK+5t26n3as8Xl3uX3kZcF/q4crZreYrcbFASegEmy+3Ko53kNgfe
	 UlkUd9kXwTcxIhpaxLWias/9sglMnBGIMLThaJ7CnXyde3nq/0uw+s4N2v4dJrO+Va
	 lGIH8A31k7sf+z6D8qL4OIwxy2v8R96N4n3Rhl9B5TF5TkYZC264Ku59GNzGXLcMYa
	 FUWnhD8qZMjqvMe4Nu8Mf65/oUDiYepl6wYFmbEx/kkmuDbuefY+NKbvYzknH86SO+
	 /dXjOILFKCTXsXl5F8cIh6zJVsdHRjaI6O+ko+dfOFPzHPj17myc1Qqv9cArCtuLqV
	 nU2ypKoMwhy+Q==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92456D4A5F4
	for <ddprobe@lists.linux.dev>; Sun, 18 Jan 2026 08:43:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176872583357.3644.7500774231422135351.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 665fa7b99e7cc1c92c61202f0c62591b3b822c18b82ddc93333cbdb38a3b6c82
Date: Sun, 18 Jan 2026 08:43:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1768725833
