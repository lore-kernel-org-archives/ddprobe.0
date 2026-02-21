Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 1CF1A2C1589
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:14:53 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1771668894; cv=none; b=tx8JQZZd18lH775N0XYK2ab5sWn3tlo4o/0TKDgtDMLIZIYyTyAhsfWsk2Ew8BlNSOBaVm6JrXfABwKY/e/AYPNdpDFNFBswrpVEavCoDPcY/AUtCPwjRAO6RC6Zh8aq3y+YIZ3W/Qp2SVGTJaW1DdmBeX/M3ShXAUGuv77/5bU=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1771668894; c=relaxed/simple;
	bh=6xVO04XI6GUm0Umxw+5K3m27rrDm5C4vtSecj9YiZ1U=;
	h=To:Subject:From:Message-Id:Date; b=AC8kQvQTBKKG2wM2AkGmXYVoP1gMpFHcJ6TOW0Ug6eV+RnPU8xTx2TQTsDsqkb2+llPo3UHLYr4RYTCGtCUxzndZ4ZEylW0nIDwM/Gi43vQfqcgjIx+H2Y3iO91vo6jsDANd5nIuvQZpYvTsdV68hNpWQlc2O47tfLeG6Jt1XtY=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=fZJvjRGh; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="fZJvjRGh"
Received: by smtp.kernel.org (Postfix) with ESMTPS id B728EC4CEF7
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:14:53 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1771668893;
	bh=6xVO04XI6GUm0Umxw+5K3m27rrDm5C4vtSecj9YiZ1U=;
	h=To:Subject:From:Date:From;
	b=fZJvjRGhguOWxWVB7BkCwOseqEa2FuTZflEnLRD6LA3R7lvNuik+K9hYBRAK5TiIG
	 VdOqO89X+W7/RKIK3JCe7DUR/o7BYmqaTWaRxqO1CPLcHK0dOl1I5S76Kuwe9MpNu6
	 Ew2uZwxPtyUYIQNnE1C9/i9NHUUFE71V3smFeSjFHUFhPfcdEzl3S8/wy10Nk1rfMI
	 5xiteKy9Uf9ZWSFgi7fKGkb912YzvnXbKa69Nl0HofY7M+9E8AWH+IGYEZgX0EXKWS
	 xsQ5+8jNIYz4JD2xEtPWu/SqnyibY881OUzQn65ydw5AcbZ9pyjKN42mu4A7Tn4Vu6
	 iEkqj3RmfDMuw==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A394CC61DE1
	for <ddprobe@lists.linux.dev>; Sat, 21 Feb 2026 10:14:53 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177166889360.24733.9495851328633985127.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 2a4a1507d98aa117faae221e9af2f6e4fdb3cf7862bec1b2e973f43145b71d59
Date: Sat, 21 Feb 2026 10:14:53 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1771668893
