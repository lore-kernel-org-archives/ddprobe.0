Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1EAF71F936
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1759366794; cv=none; b=h9HEGSNq6VbuA3/9tArZ2WLCkBJ9xbLueEP2bdw16Xi6OaR6OPzeQzUmJhB0ca71eqHOIlX3w6f/EjotGUEKpR90QLOv68qIKfxpX4NFIYpLrHogS0mpGDDsYB6AAdbmcaEdj3tHfu9I6Py1pZ4duz+OWmWrfLR6GaxfH+fkCyc=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1759366794; c=relaxed/simple;
	bh=wbneIgy0R2bMh/d9fVmzkKOJSyNaRg2aTLX3GgikoB0=;
	h=To:Subject:From:Message-Id:Date; b=lGzVXuidxe/SSWQ3MjuEaGlArzzsAXeHsbbkjiw9R6VhdwXbWGt9k9okW16o01EyEyH9L/DwIy3O1mG0O2zR9S1X3ouZMYx/RgYMQe/q951qJoSSN4blRczyBX+9ZoF2SqKDryoFenbXXZk0KDtL/siPfv+CXBveqbKYJNWh6fU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=lbYJvgN8; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="lbYJvgN8"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A226CC4CEF1
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1759366793;
	bh=wbneIgy0R2bMh/d9fVmzkKOJSyNaRg2aTLX3GgikoB0=;
	h=To:Subject:From:Date:From;
	b=lbYJvgN8Yz4nR+EsrJh+/Hw6WyBfVytjolt2my+Jxgj0CcKJagfBoRKtQ7TE4FeI0
	 1ajsL+zsbj4omRar/khkaV4rAkFueHwrPVXibnxKtTvFzfS5I7at9hHx9UdfBXjs34
	 NNSOEqWLroofIThphygaFtHCWtcNpWXoeNY9iCu+Qf27Mx+Gv0nqYOZWU0QcG1CBwa
	 EGMW3vgCzgY+R71XOLF3gM69Gy79hppodkGKI1rHHKt9aW3LuuwG+OaPLwjx9hgZYv
	 sJi2Wu5FlUVtHTMSIkuvMm2SqhGx/VDMSeHq45VEaMON/rmlLwKdPCCStxs5jWsjvm
	 oIeu96SWVa8dg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 91190CCA470
	for <ddprobe@lists.linux.dev>; Thu,  2 Oct 2025 00:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175936679357.21114.8347615004679013773.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3ff9e672e0bfa03b4b8d41dfbd251e4a1a4c19a7aa378d0ac954750a6355180c
Date: Thu, 02 Oct 2025 00:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1759366793
