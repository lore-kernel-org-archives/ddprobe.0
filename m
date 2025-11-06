Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 0E93F212556
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:09:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1762459794; cv=none; b=AEChL5ZdoI/O0LlTVy5tpuFlS98TdINRzgOdIRVhCpzxFnIptkFOeVBaQqBI7HmoUf7fM41ve+7MPUuWCzrm/kz7RNnm0YFTSp3soCuXawloAsVIjqobEG2He5U9Wl7SqMtLnR2NF5AlBaYK2gVphMe3glxZ9k4dY7MHhVaz6Rc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1762459794; c=relaxed/simple;
	bh=XFyCxid8rmJrB1b2yU1GJPuuOvEKcB20sW4J0TyItbs=;
	h=To:Subject:From:Message-Id:Date; b=cTq125li3W1w1/bJHQ0p1a5txoKAjoiAc1GfvpKrs75ete0a8XSlkn8YRMG2R1FdMFjb5hqtUNlgo3krAfTiB57urIgGTEbEETkLLXyQWaV3ddtSF9q4ophQRSMsl8AXyiCGkAk5Q5j2DyrHEmBS0ylLUJtGtZsTPFFxUMUeymA=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=kaTPasRY; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="kaTPasRY"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A3777C116B1
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:09:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1762459793;
	bh=XFyCxid8rmJrB1b2yU1GJPuuOvEKcB20sW4J0TyItbs=;
	h=To:Subject:From:Date:From;
	b=kaTPasRYfA0fLdVlGCYOGBSaqkuiSZP79oxfVDxa96wKqLB4ZkLMmfVNWL/YKQOg6
	 ZaQ+ups97BUNSpcbdhZ40/wrqnOLcyTpofGz03GTpq2UZqprt/s6TPq3+OO+0ThZZR
	 FmvEXYGc7CDjpNs6smIHjsPx9r+ep0XX5Ee2VlG8kn7QITtl9tzosrgjV7H6xLMABx
	 CQf41Qspd77EUTH71bOPKY361wJxprZtFSmsTv+N+nYUSmvFxNf6fhwqbm7eUdtoZt
	 /ZhqEmkjS+JysTreOxaLbAjS3GMemoU7MhbaspuUjaTLhjftvTXP5YXR2j5AFxkCK1
	 UR4ARAagIWZhg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 92611CCFA05
	for <ddprobe@lists.linux.dev>; Thu,  6 Nov 2025 20:09:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <176245979359.17449.18332350506153185141.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 0ebd5e00939b1f0671da217d34ef27fa873215b88505fcfce7a37ec47f18811d
Date: Thu, 06 Nov 2025 20:09:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1762459793
