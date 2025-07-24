Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 2F7142D8760
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:39:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1753364394; cv=none; b=biPcZ2AOdroe7SeEkapaNURJt/MOGAOVmqkoifXW3WeuS5t2daBqNQO4qJgOvoRFUMXRNWZ3ovFINnJR6J2rQiGEJ46F0Ex6bMBZwpy2RA71KEjWUiy8T5NTeVMJ7JUSVG7bZqu0gazP1yuKLWCbUl0TJRUp9tC4j+Od9oIcSq0=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1753364394; c=relaxed/simple;
	bh=nXtq+6SvK18klXP6lf4vruOn+n5Do065EGcBDbi+KyM=;
	h=To:Subject:From:Message-Id:Date; b=lIhIZetpiTYsmtzQYPxxQi/p8zY4fn3ACBEZ1k4vQpqiXMvtusPmlBLKSsEyXDQ2EHOqRqTyYBSDb1IyAHD6gy+nl0TDUJ4puCgFrm2DXGkZbsJYBlQhobZY/UztrRwklBZnyf2jC5Ogxqq+/o7K9rClnFnzwxenFF2YBf9nqbM=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=ckcOsQIG; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="ckcOsQIG"
Received: by smtp.kernel.org (Postfix) with ESMTPS id A324FC4CEED
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:39:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1753364393;
	bh=nXtq+6SvK18klXP6lf4vruOn+n5Do065EGcBDbi+KyM=;
	h=To:Subject:From:Date:From;
	b=ckcOsQIGAFSqgjZmX7nicqmK+Y0OulfNDQz52x1+ZbFfdfUfePy7kLgJw8P5aNprN
	 yG3b30/KMSy0tOb8KPkmxMonIinEY2bM7RPOCYrWHDZ82vkqM15z0hjQUR16NUah+V
	 A8br7yQayryQDzcC+ZDQ8tZ6XULtJk8OkKIeJ3RgrVfUMBpTRW36NgPlJmXIrk1jpB
	 SX+mN7NNQe+2ea4mUjVopz+XX4BaEOxFJ6pqKRUarBh++2XQ6cftCfwKzRMWUR+cj0
	 znzYrHaAmHtpQAaBvmX5HG8Z2yO9UWbWMhaRfqzmT6OqYMnxm5BTDPSnwGAd60Fhdf
	 YZafeW3Ozxjwg==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 90C09C83F26
	for <ddprobe@lists.linux.dev>; Thu, 24 Jul 2025 13:39:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <175336439358.30127.15821163285792888701.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 672052338b9107bbbdad18c65e3a556885ef7f48190d8169609c16a6c87a761c
Date: Thu, 24 Jul 2025 13:39:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1753364393
