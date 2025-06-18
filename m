Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 64E631F9A8B
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:19:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1750259994; cv=none; b=Q5VeMq1ZOqIcrle3q/I6zN2iYaxABa4qJnB6xayo5qwfOv83I4LWdgxUSboTEYTpVqicUMsjK8Qg263S/Avwg06foUtpOMMC5Cylu/9dPiZ8s/2pTrWEWLKRUj9agEhxDdMCIap9oobLSRQwKbtbUHQoFnKy4foSGUzOEcmyowk=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1750259994; c=relaxed/simple;
	bh=+PFFxQsHvg7ts3M5112qMvI+by2n98Jxz1UdwH5ZpqU=;
	h=To:Subject:From:Message-Id:Date; b=fDXzYIV/7cfLdQfzKJisKZQ4yDcr1Wl/xS7oZnkTVn0i9IGs+VoPEm2Vj6K6aCsvoCwoPbOjyp+dXDiBIuspdJtHIsCVjNHNMXzjriOY4NIk+xNsCO+zJyJI9/I8b9lSvtMUa5JeOUEE9eYHbOyyyupCi4NpysvnbkNEzZih+2k=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=AS5vhP96; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="AS5vhP96"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A7D78C4CEF0
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:19:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1750259993;
	bh=+PFFxQsHvg7ts3M5112qMvI+by2n98Jxz1UdwH5ZpqU=;
	h=To:Subject:From:Date:From;
	b=AS5vhP963U75EzjVmJCT2cdfQHd7f36RZWMYAXsd+mV+eXk2YH+BmhuGoKteL4ShF
	 ZYms3zU5jXhRVs1WS8uuLcDnkMaOdBRheonYg3LvlGhlAcGHESCms4XtEHrVAZzYxJ
	 PS3JBdQbuCcBylZ+uULHP26zFn38SueA0FzjRzbfY+jykLnG/zAPwmG16q0RwsCknQ
	 CIAFJL5nD/GlFIRQmBh3Ox35bSSlJ356xUENEQQHZ0dHjV3Vdf+1znWwM44mva3TpE
	 FyxvIiVqyDOzXFyHnqsdzNShn51tP6BC5BaKwf6LMN5ezle75g9SuP5knaMe62Tnbb
	 ZfKq8+tLwcfpg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 914FDC7115A
	for <ddprobe@lists.linux.dev>; Wed, 18 Jun 2025 15:19:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175025999358.5800.5758594001090683361.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: a61351a3c026f66973cee6a8f2788aae23cc72927b29ba7e25cd504f66974322
Date: Wed, 18 Jun 2025 15:19:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1750259993
