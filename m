Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1BBBC211C
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 02:55:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1728874554; cv=none; b=SPckZM29C4JBUWYK+Ldxz20J3lNoDgLQ/NMmo5hOZd+WFbT0M8/wzs3lND4YHkXK44+XKQGaKP9n09qMvYSouRKz9KSSsIk1pQzZrNDvBSJWqWz+C/O5Bd9eATn7V7S2pe7iPXHaAZmwwM8W2LeW0RbGoUR/77hHoiqqjRTSpzs=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1728874554; c=relaxed/simple;
	bh=maPWv6/NX7gtjHnbE2DtEFwNOaKSxIwDnMH+yNCKfq0=;
	h=To:Subject:From:Message-Id:Date; b=B+v5LNmOmh3OX5RKFaruUUe/fd0zfsUEtO5SwhIHCNBcS5nSfhw4NWdDC2NDeUjk5YhZsd/DG15Cx4yNqv4vXeO9M5oo1X39A/G7mCVuORkRyqB9qoCNA2OmJG/RCqlagzqMnPNl/bxVNrlAr27vnZax9YnlzXG5LOG6WR3GOpQ=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=FrNgKDrq; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="FrNgKDrq"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B407AC4CEC5
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 02:55:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1728874553;
	bh=maPWv6/NX7gtjHnbE2DtEFwNOaKSxIwDnMH+yNCKfq0=;
	h=To:Subject:From:Date:From;
	b=FrNgKDrq5eN9+318/8Ajw3HHHdnDE1+UHSgjt6XbUINOMv2VHLHcRX+KX6+QmIMJv
	 TOW4jOUF/hqSaa/uDWO3KIzOjrGtQ8QyO498nDQp/nl9OP9TPrQllUazGRh+BHq/az
	 LV76htSbfHcMf+auV8cvieeasA762lb+GMaLWMgugWMCOX5Wb12Eujwpa7KuQLsHsP
	 MmgJGc2SQU32TJLdTCGSqh+bImdd9H71sItNwCzuECAPbUUuEHRgEGjMo4sfqT9gk0
	 kqxZ80BeRXi4ROBr1/dizEy5GuzWRznEHomSU29Th4EdArDRbGZps01opJNtZO+lEL
	 3RmSn5To5DCyw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id 9BBFECF259D
	for <ddprobe@lists.linux.dev>; Mon, 14 Oct 2024 02:55:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <172887455359.8270.4974964927203149281.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: ff0217dc2789316c3037d399c04bf2a3ee0b9546896ebc5a7c99b280b057d3f8
Date: Mon, 14 Oct 2024 02:55:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1728874553
