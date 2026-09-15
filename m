Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 42FAB4BD79E
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:50:34 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1789473034; cv=none; b=fPaSImhmxNKq5+S8ePqkxSPIp5wS49VTa/WEFe3L/U6/QkpOnJBogpIyqLIeT7Qsnh/yAOEnG+qbky46E+X1XxSZ5Apv3GDuTmsftLIzmrM8L7l3LCGCCRmN2G6M9zWrrXjnJWCV+Ya7VBo2yGQT5yVC3SFTKQ8BQ7qVHkuCCu8=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1789473034; c=relaxed/simple;
	bh=HAr2uooKp/uRrgsJxEjEMMw0W4xwqtSEPNW2DkcOJfk=;
	h=To:Subject:From:Message-Id:Date; b=OAIDtTPjD9wBii1M0Wu/EbLLWLNDYXRm8ugGwxveDV3PUwIV/9QDfIf+7pvgQUyZrNGBTU6AygZ0MwZFgNBoawy04N/fPUW1LWAnFacW7qzYbC4Ai/YqizCzAeEdyoa5dEO6tcJxUfUxYwx399OBgW1ejnhKaQhy8L8GNJBAISU=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=W9UYWbuu; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="W9UYWbuu"
Received: by smtp.kernel.org (Postfix) with ESMTPS id EC2D7C2BCB9
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:50:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1789473034;
	bh=HAr2uooKp/uRrgsJxEjEMMw0W4xwqtSEPNW2DkcOJfk=;
	h=To:Subject:From:Date:From;
	b=W9UYWbuupOFwgOapiOVBTnPqkzKp4RloRu7NFWSVuKbpmUscxXF8zsEcO3dZcIXWY
	 jnMc2l9g+PVTosHQoAapupegwUwBU4/xAAhl/zOjjlUPxaLZd6IJ0JCqxFaVtXHpoQ
	 vcRRraqaPjssBy3sViK4PJn1swpG0AEsAoHu9L1stan0LlU3id5L1Bn/qzvyFzd5OA
	 jmRwUboWZ31JwNJeEIM+jDIeLFqWY6b3Cdz62pT0Tq89v6iYaAxYpH18+lirk/HsuN
	 L4r+9YsE+GFBn+opAeCg++An/ABxLIT4qdgTWp+kQxQfDHcnDLiPepEYBZ9fmx/JNW
	 Psilm6GDWkbGA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id BC7CFC88E75
	for <ddprobe@lists.linux.dev>; Tue, 15 Sep 2026 11:50:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <178947303375.16054.9942129768320843435.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: edb84e5af5a4c16ebe3fa7779df3f6ada2623433e5b3bde5efe9f0f173471d0e
Date: Tue, 15 Sep 2026 11:50:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1789473033
