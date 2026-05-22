Received: from smtp.kernel.org (aws-us-west-2-korg-mail-1.web.codeaurora.org [10.30.226.201])
	(using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
	(No client certificate requested)
	by smtp.subspace.kernel.org (Postfix) with ESMTPS id 29140399D08
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:12:33 +0000 (UTC)
Authentication-Results: smtp.subspace.kernel.org; arc=none smtp.client-ip=10.30.226.201
ARC-Seal:i=1; a=rsa-sha256; d=subspace.kernel.org; s=arc-20240116;
	t=1779455554; cv=none; b=U9hd8F6NO5bkf/+r7yzhzrdkTEPabhuyj9Cnf8wvHMXvntFnUm4rHD5OlZMZNRqhe08siT00b1LRT1p2Zj2ok6sbMAfsPPwcbGYWgG0YTiPmJOE8bJM0Vxpb3ikdvSwkkmJdXMnD3iiHHdMBKI6cSxZAlBoOQ4n+mKGOrbZL7NY=
ARC-Message-Signature:i=1; a=rsa-sha256; d=subspace.kernel.org;
	s=arc-20240116; t=1779455554; c=relaxed/simple;
	bh=Tc8O+GQKbNlVrHKxeMY9YqZ89cotRxJicLQtQ9kJuWE=;
	h=To:Subject:From:Message-Id:Date; b=VXYFNt5g/It+eeR98qLw2vAOo1vIrqWdnq1se3G6MyyjiXkNTuJHgOz7t0SQIaa94kBF5+MFyAsCKdkZpv4ynpje8iPX/+O3PXtTCOU8caHlYhVb/4lC7lWKr81ugATADCwm2+pknQ0Fi2KFD6q5gZbAXbgc5kOS2C1QBQGAW60=
ARC-Authentication-Results:i=1; smtp.subspace.kernel.org; dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b=QBEE2FJf; arc=none smtp.client-ip=10.30.226.201
Authentication-Results: smtp.subspace.kernel.org;
	dkim=pass (2048-bit key) header.d=kernel.org header.i=@kernel.org header.b="QBEE2FJf"
Received: by smtp.kernel.org (Postfix) with ESMTPS id C2984C2BCB3
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:12:33 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
	s=k20201202; t=1779455553;
	bh=Tc8O+GQKbNlVrHKxeMY9YqZ89cotRxJicLQtQ9kJuWE=;
	h=To:Subject:From:Date:From;
	b=QBEE2FJfcqVgEAXQnVboOe+NX6D/1oJ0KsbKqg/gCCq3cCbvzSuUgJ7WDoPrwiVQk
	 RR5dYrzsnDB22WmMwrLUOb92iLYoHbSBc6+qLTlLoR2fsh5zzMa6RTj+xvxOtzDIxs
	 XoVBYn/syMtWthDDAGISiQ6LYEYTOAMaBbEeh6y/mf91nak2tExegETIQnCss+e5EQ
	 9vrvOBVGO3KyHJUXKHWULwYxrIZJHPQzx7fSwfpUaK6Th8s5uStFmDbZt+QvIINNA5
	 W9d0Prw/3IGqCP27+jZqi5xbTzNSh/EuROlO+B9/h5RTCrrVXaRcYckH5CYmj87qZ0
	 b2XQ/9vbFGM+A==
Received: from aws-us-west-2-korg-lkml-1.web.codeaurora.org (localhost.localdomain [127.0.0.1])
	by smtp.lore.kernel.org (Postfix) with ESMTP id A7EA3CD5BB1
	for <ddprobe@lists.linux.dev>; Fri, 22 May 2026 13:12:33 +0000 (UTC)
To: ddprobe@lists.linux.dev
Subject: RTT-PROBE: lore-subspace-rtt
From: ddprobe@kernel.org
Message-Id: <177945555368.32637.14241508454973076265.rtt-probe@aws-us-west-2-korg-lkml-1.web.codeaurora.org>
X-Rtt-Probe-Hmac: 3d684b3eca55bdccb6fb57487f9c210afeeff129d464dcbf1d075273cff42151
Date: Fri, 22 May 2026 13:12:33 +0000
Precedence: bulk
X-Mailing-List: ddprobe@lists.linux.dev
List-Id: <ddprobe.lists.linux.dev>
List-Subscribe: <mailto:ddprobe+subscribe@lists.linux.dev>
List-Unsubscribe: <mailto:ddprobe+unsubscribe@lists.linux.dev>

rtt-probe:lore-subspace-rtt:1779455553
