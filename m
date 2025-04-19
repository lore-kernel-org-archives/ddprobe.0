Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 3E84B2A8C1
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:59:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1745067596; cv=none; b=hXAiI8Za4aHuyNr+chE3EHPhZYqwGD9cKTpiHAGQ9fDmE7Av9K6Em4d2vBrA5S80q7Dd9UxNLdFwThV5ifKBJUwt8yGVJnHkMDYR55F8uMiIXJ8HEj0vzBzWMrZFEiAuDUclJ1KxPMdPmu+PHBC4itusnuy+kpK8wCjsX7QrRak=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1745067596; c=relaxed/simple;
	bh=W1IfNOKXN0vFHKSBLAuTuJ6qwKiAQAJKf6It0YMfT1s=;
	h=To:Subject:From:Message-Id:Date; b=UebJKhOhOrnTKfoDVRnjb59ks1PaBbJ7vdRF64RRV4rtGrq2nXjeWz6VmFWYHwY4wJtUWjcr0lPyEeYh2DWQe4cjfQKWWfXC5hGO4w//tfJSG+Z1xohh62RvzZqoWeNBNCY5f26kNmhbOWYm9uqE0A25cmHqWXsSncwUgJ0ykpY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=X7ydMvXo; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="X7ydMvXo"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B0FDEC4CEE7
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:59:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1745067593;
	bh=W1IfNOKXN0vFHKSBLAuTuJ6qwKiAQAJKf6It0YMfT1s=;
	h=To:Subject:From:Date:From;
	b=X7ydMvXo+zQVj1fHWbOWlLRSezuTNuGZA1K6MirviizYEYwqlSzev6OSRy556DfyQ
	 uaAIkR9ip1lS+lRwy6qDQ+ObQlacRuEy3SZILo60D+8UnqXMrmJ/0e052AjC9Uj4OQ
	 1Xr8wHg1u/Dd2bz4Ie2nQuJylC0GnIQuNUyACUayWF67tjLnXaUWY3qxL1fOYjvxEL
	 6Q1Ne40yVRCXaRvskSkfrT3QXMkNGnx33wLe8+kFHQ5pJ3zI3gTXGWAePB25bpVqbu
	 EP0vVSItQ/aeeF5/zA2OJsf68/wfOrgIJdX62xnEJK3c8S4+Scd78ghGBqxMlmxPsF
	 LWi47vCCFsX/g==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9AF82C369BD
	for <ddprobe@lists.linux.dev>; Sat, 19 Apr 2025 12:59:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174506759362.3075.1248395242229963223.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 55d67924ab329965d3919685fcab71b4518421fd6f6bc1ddeb0d8260b4e92e53
Date: Sat, 19 Apr 2025 12:59:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1745067593
