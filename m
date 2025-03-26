Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 32E491EEA30
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1742996394; cv=none; b=um1j15b6DboftCCP/SBGj+2VkVK3/tKLeLVJP/bIXPv0ytwDwGQ/EP+L9oHXdz/1tkoM9oIkz7JDLO+LG1HCY2XR8WbZu8N2DrSq2K2jmv12Xe8YQ7f4rmxLzRNIOFphpuvwOO0wi2X7EQE8h1Gv5ym+irIZbhMveRihmoD1BCE=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1742996394; c=relaxed/simple;
	bh=j4Q/XpUdYhYRpYlrT8ffMfKJguwS0+9mIT576O5Arb8=;
	h=To:Subject:From:Message-Id:Date; b=iEAYuRQcvBcFhCp7URkXpYMgAgt/D70mK8YFABQl2eOREqQsHEF+H657cRXLOPa037+gO/PhbIiRGh69JoBd3X9kRadw2G3tS3xi3Q2sUk+q5wI9G0xZH5TdSKPGKpzTv5xr1bZep0bFrtggZO1VkLoZQ0otmpaK4Qp0Qzxm5X4=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=Y2ZKrtIi; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="Y2ZKrtIi"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A6055C4CEE2
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1742996393;
	bh=j4Q/XpUdYhYRpYlrT8ffMfKJguwS0+9mIT576O5Arb8=;
	h=To:Subject:From:Date:From;
	b=Y2ZKrtIiV3gMjkvLGfvU6ZF7eXK5X6oVLAX+4p69kOr/0aY6qDrWiLXzQjMGxQRT+
	 pszxl48YED9RyFUbe6HY/HR32j+JVBJgvBP2G2ItTvaYxAWT657GXzP/gTeygQc9MB
	 xNbCu7AcGw2oaTnFS8K0Dg1UhKUTVI1kqdJJ8p+jffvb26TC3UDYBfaVOlNl2R7CE+
	 mvURmrmcyHxvt7IslVepyw4zWz7llckJmcx4Zd6lmZajthP5o7hYUNWYWQ2BLi76e+
	 TXoYR9NQc9zzfXVshSyRH5VnCBy861P9N1/Ly29k4wExv7oOv9FAlNBXarUxolJ0H+
	 k7+rKLh3SCOIA==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 96B2EC36008
	for <ddprobe@lists.linux.dev>; Wed, 26 Mar 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <174299639360.17970.788725564296650613.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 4330273710067731f29f82f531bc29aee2c421ce328df0ab1413173455819104
Date: Wed, 26 Mar 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1742996393
